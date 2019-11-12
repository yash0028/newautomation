package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class PaymentAppendix extends GenericInputPage {

    private PageElements elements;
    public PaymentAppendix(WebDriver driver) {
        elements=new PageElements(driver);
    }

    public void selectPaymentAppendix(HashMap<String,String> hmap)
    {
        assert click("High Fee Schedule than Default", paymentAppendixElement(hmap.get("High Fee Schedule than Default")));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        pause(2);
        waitForPageLoad(60);
        assert click("paymentAppendix", paymentAppendixElement(hmap.get("Payment Appendix")));
        assert clickNext();
        assert waitForPageLoad();

    }

    //For SPGA contracts
    public void enterFeeScheduleID(HashMap<String,String> hmap)
    {

        switch (hmap.get("Paper Type"))
        {
            case "SPGA":
            {    assert sendKeys("FeeSchdeuleID", this.elements.feeSchduleID, hmap.get("FS All Payer"));
                 break;

            }
            case "MGA":
            {
                assert sendKeys("FeeSchedule ID Physician", this.elements.feeSchduleIDPhysician, hmap.get("FS All Payer Physician"));
                assert sendKeys("FeeSchedule ID Non Physician", this.elements.feeSchduleIDNonPhysician, hmap.get("FS All Payer Non Physician"));
                break;
            }
            case "SMGA":
            {
                assert sendKeys("FeeSchedule ID Physician", this.elements.feeSchduleIDPhysician, hmap.get("FS All Payer Physician"));
                assert sendKeys("FeeSchedule ID Non Physician", this.elements.feeSchduleIDNonPhysician, hmap.get("FS All Payer Non Physician"));
                break;
            }
            case "SPA":
            {
                assert sendKeys("FeeSchdeuleID", this.elements.feeSchduleID, hmap.get("FS All Payer"));
                break;
            }
            case "PAT":
            {
                assert sendKeys("FeeSchdeuleID", this.elements.feeSchduleID, hmap.get("FS All Payer"));
                break;
            }
        }
        assert clickNext();
        assert waitForPageLoad();

    }
    public void verifyFeeScheduleID() {
        assert clickNext();
        assert waitForPageLoad();
    }
    public WebElement paymentAppendixElement(String paymentAppendix){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+paymentAppendix+"')]"});
    }

    private static class PageElements  extends AbstractPageElements {
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name']")
        private WebElement feeSchduleID;
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name']")
        private WebElement feeSchduleIDPhysician;
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name_NPPA']")
        private WebElement feeSchduleIDNonPhysician;
        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }


}
