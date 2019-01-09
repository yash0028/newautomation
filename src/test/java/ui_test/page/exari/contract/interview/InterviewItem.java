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
import java.util.Optional;
import java.util.stream.Collectors;

public class InterviewItem implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(InterviewItem.class);


    private WebDriver driver;
    private InterviewElements elements;

    /*
    LOCATORS
     */

    @FindBy(xpath = ".//p[@class='Question']/label")
    private WebElement labelQuestion;

    @FindBy(xpath = ".//div[contains(@class,'Answer')]")
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
        String q = labelQuestion.getText();
        return q.contains(":") ? q.substring(0, q.indexOf(":")) : q;
    }

    public WebElement getBlockAnswer() {
        return this.blockAnswer;
    }

    public int performFlow(FlowItem flowItem) {
        if (flowItem == null || !flowItem.check4Match(this.getQuestion())) {
            log.trace(" missing flow item \"{}\"", this.getQuestion());
            return 0;
        }

        log.info("current question: {}", this.getQuestion());
        log.info("flow item: {}", flowItem.toString());

        return enterAnswer(flowItem.getAction(), flowItem.getAnswers()) ? 1 : -1;
    }

    public int performFlow(Optional<FlowItem> optionalFlowItem) {
        //Do flow if present, else return 0
        log.trace("{}", optionalFlowItem);
        return performFlow(optionalFlowItem.orElse(null));
    }

    /*
    HELPER METHODS
     */

    private boolean enterAnswer(String action, List<String> answers) {
        if (action.equalsIgnoreCase("TEXT-BASIC")) {
            return sendKeys("text input", elements.textbox_basic, answers.get(0));
        }

        if (action.equalsIgnoreCase("TEXT-DATE")) {
            return sendKeys("date input", elements.textbox_basic, answers.get(0));
        }

        if (action.equalsIgnoreCase("RADIO-INDEX")) {
            return radio_index(answers);
        }

        if (action.equalsIgnoreCase("RADIO-ID")) {
            return radio_id(answers);
        }

        if (action.equalsIgnoreCase("RADIO-LABEL")) {
            return radio_label(answers);
        }

        if (action.equalsIgnoreCase("CHECKBOX-INDEX")) {
            return checkbox_index(answers);
        }

        if (action.equalsIgnoreCase("TEXT-DROPDOWN")) {
            return text_dropdown(answers);
        }

        if (action.equalsIgnoreCase("TEXT-AUTOFILL")) {
            return text_autofill(answers);
        }

        return false;
    }

    private boolean radio_index(List<String> answers) {
        int index = Integer.valueOf(answers.get(0));

        //Check for extra answer
        if (answers.size() > 1) {
            //click only if already unchecked
            if (answers.get(1).equalsIgnoreCase("select")
                    && !elements.radio_indexes.get(index).isSelected()) {
                return click("radio input", elements.radio_indexes.get(index));
            }

            //click only if already checked
            if (answers.get(1).equalsIgnoreCase("unselect")
                    && elements.radio_indexes.get(index).isSelected()) {
                return click("radio input", elements.radio_indexes.get(index));
            }
        }

        //just click if no other valid answer
        return click("radio input", elements.radio_indexes.get(index));
    }

    private boolean radio_id(List<String> answers) {
        String id = answers.get(0);
        Optional<WebElement> element = elements.radio_indexes.stream().filter(e -> e.getAttribute("value").contains(id)).findFirst();
        //Click if present, else send false
        return element.filter(webElement -> click("radio id", webElement)).isPresent();

    }

    private boolean radio_label(List<String> answers) {
        String answer = answers.get(0);
        Optional<WebElement> element = elements.radio_labels.stream().filter(e -> e.getText().contains(answer)).findFirst();
        //Click if present, else send false
        return element.filter(webElement -> click("radio label", webElement)).isPresent();
    }

    private boolean checkbox_index(List<String> answers) {
        boolean test = true;

        //Check for empty
        if (answers.isEmpty()) {
            return true;
        }

        //Check for Check All answer
        if (answers.get(0).equalsIgnoreCase("all")) {
            //Select All Checkboxes
            for (WebElement checkbox : elements.checkbox_indexes) {
                if (!checkbox.isSelected()) {
                    test &= click("checkbox", checkbox);
                }
            }
            return test;
        }

        //Check for Check None answer
        if (answers.get(0).equalsIgnoreCase("none")) {
            //Unselect all Checkboxes
            for (WebElement checkbox : elements.checkbox_indexes) {
                if (checkbox.isSelected()) {
                    test &= click("checkbox", checkbox);
                }
            }
            return test;
        }

        //Handle all other answers
        List<Integer> indexes = answers.stream().map(Integer::valueOf).collect(Collectors.toList());
        for (Integer index : indexes) {
            test &= click("checkbox", elements.checkbox_indexes.get(index));
        }

        return test;
    }

    private boolean text_dropdown(List<String> answers) {
        //Open dropdown search
        click("dropdown open", elements.dropdown_open);
        pause(1);

        //Enter search term
        sendKeys("dropdown textbox", elements.dropdown_textbox, answers.get(0));
        pause(1);

        //Click index option
        int index = Integer.valueOf(answers.get(1));
        try {
            return click("dropdown option", elements.dropdown_selection.get(index));
        } catch (IndexOutOfBoundsException e) {
            return false;
        }
    }

    private boolean text_autofill(List<String> answers) {
        //Open autofill search
        click("autofill open", elements.dropdown_textbox);
        pause(1);

        //Enter search term
        sendKeys("autofill textbox", elements.dropdown_textbox, answers.get(0));
        pause(1);

        //Click index option
        int index = Integer.valueOf(answers.get(1));
        return click("autofill option", elements.dropdown_selection.get(index));
    }

    /*
    UTILITY CLASS
     */

    private class InterviewElements {

        @FindBy(xpath = ".//input")
        public WebElement textbox_basic;

        @FindBy(xpath = ".//input[@type='radio']")
        public List<WebElement> radio_indexes;

        @FindBy(xpath = ".//input[@type='radio']/following-sibling::label")
        public List<WebElement> radio_labels;

        @FindBy(xpath = ".//input[@type='checkbox']")
        public List<WebElement> checkbox_indexes;

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
