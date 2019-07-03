package exari_test.eif.flow;

import com.google.gson.annotations.SerializedName;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class ActionFlow {
    private static final Logger log = LoggerFactory.getLogger(ActionFlow.class);


    private String question;

    private String matchMethod = "equal";

    private boolean noOverride = false;

    private String action;

    @SerializedName(value = "answers", alternate = {"answer"})
    private List<String> answers;

    @SerializedName(value = "postActions", alternate = {"postAction"})
    private List<String> postActions;

    private int used = 0;

    /*
    CONSTRUCTOR
     */

    public ActionFlow(String question, String action, List<String> answers, List<String> postActions) {
        this.question = question;
        this.action = action;
        this.answers = answers;
        this.postActions = postActions;
    }

    public ActionFlow(String question, String matchMethod, String action, List<String> answers, List<String> postActions) {
        this.question = question;
        this.matchMethod = matchMethod;
        this.action = action;
        this.answers = answers;
        this.postActions = postActions;
    }

    /*
    CLASS METHODS
     */

    public String getQuestion() {
        //remove everything after and including first :
        return question == null ? "" : question.contains(":") ? question.substring(0, question.indexOf(":")) : question;
    }

    public boolean isNoOverride() {
        return this.noOverride;
    }

    public int getUsed() {
        return used;
    }

    public void addUsed() {
        this.used++;
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

    public List<String> getPostActions() {
        if (this.postActions == null) {
            this.postActions = new ArrayList<>();
        }
        return this.postActions;
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
                log.warn("regex not implemented for ActionFlow");
            default:
                return false;
        }

    }

    public ActionFlow deepCopy() {
        List<String> copyAnswers = new ArrayList<>();
        for (String s : this.answers) {
            copyAnswers.add(s);
        }

        List<String> copyPostActions = new ArrayList<>();
        for (String s : this.postActions) {
            copyPostActions.add(s);
        }
        return new ActionFlow(this.question, this.action, copyAnswers, copyPostActions);
    }

    @Override
    public String toString() {
        return this.getQuestion() + "::" + this.getMatchMethod() + " -> " + this.action + " -> " + answers;
    }
}
