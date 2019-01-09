package ui_test.page.exari.contract.interview.flow;

import com.google.gson.annotations.SerializedName;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

public class FlowItem {
    private static final Logger log = LoggerFactory.getLogger(FlowItem.class);


    private String question;

    private String matchMethod = "equal";

    private String action;

    @SerializedName(value = "answers", alternate = {"answer"})
    private List<String> answers;

    /*
    CONSTRUCTOR
     */

    public FlowItem(String question, String action, List<String> answers) {
        this.question = question;
        this.action = action;
        this.answers = answers;
    }

    public FlowItem(String question, String matchMethod, String action, List<String> answers) {
        this.question = question;
        this.matchMethod = matchMethod;
        this.action = action;
        this.answers = answers;
    }

    /*
    CLASS METHODS
     */

    public String getQuestion() {
        //remove everything after and including first :
        return question.contains(":") ? question.substring(0, question.indexOf(":")) : question;
    }

    public String getMatchMethod() {
        return matchMethod != null ? matchMethod : "equal";
    }

    public String getAction() {
        return action;
    }

    public List<String> getAnswers() {
        return answers;
    }

    public boolean check4Match(String questionText) {
//        log.trace("COMPARE '{}' <{}> '{}'", questionText, this.getMatchMethod(), this.getQuestion());
        switch (this.getMatchMethod().toLowerCase()) {
            case "start":
            case "startwith":
            case "starts":
            case "startswith":
//                return this.getQuestion().startsWith(questionText);
                return questionText.startsWith(this.getQuestion());
            case "end":
            case "endwith":
            case "ends":
            case "endswith":
//                return this.getQuestion().endsWith(questionText);
                return questionText.endsWith(this.getQuestion());
            case "contains":
            case "contain":
//                return this.getQuestion().contains(questionText);
                return questionText.contains(this.getQuestion());
            case "equals":
            case "equal":
                return this.getQuestion().equals(questionText);
            case "equal-ignore-case":
            case "equals-ignore-case":
            case "equalignorecase":
            case "equalsignorecase":
            case "equalic":
            case "equalsic":
                String a = this.getQuestion().toLowerCase();
                String b = questionText.toLowerCase();
                return a.equalsIgnoreCase(b);
            case "regex":
//                return this.getQuestion().matches(questionText);
                log.warn("regex not implemented for FlowItem");
            default:
                return false;
        }

    }

    @Override
    public String toString() {
        return this.getQuestion() + "::" + this.getMatchMethod() + " -> " + this.action + " -> " + answers;
    }
}
