package ui_test.page.exari.contract.interview;

import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.interview.flow.Flow;
import ui_test.page.exari.contract.interview.flow.FlowContract;
import ui_test.page.exari.contract.interview.flow.FlowItem;

public class InterviewManager {
    private static final Logger log = LoggerFactory.getLogger(InterviewManager.class);


    private WebDriver driver;

    private FlowContract flowContract;

    /*
    CONSTRUCTOR
     */

    public InterviewManager(WebDriver driver, FlowContract flowContract) {
        this.driver = driver;
        this.flowContract = flowContract;
    }

    /*
    CLASS METHODS
     */

    public boolean startFlow() {
        boolean test = true;
        boolean isInterview = true;

        String previousTopic = "";
        int counter = 0;

        //While within interview wizard
        while (isInterview) {
            InterviewPage page = new InterviewPage(driver);
            isInterview = page.confirmCurrentPage();

            //Use topic to load up flow
            log.info("current topic: {}", page.getTopicText());
            Flow flow = flowContract.getFlowMap().get(page.getTopicText());

            //If flow exists for page, perform it
            if (flow != null) {
                //Load interview questions
                InterviewMap iMap = page.getInterviewMap();

                //Handle all questions on page, using flow
                for (String question : iMap.keySet()) {
                    InterviewItem interviewItem = iMap.get(question);
                    FlowItem flowItem = flow.getQuestions().get(question);
                    //Perform flow item on corresponding interview item
                    test &= interviewItem.performFlow(flowItem) >= 0;
                }

                assert page.clickNext();
            } else {
                log.error("missing flow for topic \"{}\"", page.getTopicText());
                return false;
            }

            if (previousTopic.equals(page.getTopicText())) {
                counter++;
                log.warn("topic {} has been repeated {} times", previousTopic, counter);
            } else {
                counter = 0;
                previousTopic = page.getTopicText();
            }

            if (counter > 6) {
                log.error("same topic repeated too many times");
                return false;
            }
        }

        return test;
    }

    /*
    HELPER METHODS
     */

    private boolean doNextItem(InterviewPage page) {

        return false;
    }

    private boolean searchPES(InterviewPage page) {
        boolean test = true;

        return test;
    }
}
