package ui_test.page.exari.contract.interview;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class InterviewPage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(InterviewPage.class);

    /*
    PROTECTED VARIABLES
     */

    protected final WebDriver driver;

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[@class='topic']")
    private WebElement topic;

    @FindBy(xpath = "//div[contains(@class,'interview-item--')]")
    private List<WebElement> interviewElementList;

    @FindBy(xpath = "//button[contains(text(),'next')]")
    private WebElement navigationNext;

    @FindBy(xpath = "//div/a[contains(text(),'back')]")
    private WebElement navigationBack;

    @FindBy(xpath = "//div/a[contains(text(),'quit')]")
    private WebElement navigationQuit;

    @FindBy(xpath = "//button[contains(text(),'save')]")
    private WebElement navigationSave;

    @FindBy(xpath = "//button[contains(text(),'ffwd')]")
    private WebElement navigationFastForward;

    /*
    CONSTRUCTOR
     */

    public InterviewPage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
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
        return isVisible(topic) && isVisible(navigationNext);
    }

    /*
    CLASS METHODS
     */

    public String getTopicText() {
        return topic.getText();
    }

    public boolean clickNext() {
//        return waitTillClickable(navigationNext) && click("next button", navigationNext);
        return click("next button", navigationNext)
                || (pauseSilent(15) && click("next button try 2", navigationNext));
    }

    public boolean clickBack() {
        return click("back button", navigationBack);
    }

    public boolean clickQuit() {
        return click("quit button", navigationQuit);
    }

    public boolean clickSave() {
        return click("save button", navigationSave);
    }

    public boolean clickFastForward() {
        return click("fast forward button", navigationFastForward);
    }

    public InterviewMap getInterviewMap() {
        InterviewMap interviewMap = new InterviewMap();

        for (WebElement item : interviewElementList) {
            InterviewItem interviewItem = new InterviewItem(driver, item);
            interviewMap.put(interviewItem.getQuestion(), interviewItem);
        }

        return interviewMap;
    }
}
