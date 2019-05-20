package ui_test.page.exari.home.site.subpages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.Map;

public abstract class GenericSitePage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(GenericInputPage.class);

    /*
    PROTECTED VARIABLES
     */

    protected final WebDriver driver;
    private final PageElements elements;
    private String siteName;


    /*
    CONSTRUCTOR
     */

    public GenericSitePage(WebDriver driver) {
        this.driver = driver;
        elements = new PageElements(driver);
    }

    public void setSite(String site){
        this.siteName = site;
        log.info("site is "+this.siteName);
    }

    /*
    PAGE FACTORY METHODS
     */

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    PAGE ACTION METHODS
     */

    public boolean selectSmartTemplateFilterOptionSMGA() {
        click("smart template filter", elements.dropdownFilterSmartTemplate);
        click("filter scroll down", elements.buttonFilterScrollDown);

        //Scroll down for about 10 seconds
        pause(10);

        hover("safe click point", elements.safeClickPoint);
        return click("smart template smga option", elements.optionFilterSmartTemplateSMGA);
    }

    public boolean selectStatusFilterOptionActive() {
        click("status filter", elements.dropdownFilterStatus);
        hover("safe click point", elements.safeClickPoint);
        return click("status filter active option", elements.optionFilterStatusActive);
    }

    public boolean clickContractsTableFirstRow() {
        return click("contract in first row", elements.tableContractsFirstRow);
    }

    public boolean startContractAuthor() {
        click("contract start button", elements.buttonContractCreateStart);
        //Give it some extra time since loading pilot contract wrapper can take some time

        //will update this method later to select any wrapper in a generic way eliminating multiple web elements for wrappers
        switch (siteName){
            case "central uhn":
                return click("Central Region Wrapper", elements.buttonContractCreateCentralRegionWrapper);
            case "northeast uhn":
                return click("North East Region Wrapper", elements.buttonContractCreateNorthEastRegionWrapper);
            case "southeast uhn":
                return click("South East Region Wrapper", elements.buttonContractCreateSouthEastRegionWrapper);
            case "west uhn":
                return click("West Region Wrapper", elements.buttonContractCreateWestRegionWrapper);
            default:
                return click("pilot contract", elements.buttonContractCreatePilotContractWrapper);
        }
    }

    /*
    CLASS METHODS
     */

    /*
    PAGE METHODS
     */

    public ContractPage getContractPage() {
        return new ContractPage(driver);
    }

    /*
    HELPER METHOD
     */

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//img[@alt='Logo image']")
        protected WebElement safeClickPoint;

        @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[3]")
        protected WebElement dropdownFilterSmartTemplate;

        @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[6]")
        protected WebElement dropdownFilterStatus;

        @FindBy(xpath = "//table[contains(@id, 'yuievtautoid')]/tbody[@class='yui-dt-data']/tr[1 and contains(@class, 'yui-dt-first')]//h4/a")
        protected WebElement tableContractsFirstRow;

        @FindBy(xpath = "//td/span[text()='Click to start']")
        protected WebElement buttonContractCreateStart;

        /*
        LOCATORS - FILTER OPTIONS
         */

        @FindBy(xpath = "//div[contains(@class,'hd topscrollbar')]")
        protected WebElement buttonFilterScrollUp;

        @FindBy(xpath = "//div[contains(@class, 'ft bottomscrollbar')]")
        protected WebElement buttonFilterScrollDown;

        @FindBy(xpath = "//li[@index='61']/a[contains(text(),'SMGA')]")
        protected WebElement optionFilterSmartTemplateSMGA;

        @FindBy(xpath = "//li[@index='10']/a[contains(text(),'Active')]")
        protected WebElement optionFilterStatusActive;

        /*
        LOCATORS - CONTRACT TEMPLATES
         */

        @FindBy(xpath = "//h3[contains(text(),'Pilot Contract Wrapper')]//following-sibling::div/span[@title='Create New']/a")
        protected WebElement buttonContractCreatePilotContractWrapper;

        @FindBy(xpath = "//h3[contains(text(),'Southeast Region Wrapper')]//following-sibling::div/span[@title='Create New']/a")
        protected WebElement buttonContractCreateSouthEastRegionWrapper;

        @FindBy(xpath = "//h3[contains(text(),'West Region Wrapper')]//following-sibling::div/span[@title='Create New']/a")
        protected WebElement buttonContractCreateWestRegionWrapper;

        @FindBy(xpath = "//h3[contains(text(),'Northeast Region Wrapper')]//following-sibling::div/span[@title='Create New']/a")
        protected WebElement buttonContractCreateNorthEastRegionWrapper;

        @FindBy(xpath = "//h3[contains(text(),'Central Region Wrapper')]//following-sibling::div/span[@title='Create New']/a")
        protected WebElement buttonContractCreateCentralRegionWrapper;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
