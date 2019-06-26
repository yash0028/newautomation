package exari_test.eif.interview;

import exari_test.eif.flow.ActionFlow;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;
import java.util.Optional;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class InterviewAction implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(InterviewAction.class);


    private WebDriver driver;
    private PageElements pageElements;
    private InterviewElements interviewElements;

    /*
    CONSTRUCTOR
     */

    public InterviewAction(WebDriver driver, WebElement interviewBox) {
        this.driver = driver;
        this.pageElements = new PageElements(interviewBox);
        this.interviewElements = new InterviewElements(interviewBox);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(pageElements.labelQuestion) && isVisible(pageElements.blockAnswer);
    }

    @Override
    public WebDriver getDriver() {
        return this.driver;
    }

    /*
    PAGE ACTION METHOD
     */

    public int performFlow(ActionFlow actionFlow) {
        if (actionFlow == null || !actionFlow.check4Match(this.getQuestion())) {
            log.trace(" missing flow item \"{}\"", this.getQuestion());
            return 0;
        }

        log.info("current question: {}", this.getQuestion());
        log.info("flow item: {}", actionFlow.toString());

        return enterAnswer(actionFlow.getAction(), actionFlow.getAnswers()) ? 1 : -1;
    }

    public int performFlow(Optional<ActionFlow> optionalFlowItem) {
        //Do flow if present, else return 0
        log.trace("{}", optionalFlowItem);
        return performFlow(optionalFlowItem.orElse(null));
    }

    /*
    CLASS METHODS
     */

    public String getQuestion() {
        String q = pageElements.labelQuestion.getText();
        return q.contains(":") ? q.substring(0, q.indexOf(":")) : q;
    }

    public WebElement getBlockAnswer() {
        return pageElements.blockAnswer;
    }

    /*
    HELPER METHODS
     */

    private boolean enterAnswer(String action, List<String> answers) {
        if (action.equalsIgnoreCase("TEXT-BASIC")) {
            return sendKeys("text input", interviewElements.input_textbox, answers.get(0));
        }

        if (action.equalsIgnoreCase("TEXT-DATE")) {
            return sendKeys("date input", interviewElements.input_textbox, answers.get(0));
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

        if (action.equalsIgnoreCase("CHECKBOX-INDEX/RADIO-INDEX")) {
            return genericCheckBoxAndRadioIndexElement(answers);
        }

        if (action.equalsIgnoreCase("VERIFY-TEXT")) {
            return verify_label(answers);
        }

        return false;
    }

    private boolean genericCheckBoxAndRadioIndexElement(List<String> answers) {
        if (!(interviewElements.radio_indexes.size() == 0)) {
            return radio_index(answers);
        } else if (!(interviewElements.checkbox_indexes.size() == 0)) {
            return checkbox_index(answers);
        } else {
            log.error("found no radio or checkbox elements");
            return false;
        }
    }

    private boolean radio_index(List<String> answers) {
        int index = Integer.valueOf(answers.get(0));

        //Check for extra answer
        if (answers.size() > 1) {
            //click only if already unchecked
            if (answers.get(1).equalsIgnoreCase("select")
                    && !interviewElements.radio_indexes.get(index).isSelected()) {
                return click("radio input " + index, interviewElements.radio_indexes.get(index));
            }

            //click only if already checked
            if (answers.get(1).equalsIgnoreCase("unselect")
                    && interviewElements.radio_indexes.get(index).isSelected()) {
                return click("radio input " + index, interviewElements.radio_indexes.get(index));
            }
        }

        //just click if no other valid answer
        return click("radio input", interviewElements.radio_indexes.get(index));
    }

    private boolean radio_id(List<String> answers) {
        String id = answers.get(0);
        Optional<WebElement> element = interviewElements.radio_indexes.stream().filter(e -> e.getAttribute("value").contains(id)).findFirst();
        //Click if present, else send false
        return element.filter(webElement -> click("radio id " + id, webElement)).isPresent();

    }

    private boolean radio_label(List<String> answers) {
        String answer = answers.get(0);
        Optional<WebElement> element = interviewElements.radio_labels.stream().filter(e -> e.getText().contains(answer)).findFirst();
        //Click if present, else send false
        return element.filter(webElement -> click("radio label" + answer, webElement)).isPresent();
    }

    private boolean checkbox_index(List<String> answers) {
        boolean test = true;

        //Check for empty
        if (answers.isEmpty()) {
            return true;
        }

        //Check for Check All or None answer
        if (answers.get(0).equalsIgnoreCase("All/None")) {
            if ((interviewElements.checkbox_indexes.size() == 0)) {
                return true;
            } else {
                for (WebElement checkbox : interviewElements.checkbox_indexes) {
                    if (!checkbox.isSelected()) {
                        test &= click("checkbox", checkbox);
                    }
                }
                return test;
            }
        }

        //Check for Check All answer
        if (answers.get(0).equalsIgnoreCase("all")) {
            //Select All Checkboxes
            for (WebElement checkbox : interviewElements.checkbox_indexes) {
                if (!checkbox.isSelected()) {
                    test &= click("checkbox", checkbox);
                }
            }
            return test;
        }

        //Check for Check None answer
        if (answers.get(0).equalsIgnoreCase("none")) {
            //Unselect all Checkboxes
            for (WebElement checkbox : interviewElements.checkbox_indexes) {
                if (checkbox.isSelected()) {
                    test &= click("checkbox", checkbox);
                }
            }
            return test;
        }

        //Handle all other answers
        List<Integer> indexes = answers.stream().map(Integer::valueOf).collect(Collectors.toList());
        for (Integer index : indexes) {
            WebElement checkbox = interviewElements.checkbox_indexes.get(index);
            if (!checkbox.isSelected()) {
                test &= click("checkbox", checkbox);
            } else {
                log.info(index + "th Checkbox is already selected");
            }
        }

        return test;
    }

    private boolean text_dropdown(List<String> answers) {
        //Open dropdown search
        click("dropdown open", interviewElements.dropdown_open);
        pause(1);

        //Enter search term
        sendKeys("dropdown textbox", interviewElements.dropdown_textbox, answers.get(0));
        pause(1);

        //Click index option
        int index = Integer.valueOf(answers.get(1));
        try {
            return click("dropdown option", interviewElements.dropdown_selection.get(index));
        } catch (IndexOutOfBoundsException e) {
            return false;
        }
    }

    private boolean text_autofill(List<String> answers) {
        //Open autofill search
        click("autofill open", interviewElements.dropdown_textbox);
        pause(1);

        //Enter search term
        sendKeys("autofill textbox", interviewElements.dropdown_textbox, answers.get(0));
        pause(1);

        //Click index option
        int index = Integer.valueOf(answers.get(1));
        return click("autofill option", interviewElements.dropdown_selection.get(index));
    }

    /**
     * Check that the label matches the answers
     *
     * @param answers an array of strings. First element is the text to find, second element is how to match
     * @return true if the label matched
     */
    private boolean verify_label(List<String> answers) {

        log.trace("trying to verify {}", answers.toString());

        switch (answers.size()) {
            case 1:
                return answers.get(0) != null &&
                        verify_label_1(answers);
            case 2:
                return answers.get(0) != null &&
                        answers.get(1) != null &&
                        verify_label_2(answers);
            case 3:
                return answers.get(0) != null &&
                        answers.get(1) != null &&
                        answers.get(2) != null &&
                        verify_label_3(answers);
            default:
                return false;
        }
    }

    public boolean verify_label_1(List<String> answers) {
        highlight(interviewElements.label_text);
        return interviewElements.label_text.getText().equals(answers.get(0));
    }

    public boolean verify_label_2(List<String> answers) {
        highlight(interviewElements.label_text);
        String text = interviewElements.label_text.getText();

        //Use second value to determine method of verifying against first value
        switch (answers.get(1)) {
            case "contains":
            case "contain":
                return text.contains(answers.get(0));
            case "regex-contains":
            case "regex-contain":
            case "contains-regex":
            case "contain-regex":
                return Pattern.compile(answers.get(0)).matcher(text).find();
            case "regex-matches":
            case "regex-match":
            case "matches-regex":
            case "match-regex":
            case "regex":
                return Pattern.compile(answers.get(0)).matcher(text).matches();
            case "equals-ignore-case":
            case "ignore-case":
                return text.equalsIgnoreCase(answers.get(0));
            case "equals":
            default:
                return text.equals(answers.get(0));
        }
    }

    public boolean verify_label_3(List<String> answers) {
        //Use second value to get text to match
        WebElement element = interviewElements.labels_text.get(Integer.parseInt(answers.get(1)));
        highlight(element);
        String text = element.getText();

        //Use third value to determine method of verifying against first value
        switch (answers.get(2)) {
            case "contains":
            case "contain":
                return text.contains(answers.get(0));
            case "regex-contains":
            case "regex-contain":
            case "contains-regex":
            case "contain-regex":
                return Pattern.compile(answers.get(0)).matcher(text).find();
            case "regex-matches":
            case "regex-match":
            case "matches-regex":
            case "match-regex":
            case "regex":
                return Pattern.compile(answers.get(0)).matcher(text).matches();
            case "equals-ignore-case":
            case "ignore-case":
                return text.equalsIgnoreCase(answers.get(0));
            case "equals":
            default:
                return text.equals(answers.get(0));
        }
    }

    /*
    ELEMENT CLASS
     */

    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = ".//p[@class='Question']/label")
        private WebElement labelQuestion;

        @FindBy(xpath = ".//div[contains(@class,'Answer')]")
        private WebElement blockAnswer;

        PageElements(SearchContext context) {
            super(context);
        }
    }

    private class InterviewElements extends AbstractPageElements {

        @FindBy(xpath = ".//input")
        public WebElement input_textbox;

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

        @FindBy(xpath = ".//lablel | .//p")
        public WebElement label_text;

        @FindBy(xpath = ".//lablel | .//p")
        public List<WebElement> labels_text;


        InterviewElements(SearchContext context) {
            super(context);
        }
    }

}
