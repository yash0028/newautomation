package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

public class RegulatoryAppendixPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(RegulatoryAppendixPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(.,'Regulatory Appendices')]")
    private WebElement labelRegulatoryAppendices;

    @FindBy(xpath = "//input[@type='search']")
    private WebElement textBoxSearch;

    @FindBy(xpath = "//span[contains(@class,'select2-results')]/ul/li")
    private List<WebElement> dropdownOptions;

    /*
    CONSTRUCTOR
     */

    public RegulatoryAppendixPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelRegulatoryAppendices);
    }

    /*
    CLASS METHODS
     */

    public boolean selectRegulatory(String search, int index) {
        return cleanWriteTextBox("search input", textBoxSearch, search)
                && click("dropdown option " + index, dropdownOptions.get(index));
    }


}
