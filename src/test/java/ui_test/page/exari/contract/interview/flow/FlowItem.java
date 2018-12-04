package ui_test.page.exari.contract.interview.flow;

import com.google.gson.annotations.SerializedName;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

public class FlowItem {
    private static final Logger log = LoggerFactory.getLogger(FlowItem.class);


    private String question;

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

    /*
    CLASS METHODS
     */

    public String getQuestion() {
        return question;
    }

    public String getAction() {
        return action;
    }

    public List<String> getAnswers() {
        return answers;
    }

    @Override
    public String toString() {
        return this.question + " -> " + this.action + " -> " + answers;
    }
}
