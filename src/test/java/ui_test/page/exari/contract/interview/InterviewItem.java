package ui_test.page.exari.contract.interview;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class InterviewItem implements IFactoryPage, IWebInteract {

    private WebDriver driver;

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[@class='Question']/label/b")
    private WebElement labelQuestion;

    @FindBy(xpath = "//div[contains(@class,'AnswerAboveAndBelow')]")
    private WebElement blockAnswer;

    /*
    CONSTRUCTOR
     */

    public InterviewItem(WebDriver driver, WebElement interviewBox) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(interviewBox, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelQuestion) && isVisible(blockAnswer);
    }

    @Override
    public WebDriver getDriver() {
        return this.driver;
    }

    /*
    CLASS METHODS
     */

    public String getQuestion() {
        return labelQuestion.getText();
    }

}
