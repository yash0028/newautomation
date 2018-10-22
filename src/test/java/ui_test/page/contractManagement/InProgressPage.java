package ui_test.page.contractManagement;

import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by dtimaul on 10/1/18.
 */
public class InProgressPage extends GenericCMPage {
    private static Logger log = LoggerFactory.getLogger(InProgressPage.class);

    /*
    CONSTRUCTOR
     */

    /**
     * Creates an in progress page driver and its web elements.
     * @param driver Webdriver currently being used.
     */
    public InProgressPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    /**
     * Confirms that the current page is the in progress page by verifying the URL.
     * @return True if on the in progress page or false otherwise.
     */
    @Override
    public boolean confirmCurrentPage() {
        return driver.getCurrentUrl().matches("^.+in-progress$");
    }

}
