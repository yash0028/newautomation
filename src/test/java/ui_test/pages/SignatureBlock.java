package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class SignatureBlock extends GenericInputPage {
    private PageElements elements;

    public SignatureBlock(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void handleSignatureBlock(HashMap<String, String> hmap) {
         clickNext();
         waitForPageLoad();
    }


    //TODO recheck
    private static class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//input[contains(@name,'Notice_Address_Street')]")
        private WebElement streetAddress;

        @FindBy(xpath = "//input[contains(@name,'Notice_Address_City')]")
        private WebElement city;

        @FindBy(xpath = "//input[contains(@name,'Notice_Address_State')]")
        private WebElement state;

        @FindBy(xpath = "//input[contains(@name,'Notice_Address_Zip')]")
        private WebElement zipCode;

        @FindBy(xpath = "//input[contains(@name,'Notice_Address_Fax')]")
        private WebElement faxNumber;

        @FindBy(xpath = "//input[contains(@name,'Notice_Address_Email')]")
        private WebElement email;

        PageElements(SearchContext context) {
            super(context);
        }
    }

}
