package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import org.openqa.selenium.JavascriptExecutor;
import ui_test.util.IWebInteract;

import java.util.HashMap;
import java.util.List;


public class PaymentAppendix extends GenericInputPage {

    private PageElements elements;

    public PaymentAppendix(WebDriver driver) {
        elements = new PageElements(driver);
    }

    public void selectPaymentAppendix(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if (hmap.containsKey("High Fee Schedule than Default"))
            Assert.assertTrue(click("High Fee Schedule than Default", paymentAppendixElement(hmap.get("High Fee Schedule than Default"))));
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));

        //Split PaymentAppendix using // in case need to include multiple PaymentAppendix
        if (hmap.containsKey("Payment Appendix")) {

            String[] PaymentAppendix = hmap.get("Payment Appendix").split("//");
            for (String paymentAppendix : PaymentAppendix) {
                Assert.assertTrue(setCheckBox("Include Product in Appendix 2", paymentAppendixElement(paymentAppendix), true));
                Assert.assertTrue(waitForPageLoad(60));
            }

        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

        enterMedicaidCHIPPaymentAppendix(hmap);
    }

    //For SPGA contracts
    public void enterFeeScheduleID(HashMap<String, String> hmap) {
        boolean pageExist = false;
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer?")))) {
            Assert.assertTrue(sendKeys("All Payer", getFeeScheduleElement("All Payer?"), hmap.get("FS All Payer")));
            pageExist = true;
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer  ?")))) {
            Assert.assertTrue(sendKeys("All Payer", getFeeScheduleElement("All Payer  ?"), hmap.get("FS All Payer")));
            pageExist = true;
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Physicians")))) {
            Assert.assertTrue(sendKeys("All Payer for Physicians", getFeeScheduleElement("All Payer for Physicians"), hmap.get("FS All Payer Physician")));
            pageExist = true;
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Non-Physicians")))) {
            Assert.assertTrue(sendKeys("All Payer for Non-Physicians", getFeeScheduleElement("All Payer for Non-Physicians"), hmap.get("FS All Payer Non Physician")));
            pageExist = true;
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Additional Network")))) {
            Assert.assertTrue(sendKeys("Additional Network", getFeeScheduleElement("Additional Network"), hmap.get("FS Additional Network")));
            pageExist = true;
        }
        if (pageExist) {
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        enterMedicaidCHIPPaymentAppendix(hmap);
        
        pageExist = false;
        
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage for Physicians ?")))) {
            Assert.assertTrue(sendKeys("Medicare Advantage for Physicians ?", getFeeScheduleElement("Medicare Advantage"), hmap.get("FS Medicare Advantage")));
            pageExist = true;
        }
        
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage for Non-Physicians?")))) {
            Assert.assertTrue(sendKeys("Medicare Advantage for Non-Physicians?", getFeeScheduleElement("Medicare Advantage for Non-Physicians?"), hmap.get("FS Medicare Advantage")));
            pageExist = true;
        }
        
        if (pageExist) {
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
       
    }

    public void verifyFeeScheduleID(HashMap<String, String> hmap) {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        enterMedicaidCHIPPaymentAppendix(hmap);
    }

    public void verifyAmendments() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void payment() {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Did you negotiate a rate escalator? : Yes", getRateEscalator("No")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void appliedPaymentAppendix(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.PaymentAppendixStructureStandard))) {
            Assert.assertTrue(click("Structure Payment Appendix in Amendments", elements.PaymentAppendixStructureStandardElem));
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        }
        Assert.assertTrue(click("Apply Payment Appendix in Amendments", paymentAppendixElement(hmap.get("Apply Payment Appendix in Amendments"))));
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterDataInPaymentAppendixForSPGA(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("Enter Fees Schedule Id for Medicare in Amendments", elements.feeSchduleIDMedicareSPGA, hmap.get("FS Id Amendments")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterDataInPaymentAppendixForPAT(HashMap<String, String> hmap) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage  ?")))) {
            getFeeScheduleElement("Medicare Advantage  ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage  ?"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage ?")))) {
            getFeeScheduleElement("Medicare Advantage ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage ?"), hmap.get("FS Id Amendments Physician")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void enterDataInPaymentAppendixForSPA(HashMap<String, String> hmap) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage  ?")))) {
            getFeeScheduleElement("Medicare Advantage  ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage  ?"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage ?")))) {
            getFeeScheduleElement("Medicare Advantage ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage ?"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Additional Network")))) {
            Assert.assertTrue(sendKeys("Additional Network", getFeeScheduleElement("Additional Network"), hmap.get("FS Additional Network")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void paymentAppendixToInclude(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Payment Appendix to include", elements.paymentAppendixToIncludePhysician));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void paymentAppendixToIncludeMGA(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        String[] Questions = {"Which of the following products will be included in Appendix 2", "Select Payment Appendix to include"};

        for (String Question : Questions) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
                IWebInteract.log.info("Question : {}", Question);
                if (hmap.containsKey("Payment Appendix to Include")) {
                    String[] appendixes = hmap.get("Payment Appendix to Include").split("//");
                    for (String appendix : appendixes) {
                        Assert.assertTrue(setCheckBox("Payment Appendix to Include", paymentAppendixElement(appendix), true));
                        pause(1);
                    }
                }
            }
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterDataInPaymentAppendixForSMGA(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("FeeSchedule ID Medicare Physician", this.elements.feeSchduleIDPhysicianMedicare, hmap.get("FS Id Amendments Physician")));
        Assert.assertTrue(sendKeys("FeeSchedule ID Medicare Non Physician", this.elements.feeSchduleIDNonPhysicianMedicare, hmap.get("FS Id Amendments Non-Physician")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement paymentAppendixElement(String paymentAppendix) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + paymentAppendix + "')]"});
    }

    public void replacePaymentAppendixInAmendments(HashMap<String, String> hmap) {
        if (hmap.containsKey("Payment Appendix to Replace")) {
            Assert.assertTrue(sendKeys("Replace Payment Appendix", elements.searchBar, hmap.get("Payment Appendix to Replace")));
            Assert.assertTrue(click("Select Payment Appendix to Replace", elements.selectCode.get(0)));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            Assert.assertTrue(click("paymentAppendix", paymentAppendixElement(hmap.get("Payment Appendix to Include"))));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public void medicareAdvantagePaymentAppendixMGA(HashMap<String, String> hmap) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Advantage for Physicians")))) {
            getFeeScheduleElement("Advantage for Physicians").clear();
            Assert.assertTrue(sendKeys("Advantage for Physicians", getFeeScheduleElement("Advantage for Physicians"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Advantage for Non-Physicians")))) {
            getFeeScheduleElement("Advantage for Non-Physicians").clear();
            Assert.assertTrue(sendKeys("Advantage for Non-Physicians", getFeeScheduleElement("Advantage for Non-Physicians"), hmap.get("FS Id Amendments Non-Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage  ?")))) {
            getFeeScheduleElement("Medicare Advantage  ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage  ?"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage ?")))) {
            getFeeScheduleElement("Medicare Advantage ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage ?"), hmap.get("FS Id Amendments Physician")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void verifyMedicareAdvantage() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterPaymentAppenidix(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer?")))) {
            getFeeScheduleElement("All Payer?").clear();
            Assert.assertTrue(sendKeys("All Payer", getFeeScheduleElement("All Payer?"), hmap.get("FS All Payer")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer  ?")))) {
            getFeeScheduleElement("All Payer  ?").clear();
            Assert.assertTrue(sendKeys("All Payer", getFeeScheduleElement("All Payer  ?"), hmap.get("FS All Payer")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Physicians")))) {
            getFeeScheduleElement("All Payer for Physicians").clear();
            Assert.assertTrue(sendKeys("All Payer for Physicians", getFeeScheduleElement("All Payer for Physicians"), hmap.get("FS All Payer Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Non-Physicians")))) {
            getFeeScheduleElement("All Payer for Non-Physicians").clear();
            Assert.assertTrue(sendKeys("All Payer for Non-Physicians", getFeeScheduleElement("All Payer for Non-Physicians"), hmap.get("FS All Payer Non Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage for Physicians ?")))) {
            getFeeScheduleElement("Medicare Advantage for Physicians ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage for Physicians ?", getFeeScheduleElement("Medicare Advantage for Physicians ?"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage for Non-Physicians?")))) {
            getFeeScheduleElement("Medicare Advantage for Non-Physicians?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage for Non-Physicians?", getFeeScheduleElement("Medicare Advantage for Non-Physicians?"), hmap.get("FS Id Amendments Non-Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Advantage for Physicians")))) {
            getFeeScheduleElement("Advantage for Physicians").clear();
            Assert.assertTrue(sendKeys("Advantage for Physicians", getFeeScheduleElement("Advantage for Physicians"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Advantage for Non-Physicians")))) {
            getFeeScheduleElement("Advantage for Non-Physicians").clear();
            Assert.assertTrue(sendKeys("Advantage for Non-Physicians", getFeeScheduleElement("Advantage for Non-Physicians"), hmap.get("FS Id Amendments Non-Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage  ?")))) {
            getFeeScheduleElement("Medicare Advantage  ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage  ?"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Medicare Advantage ?")))) {
            getFeeScheduleElement("Medicare Advantage ?").clear();
            Assert.assertTrue(sendKeys("Medicare Advantage", getFeeScheduleElement("Medicare Advantage ?"), hmap.get("FS Id Amendments Physician")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterPaymentAppendixinAmendmentsFC(HashMap<String, String> hmap) {
        //if Payment Appendix is shown
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.topicPA))) {
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            if (hmap.containsKey("Payment Appendix in Amendments FC")) {

                String[] PaymentAppendix = hmap.get("Payment Appendix in Amendments FC").split("//");
                for (String paymentAppendix : PaymentAppendix) {
                    Assert.assertTrue(setCheckBox(paymentAppendix, paymentAppendixElement(paymentAppendix), true));
                    Assert.assertTrue(waitForPageLoad(60));
                }

            }
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public void selectPaymentAppendixSMGA(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Higher than fee schedule Id", paymentAppendixElement(hmap.get("High Fee Schedule than Default"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement getFeeScheduleElement(String allpayerType) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + allpayerType + "')]/../../../..//input[contains(@name,'Fee_Schedule_Name')]"});
    }

    public WebElement getRateEscalator(String ans) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + ans + "')]"});
    }

    public String getFeeSchedule(String allpayerType) {
        return "//label/b[contains(.,'" + allpayerType + "')]/../../../..//input[contains(@name,'Fee_Schedule_Name')]";
    }

    public String getQn(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }

    public WebElement getQnInputElem(String ques, String val) {
        if (val != null) {
            return findElement(getDriver(), new String[]{"xpath", getQn(ques) + "/../../../..//input[contains(@value,'" + val + "')]"});
        }
        return findElement(getDriver(), new String[]{"xpath", getQn(ques) + "/../../../..//input"});
    }

    public String getSubTopic(String ans) {
        return "//p[contains(.,'" + ans + "')]";
    }

    public void selectStandered() {
        Assert.assertTrue(click(elements.standard));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }


    public void selectPaymentAppendixForLouisiana(HashMap<String, String> hmap) {
        Assert.assertTrue(click(elements.LouisianaNO));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void enterMedicaidCHIPPaymentAppendixFL() {
        // String subtopic = "FL Medicaid and CHIP";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath("//input[contains(@value,'Medicaid')]"))) {
            Assert.assertTrue(click(elements.selectmedicaid));
        }
        String[] InputQuestions = {"percentage of the Medicaid conversion factor",
                "percentage of the Medicaid Fee Schedule",
                "percentage of your Customary Charges",
                "percentage of the Medicaid fee schedule",
                "percentage or equivalent of CMS",
                "percentage of the current year CMS",
                "percentage of the CMS",
                "% of customary charges"};
        for (String Question : InputQuestions) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
                IWebInteract.log.info("Question : {}", Question);
                Assert.assertTrue(sendKeys("Entering Data to " + Question, getQnInputElem(Question, null), "5"));
            }
        }


        String[] RadioQuestions = {"CPT/HCPC Codes", "Red Door Alternate", "adding Incentive Program language for PCP"};
        for (String Question : RadioQuestions) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
                IWebInteract.log.info("Question : {}", Question);
                Assert.assertTrue(click("Entering Data to " + Question, getQnInputElem(Question, "No")));
                waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            }
        }

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void enterMississippiMedicaidMGA(){

        String[] InputQuestions = {"percentage of the Medicaid conversion factor",
                "percentage of the Medicaid Fee Schedule",
                "percentage of your Customary Charges",
                "percentage of the Medicaid fee schedule",
                "percentage or equivalent of CMS",
                "percentage of the current year CMS",
                "percentage of the CMS",
                "% of customary charges"};
        for (String Question : InputQuestions) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
                IWebInteract.log.info("Question : {}", Question);
                Assert.assertTrue(sendKeys("Entering Data to " + Question, getQnInputElem(Question, null), "5"));
            }
        }


        String[] RadioQuestions = {"CPT/HCPC Codes", "Red Door Alternate", "adding Incentive Program language for PCP"};
        for (String Question : RadioQuestions) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
                IWebInteract.log.info("Question : {}", Question);
                Assert.assertTrue(click("Entering Data to " + Question, getQnInputElem(Question, "No")));
                waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            }
        }

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void enterFeeScheduleIDNexus(HashMap<String, String> hmap)
    {
        Assert.assertTrue(sendKeys("FeeSchedule ID Nexus", this.elements.feeScheduleID_Nexus, hmap.get("FS All Payer Physician")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
    public void enterFeeScheduleIDMS(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("FeeSchedule ID Nexus", this.elements.feeScheduleID_MS, hmap.get("FS All Payer Physician")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void enterMedicaidCHIPPaymentAppendix(HashMap<String, String> hmap){
//        String subtopic = "Medicaid and CHIP";
        String[] subtopics = {"Medicaid and CHIP","Medicaid Simplified","CHIP Simplified"};
        for(String subtopic : subtopics) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(getSubTopic(subtopic)))) {
                if(subtopic=="CHIP Simplified"){
                    if(CommonMethods.isElementPresent(getDriver(),By.xpath(getQn("fee schedule")))) {
                        Assert.assertTrue(sendKeys("FeeSchedule ID", this.elements.genericFeeScheduleID, hmap.get("FS All Payer Physician")));
                    }
                    Assert.assertTrue(clickNext());
                    Assert.assertTrue(waitForPageLoad());
                }
                if (CommonMethods.isElementPresent(getDriver(), By.xpath("//a[contains(.,'Select All')]"))) {
                    Assert.assertTrue(click(elements.selectAll));
                }
                String[] InputQuestions = {"percentage of the Medicaid conversion factor",
                        "percentage of the Medicaid Fee Schedule",
                        "percentage of your Customary Charges",
                        "percentage of the Medicaid fee schedule",
                        "percentage or equivalent of CMS",
                        "percentage of the current year CMS",
                        "percentage of the CMS",
                        "% of customary charges"};
                for (String Question : InputQuestions) {
                    if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
                        IWebInteract.log.info("Question : {}", Question);
                        Assert.assertTrue(sendKeys("Entering Data to " + Question, getQnInputElem(Question, null), "5"));
                    }
                }


                String[] RadioQuestions = {"CPT/HCPC Codes", "Red Door Alternate", "adding Incentive Program language for PCP"};
                for (String Question : RadioQuestions) {
                    if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))) {
                        IWebInteract.log.info("Question : {}", Question);
                        Assert.assertTrue(click("Entering Data to " + Question, getQnInputElem(Question, "No")));
                        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
                    }
                }

                Assert.assertTrue(clickNext());
                Assert.assertTrue(waitForPageLoad());
            }
        }
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name']")
        private WebElement feeSchduleID;
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#MedicareAdvantage_Fee_Schedule_Name']")
        private WebElement feeSchduleIDMedicareSPGA;
        @FindBy(xpath = "//input[contains(@value,'Advantage for Physician')]")
        private WebElement paymentAppendixToIncludePhysician;
        @FindBy(xpath = "//input[contains(@value,'Advantage for Non-Physician')]")
        private WebElement paymentAppendixToIncludeNonPhysician;
        @FindBy(xpath = "//input[contains(@name,'Fee_Schedule_Name')]")
        private WebElement feeSchduleIDPhysicianMedicare;
        @FindBy(xpath = "//input[contains(@name,'Fee_Schedule_Name_NPPA')]")
        private WebElement feeSchduleIDNonPhysicianMedicare;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement searchBar;
        @FindBy(xpath="//input[contains(@name,'NexusOA_Fee_Schedule_Name')]")
        private WebElement feeScheduleID_Nexus;

        @FindBy(xpath=" //input[contains(@name,'MS_CHIP_Fee_Schedule_ID')]")
        private WebElement feeScheduleID_MS;

        //input[contains(@name,'MS_CHIP_Fee_Schedule_ID')]
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectCode;
        @FindBy(xpath="//input[contains(@value,'Standard')]")
        private WebElement standard;
        private String message = "//div[contains(@class,'DialogBox')]";
        @FindBy(xpath="//input[contains(@value, 'No')]")
        private WebElement LouisianaNO;
        @FindBy(xpath="//input[contains(@value,'Standard')]")
        private WebElement PaymentAppendixStructureStandardElem;

        @FindBy(xpath="//input[contains(@name,'Fee_Schedule')]")
        private WebElement genericFeeScheduleID;
        @FindBy(xpath="//a[contains(.,'Select All')]")
        private WebElement selectAll;
        @FindBy(xpath="//input[contains(@value,'Medicaid')]")
        private WebElement selectmedicaid;
        @FindBy(xpath="//input[contains(@value,'MedicareAdvantage_Fee_Schedule_Name')]")
        private WebElement Medicare_FeeSchName;
        
        private String PaymentAppendixStructureStandard = "//input[contains(@value,'Standard')]";
        private String topicPA = "//div[contains(@class,'topicArea')]/p[contains(.,'Payment Appendix')]";
        // @FindBy(xpath = "//div[contains(text(),'You must select at least one answer']")
        // private WebElement errormessage;
        // @FindBy(xpath = "//a[@title='go back one interview round']")
//        //private WebElement backbutton;
//        private String selectAll = "//a[contains(.,'Select All')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
