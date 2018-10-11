package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MarketNumberInputPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(MarketNumberInputPage.class);

    /*
    LOCATORS - Provider Details
     */
    @FindBy(xpath = "//span[@class='select2-selection__arrow']")
    private WebElement dropdownArrowMarketNumber;

    @FindBy(xpath = "html/body/span[2]/span/span[1]/input")
    private WebElement dropdownTextBoxMarketNumber;

    @FindBy(xpath = "html/body/span[2]/span/span[1]/input/following::span[@class='select2-results']")
    private WebElement dropdownOptionMarketNumber;

    /*
    CONSTRUCTOR
     */

    public MarketNumberInputPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return false;
    }

    /*
    CLASS METHODS
     */

    public boolean selectMarketNumber(String partialMarketNumber) {
        click(dropdownArrowMarketNumber);
        sendKeys(dropdownTextBoxMarketNumber, partialMarketNumber);
        pause(1);
        return click(dropdownOptionMarketNumber);
    }
}
