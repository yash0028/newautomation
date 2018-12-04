package ui_test.page.exari.contract.interview;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.interview.flow.FlowItem;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class InterviewItem implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(InterviewItem.class);


    private WebDriver driver;
    private PageFactory pageFactory;
    private InterviewElements elements;

    /*
    LOCATORS
     */

    @FindBy(xpath = ".//p[@class='Question']/label")
    private WebElement labelQuestion;

    @FindBy(xpath = ".//div[contains(@class,'AnswerAboveAndBelow')]")
    private WebElement blockAnswer;

    /*
    CONSTRUCTOR
     */

    public InterviewItem(WebDriver driver, WebElement interviewBox) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(interviewBox, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
        this.elements = new InterviewElements(driver, blockAnswer);
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

    public WebElement getBlockAnswer() {
        return this.blockAnswer;
    }

    public int performFlow(FlowItem flowItem) {
        if (flowItem == null || !flowItem.getQuestion().equals(this.getQuestion())) {
            log.trace(" missing flow item \"{}\"", this.getQuestion());
            return 0;
        }

        log.info("current question: {}", this.getQuestion());
        log.info("flow item: {}", flowItem.toString());

        return enterAnswer(flowItem.getAction(), flowItem.getAnswers()) ? 1 : -1;
    }

    /*
    HELPER METHODS
     */

    private boolean enterAnswer(String action, List<String> answers) {
        if (action.equalsIgnoreCase("TEXT-BASIC")) {
//            WebElement textBox = getBlockAnswer().findElement(By.xpath(".//input"));
            return sendKeys("text input", elements.textbox_basic, answers.get(0));
        }

        if (action.equalsIgnoreCase("RADIO-INDEX")) {
//            WebElement textBox = getBlockAnswer().findElement(By.xpath(".//input[@type='radio' and contains(@value,'" + answers.get(0) + "')]"));
            int index = Integer.valueOf(answers.get(0));
            return click("radio input", elements.radio_indexes.get(index));
        }

        if (action.equalsIgnoreCase("TEXT-DROPDOWN")) {
//            WebElement dropdownArrow = getBlockAnswer().findElement(By.xpath(".//span[@class='select2-selection__arrow']"));
            click("dropdown open", elements.dropdown_open);
            sendKeys("dropdown textbox", elements.dropdown_textbox, answers.get(0));
            pause(1);
            int index = Integer.valueOf(answers.get(1));
            return click("dropdown option", elements.dropdown_selection.get(index));
        }

        return false;
    }

    /*
    UTILITY CLASS
     */

    private class InterviewElements {

        @FindBy(xpath = ".//input")
        public WebElement textbox_basic;

        @FindBy(xpath = ".//input[@type='radio']")
        public List<WebElement> radio_indexes;

        @FindBy(xpath = ".//span[@class='select2-selection__arrow']")
        public WebElement dropdown_open;

        @FindBy(xpath = "//input[@class='select2-search__field']")
        public WebElement dropdown_textbox;

        @FindBy(xpath = "//span[@class='select2-results']//li")
        public List<WebElement> dropdown_selection;

        private WebDriver driver;
        private SearchContext context;


        public InterviewElements(WebDriver driver, SearchContext context) {
            AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(context, IWebInteract.TIMEOUT);
            PageFactory.initElements(factory, this);
            this.driver = driver;
            this.context = context;
        }
    }

}
