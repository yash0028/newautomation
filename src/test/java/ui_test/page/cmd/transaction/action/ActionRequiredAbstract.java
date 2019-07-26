package ui_test.page.cmd.transaction.action;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class ActionRequiredAbstract implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ActionRequiredAbstract.class);

    protected final WebDriver driver;
    protected PageElements pageElements;


    /*
    CONSTRUCTOR
    */

    public ActionRequiredAbstract(WebDriver driver) {
        this.driver = driver;
        this.pageElements = new PageElements(driver);
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return true;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public boolean changePageSize(int pageSize) {
        log.error("TODO");
        return false;
    }

    public ContractMasterOverrideTab openTabContractMasterOverride() {
        click("contract master override tab", pageElements.tab_contractMasterOverride);

        return new ContractMasterOverrideTab(driver);
    }

    public DownstreamErrorTab openTabDownstreamErrorResolution() {
        click("downstream error resolution tab", pageElements.tab_downstreamErrorResolution);

        return new DownstreamErrorTab(driver);
    }

    public PCPReassignmentTab openTabPCPReassignment() {
        click("pcp reassignment tab", pageElements.tab_pcpReassignment);

        return new PCPReassignmentTab(driver);
    }

    public boolean clickToNextPage() {
        return click("next page", pageElements.button_nextPage);
    }

    public boolean clickToPreviousPage() {
        return click("previous page", pageElements.button_previousPage);
    }
    
    /*
    CLASS METHODS
    */

    public Integer getExpectedPageSize() {
        return Integer.valueOf(pageElements.dropdown_pageSize.getText().trim());
    }

    public Integer getFuzzyPageNumber() {
        String line;
        try {
            line = pageElements.label_range.getText();
        } catch (Exception e) {
            return -1;
        }

        Matcher m = Pattern.compile("(\\d+) - (\\d+) of (\\d+)").matcher(line.trim());

        Integer size, start, end, total;
        size = this.getExpectedPageSize();
        if (size == null) {
            return -1;
        }
        try {
            start = Integer.valueOf(m.group(0));
            end = Integer.valueOf(m.group(0));
            total = Integer.valueOf(m.group(0));
        } catch (Exception e) {
            return -1;
        }


        return end / size;
    }
    
    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */
    
    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//div[contains(text(),'Items per page')]/following-sibling::div")
        public WebElement label_pageSize;
        @FindBy(xpath = "//div[contains(text(),'Items per page')]/following-sibling::div")
        public WebElement dropdown_pageSize;
        @FindBy(xpath = "//div[contains(@class,'mat-paginator-range-label') and contains(text(),' of ')]")
        public WebElement label_range;
        @FindBy(xpath = "//button[contains(@ aria-label,'Next')]")
        public WebElement button_nextPage;
        @FindBy(xpath = "//button[contains(@ aria-label,'Previous')]")
        public WebElement button_previousPage;
        @FindBy(xpath = "//div[contains(@class,'mat-tab-labels')]/div//span[contains(text(),'Contract Master Override')]")
        private WebElement tab_contractMasterOverride;
        @FindBy(xpath = "//div[contains(@class,'mat-tab-labels')]/div//span[contains(text(),'Downstream Error Resolution')]")
        private WebElement tab_downstreamErrorResolution;
        @FindBy(xpath = "//div[contains(@class,'mat-tab-labels')]/div//span[contains(text(),'PCP Reassignment')]")
        private WebElement tab_pcpReassignment;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
