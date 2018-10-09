package ui_test.page.pagehelpers;

import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.safari.SafariDriver;
import org.testng.ITestResult;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import ui_test.page.exari.Contract;
import ui_test.page.exari.HomePage;
import ui_test.page.exari.LoginPage;
import ui_test.util.d.JsonHelper;
import ui_test.util.d.JsonReader;
import ui_test.util.d.PropertyReader;

import java.io.IOException;
import java.lang.reflect.Method;


public class PageObjectBase {

    public static String baseUrl;
    public static ExtentReports extent;
    public static ExtentTest test;
    public static XlsReader reader;
    public static PropertyReader prop;
    public static XlsReader TestSuite = null;
    public static JsonReader jsonReader;
    public static LoginPage loginPage;
    public static HomePage homePage;
    public static Contract contract;
    protected static WebDriver driver;
    public Method method;
    public DesiredCapabilities capabilities = null;
    public FirefoxOptions options;
    protected FunctionalLibrary helper;

    public static void setDriver(WebDriver driver) {
        PageObjectBase.driver = driver;
    }

    @AfterClass
    public static void tearDown() {

        System.out.println("Inside PageObject to Close browser ");
        driver.quit();
        extent.flush();
        test.log(LogStatus.INFO, "End of Report ");
        extent.close();
    }

    //    @Parameters("jsonFilePath")
    @BeforeClass
    public void setup() throws Exception {


        //Report.ExtentReportConfig();

        extent = new ExtentReports("output/report" + System.currentTimeMillis() + ".html", true);

        helper = new FunctionalLibrary();


        //Excel path configuration
        reader = new XlsReader(System.getProperty("user.dir") + "/TestData.xlsx");

        //Property path configuration
		/*prop=new PropertyReader();
		String browser=prop.readProperty("browser")
		String environment=prop.readProperty("ENV");*/

        /** JSON Path Configuration
         * reading browser and Environment
         */

        String jsonFilePath = getClass().getResource("/configurations/config.json").getFile();
        System.out.println(jsonFilePath);

        JsonHelper.initialize(jsonFilePath);
        jsonReader = JsonHelper.getConfig();
        String browser = jsonReader.getBrowserName();
        String environment = jsonReader.getEnvironment();


        if (browser.equalsIgnoreCase("Firefox")) {
            capabilities = DesiredCapabilities.firefox();
            capabilities.setCapability("marionette", true);
            System.setProperty("webdriver.gecko.driver", "src/test/resources/drivers/geckodriver.exe");
            setDriver(new FirefoxDriver(capabilities));
            System.out.println("-----Firefox Browser Launched----- ");
        } else if (browser.equalsIgnoreCase("Chrome")) {
            capabilities = DesiredCapabilities.chrome();
//            System.setProperty("webdriver.chrome.driver", "src\\test\\resources\\drivers\\chromedriver.exe");
            System.setProperty("webdriver.chrome.driver", getClass().getResource("/drivers/chromedriver").getFile());
            setDriver(new ChromeDriver(capabilities));
            System.out.println("-----Chrome Browser Launched----- ");
        } else if (browser.equalsIgnoreCase("Edge")) {
            capabilities = DesiredCapabilities.internetExplorer();
            capabilities.setCapability("ignoreZoomSetting", true);
            System.setProperty("webdriver.ie.driver", "src\\test\\resources\\drivers\\IEDriverServer.exe");
            capabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);

            driver = new InternetExplorerDriver(capabilities);
            System.out.println("-----I.E Browser Launched----- ");
        } else if (browser.equalsIgnoreCase("Safari")) {
            capabilities = DesiredCapabilities.safari();
            System.setProperty("webdriver.edge.driver", System.getProperty("user.dir") + "/drivers/MicrosoftWebDriver.exe");
            setDriver(new SafariDriver(capabilities));
            System.out.println("-----Safari Browser Launched----- ");
        }

        helper.openPage(environment);
        loginPage = new LoginPage(helper);

    }

    @BeforeMethod
    public void config(Method method) throws IOException {

        test = extent.startTest((this.getClass().getSimpleName() + " :: " + method.getName()), method.getName());

    }

    @AfterMethod
    public void tearDown(ITestResult testResult) throws InterruptedException {
        extent.endTest(test);

        if (testResult.getStatus() == ITestResult.FAILURE) {
            System.out.println(testResult.getStatus());

            String imagePath = helper.capture_Screenshot();

            test.log(LogStatus.FAIL, "The testcase is failed.Please find screenshot below   :" + test.addScreenCapture(imagePath));

        }

    }


}
