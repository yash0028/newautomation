package ui_test.util;

import com.saucelabs.saucerest.SauceREST;
import general_test.util.ISharedValueReader;
import org.openqa.selenium.MutableCapabilities;
import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.ie.InternetExplorerOptions;
import org.openqa.selenium.remote.BrowserType;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.safari.SafariOptions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.TimeKeeper;
import util.configuration.IConfigurable;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

/**
 * Package Private Singleton to manage SauceLabs connection and any communication tasks.
 */
public class SauceLabs {
    private static final Logger log = LoggerFactory.getLogger(SauceLabs.class);
    private static SauceLabs INSTANCE;

    private String jobId;
    private RemoteWebDriver driver = null;
    private SauceREST sauceREST;

    /*
    CONSTRUCTOR
     */

    private SauceLabs(MutableCapabilities capabilities, String username, String apiKey, String url) {

        // Create Remote Web Driver
        try {
            this.driver = new RemoteWebDriver(new URL(url), capabilities);
            //this.driver.manage().timeouts().implicitlyWait(90, TimeUnit.SECONDS);
            this.driver.manage().timeouts().pageLoadTimeout(90, TimeUnit.SECONDS);
        } catch (MalformedURLException e) {
            log.error("Invalid SauceLabs URL <{}>", url);
            return;
        } catch (Exception e) {
            log.error("unable to start remote web driver");
            log.trace(e.getMessage());
            return;
        }

        // Get Session ID
        this.jobId = driver.getSessionId().toString();

        // Setup SauceRest Connection
        this.sauceREST = new SauceREST(username, apiKey);
        log.trace("opened connection to SauceLabs with id:{}", this.jobId);
    }

    /*
    STATIC METHODS
     */

    static SauceLabs getInstance() {
        return INSTANCE;
    }

    /**
     * Reset connection to Builder
     */
    static void reset(SauceLabs.Builder builder) {
        if (INSTANCE != null)
            INSTANCE.close();
        INSTANCE = builder.build();
    }

    /*
    CLASS METHODS
     */

    /**
     * Send job passed command to sauce labs
     */
    public void testPassed() {
        sauceREST.jobPassed(jobId);
    }

    /**
     * Send job failed command to sauce labs
     */
    public void testFailed() {
        sauceREST.jobFailed(jobId);
    }

    public String getSauceLink() {
//        return "http://saucelabs.com/jobs/" + jobId;
        return sauceREST.getPublicJobLink(jobId);
    }

    /**
     * Get the (Remote) WebDriver to sauce labs browser
     *
     * @return
     */
    public WebDriver getDriver() {
        return driver;
    }

    /**
     * Close browser and connection
     */
    public void close() {
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
            log.error("Unable to quit web driver b/c '{}'", e.getMessage());
            return;
        }

        log.trace("Browser closed");
    }

    /*
    HELPER METHODS
     */


    /*
    UTILITY CLASS
     */

    public static class Builder implements IConfigurable, ISharedValueReader {

        private String browserName;
        private String browserVersion;

        private String platformName;
        private String platformVersion;

        private String jobNameJenkins;
        private String jobNameScenario;

        private String buildName;

        private String username;
        private String apiKey;

        private String parentTunnel;
        private String tunnelIdentifier;

        private String visibility;
        private boolean extendedDebugging;

        private boolean autoAcceptAlerts;

        private List<String> tags;

        public Builder() {
            //Default Browser
            String defaultBrowserName = configGetOptionalString("ui.sauce.defaultBrowserName").orElse(BrowserType.CHROME);
            Optional<String> optionalBrowser = getSharedString("browserName");
            this.browserName = optionalBrowser.orElse(defaultBrowserName);

            this.jobNameScenario = configGetOptionalString("ui.sauce.defaultJobName").orElse("UI Test");

            //Default Platform
            this.platformName = Platform.WIN10.name();

            tags = new ArrayList<>();
        }

        public Builder withBrowserName(String browserName) {
            this.browserName = browserName;
            return this;
        }

        public Builder withBrowserName(Optional<String> browserName) {
            browserName.ifPresent(s -> this.browserName = s);
            return this;
        }

        public Builder withBrowserVersion(String browserVersion) {
            this.browserVersion = browserVersion;
            return this;
        }

        public Builder withBrowserVersion(Optional<String> browserVersion) {
            browserVersion.ifPresent(s -> this.browserVersion = s);
            return this;
        }

        public Builder withPlatformName(String platformName) {
            this.platformName = platformName;
            return this;
        }

        public Builder withPlatformName(Optional<String> platformName) {
            platformName.ifPresent(s -> this.platformName = s);
            return this;
        }

        public Builder withJobNameJenkinsBuild(String jobNameJenkinsBuild) {
            this.jobNameJenkins = jobNameJenkinsBuild;
            return this;
        }

        public Builder withJobNameJenkinsBuild(Optional<String> jobNameJenkinsBuild) {
            jobNameJenkinsBuild.ifPresent(s -> this.jobNameJenkins = s);
            return this;
        }

        public Builder withJobNameScenarioName(String jobNameScenarioName) {
            this.jobNameScenario = jobNameScenarioName;
            return this;
        }

        public Builder withJobNameScenarioName(Optional<String> jobNameScenarioName) {
            jobNameScenarioName.ifPresent(s -> this.jobNameScenario = s);
            return this;
        }

        public Builder withBuildName(String buildName) {
            this.buildName = buildName;
            return this;
        }

        public Builder withBuildName(Optional<String> buildName) {
            buildName.ifPresent(s -> this.buildName = s);
            return this;
        }

        public Builder withUsername(String username) {
            this.username = username;
            return this;
        }

        public Builder withUsername(Optional<String> username) {
            username.ifPresent(s -> this.username = s);
            return this;
        }


        public Builder withApiKey(String apiKey) {
            this.apiKey = apiKey;
            return this;
        }

        public Builder withApiKey(Optional<String> apiKey) {
            apiKey.ifPresent(s -> this.apiKey = s);
            return this;
        }

        public Builder withParentTunnel(String parentTunnel) {
            this.parentTunnel = parentTunnel;
            return this;
        }

        public Builder withParentTunnel(Optional<String> parentTunnel) {
            parentTunnel.ifPresent(s -> this.parentTunnel = s);
            return this;
        }

        public Builder withTunnelIdentifier(String tunnelIdentifier) {
            this.tunnelIdentifier = tunnelIdentifier;
            return this;
        }

        public Builder withTunnelIdentifier(Optional<String> tunnelIdentifier) {
            tunnelIdentifier.ifPresent(s -> this.tunnelIdentifier = s);
            return this;
        }

        public Builder withVisibility(String visibility) {
            this.visibility = visibility;
            return this;
        }

        public Builder withVisibility(Optional<String> visibility) {
            visibility.ifPresent(s -> this.visibility = s);
            return this;
        }

        public Builder doExtendedDebugging(boolean doExtendedDebugging) {
            this.extendedDebugging = doExtendedDebugging;
            return this;
        }

        public Builder doExtendedDebugging(Optional<Boolean> doExtendedDebugging) {
            doExtendedDebugging.ifPresent(s -> this.extendedDebugging = s);
            return this;
        }

        public Builder doAutoAcceptAlerts(boolean doAutoAcceptAlerts) {
            this.autoAcceptAlerts = doAutoAcceptAlerts;
            return this;
        }

        public Builder doAutoAcceptAlerts(Optional<Boolean> doAutoAcceptAlerts) {
            doAutoAcceptAlerts.ifPresent(s -> this.autoAcceptAlerts = s);
            return this;
        }

        public Builder addTag(String tag) {
            this.tags.add(tag);
            return this;
        }

        public Builder addTag(Optional<String> tag) {
            tag.ifPresent(s -> this.tags.add(s));
            return this;
        }

        public Builder loadPropertyMap(Map<String, String> map) {

            if (map == null || map.isEmpty()) {
                return this;
            }

            for (String key : map.keySet()) {
                switch (key) {
                    case "ui.sauce.defaultBrowserName":
                    case "defaultBrowserName":
                    case "browserName":
                        this.withBrowserName(map.get(key));
                        break;
                    case "ui.sauce.defaultBrowserVersion":
                    case "defaultBrowserVersion":
                    case "browserVersion":
                        this.withBrowserVersion(map.get(key));
                    case "ui.sauce.defaultPlatformName":
                    case "defaultPlatformName":
                    case "platformName":
                        this.withPlatformName(map.get(key));
                    default:
                        break;
                }
            }

            return this;
        }

        public SauceLabs build() {
            return new SauceLabs(buildAllCapabilities(), this.username, this.apiKey, buildUrl());
        }

        private MutableCapabilities buildAllCapabilities() {
            MutableCapabilities cap = buildBrowser();
            cap = cap.merge(buildPlatform());
            cap = cap.merge(buildJobName());
            cap = cap.merge(buildBuildName());
            cap = cap.merge(buildTunnel());
            cap = cap.merge(buildTags());

            cap.setCapability("maxDuration", 3600);

            return cap;
        }

        private MutableCapabilities buildBrowser() {

            MutableCapabilities capabilities;

            switch (this.browserName) {
                case BrowserType.FIREFOX:
                    capabilities = new FirefoxOptions();
                    break;
                case BrowserType.IE:
                    capabilities = new InternetExplorerOptions();
                    break;
                case BrowserType.SAFARI:
                    capabilities = new SafariOptions();
                    break;
                case BrowserType.CHROME:
                default:
                    capabilities = new ChromeOptions();
                    break;
            }

            if (this.browserVersion != null && this.browserVersion.length() > 0) {
                capabilities.setCapability(CapabilityType.BROWSER_VERSION, this.browserVersion);
            }

            return capabilities;
        }

        private MutableCapabilities buildPlatform() {
            MutableCapabilities cap = new MutableCapabilities();

            cap.setCapability("platform", this.platformName);

            return cap;
        }

        private MutableCapabilities buildJobName() {
            MutableCapabilities cap = new MutableCapabilities();
            StringBuilder nameBuilder = new StringBuilder();

            nameBuilder.append("[");
            if (this.jobNameJenkins == null || this.jobNameJenkins.length() == 0) {
                String user = configGetOptionalString("user.name")
                        .orElse(configGetOptionalString("USER")
                                .orElse(this.username));
                nameBuilder.append("LOCAL-").append(user.toUpperCase());
            } else {
                nameBuilder.append(this.jobNameJenkins);
            }
            nameBuilder.append("] ");

            if (this.jobNameScenario == null || this.jobNameScenario.length() == 0) {
                nameBuilder.append("UI Test");
            } else {
                nameBuilder.append(this.jobNameScenario);
            }

            nameBuilder.append(" - ").append(this.browserName.toUpperCase());

            if (this.browserVersion != null && this.browserVersion.length() > 0) {
                nameBuilder.append(" (v ").append(this.browserVersion).append(")");
            }

            cap.setCapability("name", nameBuilder.toString());

            return cap;
        }

        private MutableCapabilities buildBuildName() {
            MutableCapabilities cap = new MutableCapabilities();
            StringBuilder nameBuilder = new StringBuilder();

            if (this.buildName == null || this.buildName.length() == 0) {
                String user = configGetOptionalString("user.name")
                        .orElse(configGetOptionalString("USER")
                                .orElse(this.username));
                nameBuilder.append(user).append("::").append(TimeKeeper.getInstance().getStartTimeISO());
            } else {
                nameBuilder.append(this.buildName);
            }

            cap.setCapability("build", nameBuilder.toString());

            return cap;
        }

        private MutableCapabilities buildTunnel() {
            MutableCapabilities cap = new MutableCapabilities();

            cap.setCapability("parentTunnel", this.parentTunnel);
            cap.setCapability("tunnelIdentifier", this.tunnelIdentifier);

            cap.setCapability("extendedDebugging", this.extendedDebugging);
            cap.setCapability("autoAcceptsAlerts", this.autoAcceptAlerts);

            cap.setCapability("public", this.visibility);

            return cap;
        }

        private MutableCapabilities buildTags() {
            MutableCapabilities cap = new MutableCapabilities();
            List<String> tagList = new ArrayList<>();

            configGetOptionalString("JENKINS_URL").ifPresent(s -> tagList.add("Jenkins URL: " + s));
            configGetOptionalString("GIT_URL").ifPresent(s -> tagList.add("Git URL: " + s));

            tagList.addAll(this.tags);

            cap.setCapability("tags", tagList.toString());

            return cap;
        }

        private String buildUrl() {
            StringBuilder builder = new StringBuilder("http://");
            builder.append(this.username);
            builder.append(":");
            builder.append(this.apiKey);
            builder.append("@ondemand.saucelabs.com:").append(configGetOptionalInteger("ui.sauce.port").orElse(80)).append("/wd/hub");

            log.trace("sauce url :: {}", builder.toString());

            return builder.toString();
        }
    }

}
