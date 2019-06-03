package exari_test.eif.interview;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class InterviewTopicPage extends GenericInputPage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(InterviewTopicPage.class);

    private final PageElements elements;

    /*
    CONSTRUCTOR
     */

    public InterviewTopicPage(WebDriver driver) {
        super(driver);
        elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.topic) && super.confirmCurrentPage();
    }

    /*
    PAGE ACTION METHOD
     */

    @Override
    public boolean clickNext() {
        return super.clickNext() || (pauseSilent(15) && super.clickNext());
    }

    public void wait_PageLoad() {
        waitForPageLoad();
    }

    /*
    CLASS METHODS
     */

    public String getTopicText() {
        return elements.topic.getText();
    }

    public InterviewActionMap getInterviewMap() {
        InterviewActionMap interviewActionMap = new InterviewActionMap();

        for (WebElement item : elements.interviewElementList) {
            InterviewAction interviewAction = new InterviewAction(driver, item);
            interviewActionMap.put(interviewAction);
        }

        return interviewActionMap;
    }

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

        @FindBy(xpath = "//p[@class='topic']")
        private WebElement topic;

        @FindBy(xpath = "//div[contains(@class,'interview-item--')]")
        private List<WebElement> interviewElementList;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
