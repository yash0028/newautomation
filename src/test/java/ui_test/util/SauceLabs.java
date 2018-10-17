package ui_test.util;

import com.saucelabs.saucerest.SauceREST;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.TimeKeeper;
import util.configuration.IConfigurable;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Package Private Singleton to manage SauceLabs connection and any communication tasks.
 */
class SauceLabs implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(SauceLabs.class);
    private static SauceLabs INSTANCE;

    private String jobId;
    private RemoteWebDriver driver = null;
    private SauceREST sauceREST;
    private DesiredCapabilities capabilities;

    /*
    CONSTRUCTOR
     */

    private SauceLabs() {
        this.capabilities = generateCapabilities();
        init();
    }

    private SauceLabs(String scenarioName) {
        this.capabilities = generateCapabilities(SupportedBrowsers.CHROME, scenarioName);
        init();
    }

    private SauceLabs(SupportedBrowsers browser, String scenarioName) {
        this.capabilities = generateCapabilities(browser, scenarioName);
        init();
    }

    /*
    STATIC METHODS
     */

    static SauceLabs getInstance() {
        return INSTANCE;
    }

    /**
     * Reset connection to default
     */
    static void reset() {
        INSTANCE.close();
        INSTANCE = new SauceLabs();
    }

    /**
     * Reset connection to default browser and new scenario
     *
     * @param scenarioName name of scenario to run
     */
    static void reset(String scenarioName) {
        if (INSTANCE != null)
            INSTANCE.close();
        INSTANCE = new SauceLabs(scenarioName);
    }

    /**
     * Reset connection to new browser and new sceanrio
     *
     * @param browser      name of the browser
     * @param scenarioName name of the scenario to run
     */
    static void reset(SauceLabs.SupportedBrowsers browser, String scenarioName) {
        INSTANCE.close();
        INSTANCE = new SauceLabs(browser, scenarioName);
    }

    /*
    CLASS METHODS
     */

    /**
     * Send job passed command to sauce labs
     */
    void testPassed() {
        sauceREST.jobPassed(jobId);
    }

    /**
     * Send job failed command to sauce labs
     */
    void testFailed() {
        sauceREST.jobFailed(jobId);
    }

    String getSauceLink() {
//        return "http://saucelabs.com/jobs/" + jobId;
        return sauceREST.getPublicJobLink(jobId);
    }

    /**
     * Get the (Remote) WebDriver to sauce labs browser
     *
     * @return
     */
    WebDriver getDriver() {
        return driver;
    }

    /**
     * Close browser and connection
     */
    void close() {
        log.trace("Closing SauceLab connection");
        try {
            if (driver != null) {
                driver.close();
                driver.quit();
                try {
                    driver.get("someURL");
                } catch (Exception e) {
                    log.trace("Successfully closed RemoteWebDriver");
                }
            }
        } catch (Exception e) {
            log.error("Unable to quit web driver");
            return;
        }

        log.trace("Browser closed");
    }

    /*
    HELPER METHODS
     */

    /**
     * Initialize Remote Web Driver and SauceLabs job name
     */
    private void init() {
        // Create Remote Web Driver
        try {
            this.driver = new RemoteWebDriver(new URL(getURL()), capabilities);
        } catch (MalformedURLException e) {
            log.error("Invalid SauceLabs URL <{}>", getURL());
        }

        // Get Session ID
        this.jobId = driver.getSessionId().toString();

        // Setup SauceRest Connection
        this.sauceREST = new SauceREST(getUsername(), getAccessKey());
        log.trace("opened connection to SauceLabs with id:{}", this.jobId);
    }

    /**
     * Generate default capabilities
     *
     * @return the configured capabilities
     */
    private DesiredCapabilities generateCapabilities() {
        SupportedBrowsers browser = SupportedBrowsers.getFromString(configGetOptionalString("defaultBrowserName").orElse("CHROME"));
        String name = configGetOptionalString("defaultJobName").orElse("CLM UI headerTabSiteOptionTest");
        return generateCapabilities(browser, name);
    }

    /**
     * Generate capabilities based on params
     *
     * @param browser      name of browser to use
     * @param scenarioName name of the scenario to include in job name
     * @return the configured capabilities
     */
    private DesiredCapabilities generateCapabilities(SupportedBrowsers browser, String scenarioName) {
        DesiredCapabilities capabilities = new DesiredCapabilities();

        // Configure By Browser
        switch (browser) {
            /**************** chrome ****************************/
            case CHROME:
                capabilities = DesiredCapabilities.chrome();
                capabilities.setCapability("platform", "Windows 10");
                capabilities.setCapability("version", "68.0");
                break;

            /**************** FireFox ****************************/
            case FIREFOX:
                capabilities = DesiredCapabilities.firefox();
                capabilities.setCapability("platform", "Windows 10");
                capabilities.setCapability("version", "62.0");
                break;

            /**************** Internet Explorer 11 ****************************/
            case IE:
                capabilities = DesiredCapabilities.internetExplorer();
                capabilities.setCapability("platform", "Windows 10");
                capabilities.setCapability("version", "11.103");
                break;

            /**************** Safari ****************************/
            case SAFARI:
                capabilities = DesiredCapabilities.safari();
                capabilities.setCapability("platform", "macOS 10.13");
                capabilities.setCapability("version", "11.1");
                break;
            default:
                Assert.fail("Invalid sauceLab browser parameter [" + browser + "]");
        }

        // Configure SauceLabs Integration
        capabilities.setCapability("autoAcceptsAlerts", true);
        capabilities.setCapability("parentTunnel", "sauce_admin");
        capabilities.setCapability("tunnelIdentifier", "OptumSharedTunnel-Stg");


        capabilities.setCapability("name", genName(scenarioName, browser.commonName));
        capabilities.setCapability("build", genBuild());
        capabilities.setCapability("tags", genTags());

        capabilities.setCapability("public", "public restricted");


        return capabilities;
    }

    /**
     * Retrieve SauceLabs_UserName
     *
     * @return sauce connection username
     */
    private String getUsername() {
        return configGetOptionalString("SauceLabs_UserName").orElse(configGetOptionalString("username").orElse("unknown"));

    }

    /**
     * Retrieve SauceLabs_AccessKey
     *
     * @return sauce api key
     */
    private String getAccessKey() {
        return configGetOptionalString("SauceLabs_AccessKey").orElse("");
    }

    /**
     * Build the URL for the connection
     *
     * @return sauce url
     */
    private String getURL() {
        return "http://" + getUsername() + ":" + getAccessKey() + "@ondemand.saucelabs.com:80/wd/hub";
    }

    /**
     * Generate connection name
     *
     * @param scenarioName name of the scenario
     * @param browserName  name of the user
     * @return connection job name
     */
    private String genName(String scenarioName, String browserName) {
        return "[" + genBuilderName() + "] " + scenarioName + " - " + browserName;
    }

    /**
     * Retireieve Build name, used to group multiple tests
     *
     * @return build name
     */
    private String genBuild() {
        return configGetOptionalString("BUILD_TAG").orElse(getUsername() + "::" + TimeKeeper.getInstance().getStartTimeISO());
    }

    /**
     * Retrieve tags to include in job if present
     *
     * @return tags
     */
    private List<String> genTags() {
        List<String> tags = new ArrayList<>();
        Optional<String> urlJenkins = configGetOptionalString("JENKINS_URL");
        Optional<String> urlGit = configGetOptionalString("GIT_URL");
        urlJenkins.ifPresent(s -> tags.add("Jenkins URL: " + s));
        urlGit.ifPresent(s -> tags.add("Git URL: " + s));

        return tags;
    }

    /**
     * Retrieve builder name, from jenkins build tag or sauce user
     *
     * @return builder name
     */
    private String genBuilderName() {
        // Get Who is Running Job
        Optional<String> builderName = configGetOptionalString("BUILD_TAG");

        if (builderName.isPresent()) {
            return builderName.get();
        }

        builderName = configGetOptionalString("SauceLabs_UserName");

        if (builderName.isPresent()) {
            return "LOCAL - " + builderName.get();
        }

        return "unknown";
    }

    /*
    UTILITY CLASS
     */

    /**
     * Enum of supported Browsers
     */
    enum SupportedBrowsers {
        CHROME("Chrome"),
        FIREFOX("Firefox"),
        IE("Internet Explorer"),
        SAFARI("Safari");
        public final String commonName;

        SupportedBrowsers(String commonName) {
            this.commonName = commonName;
        }

        public static SupportedBrowsers getFromString(String s) {
            try {
                return SupportedBrowsers.valueOf(s.toUpperCase());
            } catch (Exception e) {
                return CHROME;
            }
        }
    }

}
