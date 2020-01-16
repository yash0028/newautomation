package ui_test.pages;


import exari_test.eif.report.Result;
import org.junit.Assert;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;
import util.TimeKeeper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PESInputActions extends GenericInputPage {

    private PageElements elements;

    public PESInputActions(WebDriver driver) {

        this.elements = new PageElements(driver);
    }

    public void enterPESInput(HashMap<String, String> readFile) {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();
        String[] heading = this.elements.heading.getText().split("-");
        String contractNumber = heading[1].trim().split(" ")[0];
        IWebInteract.log.info("CONTARCT NUMBER : {}", contractNumber);
        try {
            Assert.assertTrue(waitForPageLoad());
            for (Map.Entry<String, String> entry : readFile.entrySet()) {
                switch (entry.getKey().toUpperCase()) {
                    case "MPIN":
                        Assert.assertTrue(sendKeys("MPIN textbox", this.elements.mpin, entry.getValue()));
                        break;
                    case "TIN":
                        Assert.assertTrue(sendKeys("TIN textbox", this.elements.tin, entry.getValue()));
                        break;
                    case "NPI":
                        Assert.assertTrue(sendKeys("NPI textbox", this.elements.npi, entry.getValue()));
                        break;
                    case "ZIP":
                        Assert.assertTrue(sendKeys("ZIP textbox", this.elements.zip, entry.getValue()));
                        break;
                    case "CITY":
                        sendKeys("CITY textbox", this.elements.city, entry.getValue());
                        break;
                    case "PROVIDERFIRSTNAME":
                        sendKeys("PROVIDERFIRSTNAME textbox", this.elements.providerfirstname, entry.getValue());
                        break;
                    case "PROVIDERLASTNAME":
                        sendKeys("PROVIDERLASTNAME textbox", this.elements.providerlastname, entry.getValue());
                        break;
                    case "STATE":
                        sendKeys("STATE textbox", this.elements.state, entry.getValue());
                        break;

                }
            }
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static class PageElements extends AbstractPageElements {

        @FindBy(id = "xri-Request.MPIN-UTQField_1")
        private WebElement mpin;

        @FindBy(xpath = "//span[@id='UTQField_2']/input")
        private WebElement tin;

        @FindBy(xpath = "//span[@id='UTQField_3']/input")
        private WebElement providerfirstname;

        @FindBy(xpath = "//span[@id='UTQField_4']/input")
        private WebElement providerlastname;

        @FindBy(xpath = "//span[@id='UTQField_5']/input")
        private WebElement city;

        @FindBy(xpath = "//span[@id='UTQField_6']/input")
        private WebElement state;

        @FindBy(xpath = "//span[@id='UTQField_7']/input")
        private WebElement zip;

        @FindBy(xpath = "//span[@id='UTQField_8']/input")
        private WebElement npi;

        @FindBy(xpath = "//span[@id='UTQField_3']/input")
        private List<WebElement> providerfirstnam;

        @FindBy(xpath = "//h1[contains(@class,'title-bar__page-name')]")
        private WebElement heading;

        PageElements(SearchContext context) {
            super(context);
        }
    }

}
