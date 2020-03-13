package ui_test.page.contractManagement;

import general_test.util.ISharedValueReader;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.site.SiteManager;
import ui_test.pages.CommonMethods;
import ui_test.pages.textFileWriter.TextFileWriter;
import ui_test.step.ExariSteps;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;



public class CMDPage implements IFactoryPage, IWebInteract, ISharedValueReader {
    private static Logger log = LoggerFactory.getLogger(CMDPage.class);
    @FindBy(xpath = "//h3[contains(text(),'In-Progress')]/ancestor::mat-card/p/a")
    WebElement inProgressLink;

    @FindBy(xpath = "//h3[contains(text(),'Action')]/ancestor::mat-card/p/a")
    WebElement actionRequiredLink;

    @FindBy(xpath = "//h3[contains(text(),'Errors')]/ancestor::mat-card/p/a")
    WebElement errorsLink;

    @FindBy(xpath = "//h3[contains(text(),'Completed')]/ancestor::mat-card/p/a")
    WebElement completedLink;

    @FindBy(className = "navbar-brand")
    WebElement headerContractManagemet;

    @FindBy(tagName = "h3")
    List<WebElement> actionItems;

    @FindBy(className = "nav-item")
    List<WebElement> navHeaders;

    @FindBy(className = "statnumber")
    List<WebElement> transCount;

    @FindBy(xpath = "//div[contains(@class, 'search-bar row')]/input")
    WebElement searchTransactionsTextBox;

    @FindBy(xpath = "//button[contains(text(),'Search')]")
    WebElement searchButton;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'Site')]")
    WebElement site;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'State_Market')]")
    WebElement state_market;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'ContractId')]")
    WebElement contractId;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'PaperType')]")
    WebElement paperType;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'ContractName')]")
    WebElement contractName;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'Status')]")
    WebElement status;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'RequestType')]")
    WebElement requestType;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'User')]")
    WebElement user;


    @FindBy(xpath = "//td[contains(text(),'')]/../td[contains(text(),'')]/../td[7]/span[2]")
    WebElement Resolve;

    @FindBy(xpath = "//table[@class='mat-table']//tr[1]/td[1]/div[1]/span[1]")
    public WebElement sitetab;

//    @FindBy(xpath = "//table[@class='mat-table']//tr[1]/td[1]/div[1]/span[contains(text(),'+')]")
//    public WebElement sitetab;


    @FindBy(xpath = "//span[contains(@class, 'innerHeaderStyle')][1]")
    public WebElement productgrp;


    @FindBy(xpath = "//button[text()='Abort ']")
    public WebElement Abort;

    @FindBy(xpath = "//button[text()='Abort Product Install']")
    public WebElement AbortProduct;

    @FindBy(xpath = "//button[text()='Load ']")
    public WebElement load;

    @FindBy(xpath = "//a[text()='Contract Management']")
    public WebElement clickhome;


    String plusbt2 = "//table[@class='mat-table']//tr[1]/td[1]/div[1]/span[1]";
    // String plusbt2= "//table[@class='mat-table']//tr[1]/td[1]/div[1]/span[contains(text(),'+')]";

    String productgroup = "//span[contains(@class, 'innerHeaderStyle')][1]";
    
    String resolvemultiple = "(//button[contains(.,'Resolve Multiple')])[1]";

    private WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public CMDPage(WebDriver driver) {
        this.driver = driver;
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, 20);
        //create all web elements on the CMD page
        PageFactory.initElements(factory, this);
    }

    /*
    FACTORY PAGE METHODS
     */

    /**
     * Verifies that we are on the contractPage management homepage by confirming that the url
     * is correct.
     *
     * @return True if current page is the contractPage management homepage.
     */
    @Override
    public boolean confirmCurrentPage() {
        return isVisible(searchTransactionsTextBox) && driver.getCurrentUrl().contains("contract-status");
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public String getHeaderContractManagement() {
        return headerContractManagemet.getText();
    }

    public List<WebElement> getActionItems() {
        return actionItems;
    }

    public List<WebElement> getNavHeaders() {
        return navHeaders;
    }

    public int getTransactionsCount(String actionItem) {
        switch (actionItem) {
            case "completed":
                return Integer.parseInt(transCount.get(0).getText());
            case "in-progress":
                return Integer.parseInt(transCount.get(1).getText());
            case "action required":
                return Integer.parseInt(transCount.get(2).getText());
            case "errors":
                return Integer.parseInt(transCount.get(3).getText());
            default:
                return 0;
        }
    }

    public ActionRequiredPage getActionRequiredPage() {
        return new ActionRequiredPage(driver);
    }

    /**
     * Click in progress link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickInProgressLink() {
        return click("in progress button", inProgressLink);
    }

    /**
     * Click action required link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickActionRequiredLink() {
        return click("action required button", actionRequiredLink);
    }

    /**
     * Click in errors link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickErrorsLink() {
        return click("errors button", errorsLink);
    }

    /**
     * Click in completed link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickCompletedLink() {
        return click("completed button", completedLink);
    }

    /**
     * Click on Search Button in contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickSearchButton() {
        return click("Search button", searchButton);
    }

    /**
     * Enter Contract Number in Search Transactions TextBox in contractPage management homepage.
     *
     * @return True if the the data is entered in the input field or false otherwise.
     */
    public boolean enterContractNumber() {
        //  return sendKeys(searchTransactionsTextBox, getSharedString("contractNumber").orElse(""));
    	//ExariSteps.hmap.put("Contract Number","37012005");
        System.out.println(ExariSteps.hmap.get("Contract Number"));
        return sendKeys(searchTransactionsTextBox, ExariSteps.hmap.get("Contract Number").trim());
         //return sendKeys(searchTransactionsTextBox,"37012005".trim());
    }

    public void searchContract() {
        enterContractNumber();
        Assert.assertTrue(clickSearchButton());
    }

    // public void validateactionrequired() {
    //   Assert.assertTrue(click("action required", actionRequiredLink));
    //}

    public void ValidateMessage() {
        String contract = ExariSteps.hmap.get("Contract Number");
        String status = getDriver().findElement(By.xpath("//td[contains(text(),'" + contract + "')]/../td[contains(text(),'')]/../td[7]/span")).getText();
        String requesttype = getDriver().findElement(By.xpath("//td[contains(text(),'" + contract + "')]/../td[contains(text(),'')]/../td[8]")).getText();

//        if (status.equals("SUCCESS") || (status.equals("FAILED"))) {
            //Write in CSV file

            ExariSteps.hmap.put("CMDStatus", status);
            IWebInteract.log.info("CMDStatus : {}", status);
            ExariSteps.hmap.put("RequestType", requesttype);
            IWebInteract.log.info("RequestType : {}", requesttype);
            TextFileWriter textFileWriter = new TextFileWriter();
            textFileWriter.writeCMDStatus(contractNumberCSVFile.toString(), ExariSteps.hmap);
        }
//    }

    public void CMDValidation() {
    	
        //Verify Details
        String contract = ExariSteps.hmap.get("Contract Number");

        String status = getDriver().findElement(By.xpath("//td[contains(text(),'" + contract + "')]/../td[contains(text(),'')]/../td[7]/span")).getText();
        String requesttype = getDriver().findElement(By.xpath("//td[contains(text(),'" + contract + "')]/../td[contains(text(),'')]/../td[8]")).getText();

        if (status.equals("SUCCESS") || (status.equals("FAILED"))) {
            //Write in CSV file

            ExariSteps.hmap.put("CMDStatus", status);
            IWebInteract.log.info("CMDStatus : {}", status);
            ExariSteps.hmap.put("RequestType", requesttype);
            IWebInteract.log.info("RequestType : {}", requesttype);
            TextFileWriter textFileWriter = new TextFileWriter();
            textFileWriter.writeCMDStatus(contractNumberCSVFile.toString(), ExariSteps.hmap);
        } else 
        {
        	Assert.assertTrue(click("resolveButton", Resolve));
            pause(5);
            String type2error = getDriver().findElement(By.xpath("//td[contains(text(),'')]/../td[contains(text(),'')]/../td[5]/span")).getText();

            if (type2error.equals("TYPE-II-ACTION")) {
                IWebInteract.log.info("Status : {}", type2error);
                Assert.assertTrue(click("sitePlus", sitetab));
                pause(10);
                //  waitTillClickable(productgrp);
                int plus = getDriver().findElements(By.xpath(productgroup)).size();
                System.out.print("The Count is " + plus);
                for (int j = 0; j < plus; j++) {
                    if (getDriver().findElements(By.xpath(productgroup)).size() > 0) {

                        if (productgrp.isDisplayed()) {

                        	//Resolve multiple	
                        	Assert.assertTrue(click("resolve multiple", getDriver().findElement(By.xpath(resolvemultiple))));
                            getDriver().findElement(By.xpath("//textarea[contains(@id,'mat-input')]")).sendKeys("Test");
                            getDriver().findElement(By.xpath("//p[.='Resolution Type']/parent::form//mat-select")).click();
                            
                            if(getDriver().findElement(By.xpath("//mat-option[contains(.,'Manually Installed')]")).isDisplayed())
                            {	
                            	getDriver().findElement(By.xpath("//mat-option[contains(.,'Manually Installed')]")).click();
                            	pause(4);
                            }
                            else
                            {
                            	getDriver().findElement(By.xpath("//mat-option[1]")).click();
                            	pause(4);
                            }	
                            //click on checkbox                          
                            getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-1']")).click();
                            //click submit
                            WebElement submitbtn =getDriver().findElement(By.xpath("//button[.='Submit']"));
                            jseclick("Submit Button",submitbtn);
                            
                        }
                    }
                    if (getDriver().findElements(By.xpath(plusbt2)).size() > 0) {
                        if (sitetab.isDisplayed()) {
                            Assert.assertTrue(click("sitePlus", sitetab));
                            pause(10);
                        }

                    }

                }
                Assert.assertTrue(click("click home", clickhome));
               
                pause(30);
                enterContractNumber();
                Assert.assertTrue(clickSearchButton());
                pause(5);
                ValidateMessage();
                
            } else {
                Assert.assertTrue(click("sitePlus", sitetab));
                pause(10);

                //  waitTillClickable(productgrp);
                int plus = getDriver().findElements(By.xpath(productgroup)).size();
                System.out.print("The Count is " + plus);
                for (int j = 0; j < plus; j++) {
                    if (getDriver().findElements(By.xpath(productgroup)).size() > 0) {

                        if (productgrp.isDisplayed()) {


                            Assert.assertTrue(click("productgroupPlus", productgrp));
                            pause(10);
                            Assert.assertTrue(click("Abortbutton", Abort));
                            Assert.assertTrue(click("Abortproductbutton", AbortProduct));
                            pause(10);
                        }
                    }
                    if (getDriver().findElements(By.xpath(plusbt2)).size() > 0) {

                        if (sitetab.isDisplayed()) {
                            Assert.assertTrue(click("sitePlus", sitetab));
                            pause(10);
                        }


                    }


                }


                Assert.assertTrue(click("click load button", load));
                Assert.assertTrue(click("click home", clickhome));
                pause(30);
                enterContractNumber();
                Assert.assertTrue(clickSearchButton());
                pause(5);
                ValidateMessage();
            }

        }
    }


    public void clickcmdHome()
    {
    	Assert.assertTrue(click("click load button", clickhome));
    }

    public void validateContractDetails(Map<String, String> params) {
        Assert.assertTrue("Contract Id value didn't match", contractId.getText().contains(getSharedString("contractNumber").orElse("")));
        for (String paramKey : params.keySet()) {
            switch (paramKey.toUpperCase()) {
                case "SITE":
                    String siteName = SiteManager.Site.string2Site(params.get(paramKey)).toString();
                    Assert.assertTrue(paramKey + " value didn't match", site.getText().equalsIgnoreCase(siteName));
                    break;
                case "STATE/MARKET":
                    Assert.assertTrue(paramKey + " value didn't match", state_market.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "USER":
                    Assert.assertTrue(paramKey + " value didn't match", user.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "PAPERTYPE":
                    Assert.assertTrue(paramKey + " value didn't match", paperType.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "CONTRACTNAME":
                    Assert.assertTrue(paramKey + " value didn't match", contractName.getText().contains(params.get(paramKey)));
                    break;
                case "STATUS":
                    Assert.assertTrue(paramKey + " value didn't match", status.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "REQUEST TYPE":
                    Assert.assertTrue(paramKey + " value didn't match", requestType.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                default:
                    log.info("Missing Validation Item");
                    break;
            }
        }
    }

    String home = System.getProperty("user.dir");
    Path contractNumberCSVFile = Paths.get(home, "src", "test", "resources", "support", "hive", "csvFiles", "contractNumberFile.csv");
}