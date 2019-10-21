package ui_test.page.cmd.sum;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.navigation.CMDNavigationPanel;
import ui_test.page.cmd.navigation.ICMDNavigation;
import ui_test.page.cmd.transaction.action.ContractMasterOverrideTab;
import ui_test.page.cmd.transaction.info.CompletedTransactionPage;
import ui_test.page.cmd.transaction.info.ErrorsTransactionPage;
import ui_test.page.cmd.transaction.info.InProgressTransactionPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class SumDashboardPage implements IFactoryPage, IWebInteract, ICMDNavigation {
    private static final Logger log = LoggerFactory.getLogger(SumDashboardPage.class);

    private final WebDriver driver;
    private final PageElements elements;
    private final CMDNavigationPanel navigationPanel;

    /*
    CONSTRUCTOR
     */

    public SumDashboardPage(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
        this.navigationPanel = new CMDNavigationPanel(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {

        return isVisible(elements.cardCompleted);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CMD NAVIGATION
     */

    @Override
    public CMDNavigationPanel getNavigation() {
        return this.navigationPanel;
    }

    /*
    PAGE ACTION METHODS
     */

    public CompletedTransactionPage openCompletedTransactions() {
        click("completed transactions card", elements.cardCompleted);
        pause(5);

        return new CompletedTransactionPage(driver);
    }

    public InProgressTransactionPage openInProgressTransactions() {
        click("in progress card", elements.cardInProgress);
        pause(5);

        return new InProgressTransactionPage(driver);
    }

    public ContractMasterOverrideTab openActionRequiredTransactions() {
        click("action required card", elements.cardActionRequired);
        pause(5);

        return new ContractMasterOverrideTab(driver);
    }

    public ErrorsTransactionPage openErrorsTransactions() {
        click("errors card", elements.cardErrors);
        pause(5);

        return new ErrorsTransactionPage(driver);
    }

    public boolean runSearch(String searchString) {
        return sendKeys("search bar", elements.inputSearch) && click("search send", elements.buttonSearch);
    }

    /*
    CLASS METHODS
     */

    public Integer getCompletedCount() {
        try {
            return Integer.valueOf(elements.cardCompleted.getText());
        } catch (Exception e) {
            return -1;
        }
    }

    public Integer getInProgressCount() {
        try {
            return Integer.valueOf(elements.cardInProgress.getText());
        } catch (Exception e) {
            return -1;
        }
    }

    public Integer getActionRequiredCount() {
        try {
            return Integer.valueOf(elements.cardActionRequired.getText());
        } catch (Exception e) {
            return -1;
        }
    }

    public Integer getErrorsCount() {
        try {
            return Integer.valueOf(elements.cardErrors.getText());
        } catch (Exception e) {
            return -1;
        }
    }


    /*
    ELEMENT CLASS
     */

    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//mat-card/h3[contains(text(),\"Completed\")]/preceding-sibling::p/a[text()!='0']")
        public WebElement cardCompleted;

        @FindBy(xpath = "//mat-card/h3[contains(text(),\"In-Progress\")]/preceding-sibling::p/a[text()!='0']")
        public WebElement cardInProgress;

        @FindBy(xpath = "//mat-card/h3[contains(text(),\"Action Required\")]/preceding-sibling::p/a[text()!='0']")
        public WebElement cardActionRequired;

        @FindBy(xpath = "//mat-card/h3[contains(text(),\"Errors\")]/preceding-sibling::p/a[text()!='0']")
        public WebElement cardErrors;

        @FindBy(xpath = "//input")
        public WebElement inputSearch;

        @FindBy(xpath = "//button[contains(text(),'Search')]")
        public WebElement buttonSearch;

        PageElements(SearchContext context) {
            super(context);
        }
    }

}// End of class
