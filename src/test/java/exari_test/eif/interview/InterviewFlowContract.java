package exari_test.eif.interview;

import exari_test.eif.flow.ActionFlow;
import exari_test.eif.flow.ContractFlow;
import exari_test.eif.flow.TopicFlow;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPreviewPage;
import ui_test.page.exari.contract.WizardCompletePage;

public class InterviewFlowContract {
    private static final Logger log = LoggerFactory.getLogger(InterviewFlowContract.class);


    private WebDriver driver;

    private ContractFlow contractFlow;

    /*
    CONSTRUCTOR
     */

    public InterviewFlowContract(WebDriver driver, ContractFlow contractFlow) {
        this.driver = driver;
        this.contractFlow = contractFlow;
    }

    /*
    CLASS METHODS
     */

    public boolean startFlow() {
        boolean test = true;
        InterviewTopicPage page = new InterviewTopicPage(driver);

        String previousTopic = "";
        int counter = 0;

        //While within interview wizard
        while (page.confirmCurrentPage()) {

            //Check for infinite repeating pages
            if (previousTopic.equals(page.getTopicText())) {
                counter++;
                log.warn("topic {} has been repeated {} times", previousTopic, counter);
            } else {
                counter = 0;
                previousTopic = page.getTopicText();
            }

            //Kill after repeating 6 times
            if (counter > 6) {
                log.error("same topic repeated too many times");
                return false;
            }


            log.info("current topic: {}", page.getTopicText());
            log.trace("topic questions: {}", page.getInterviewMap().keySet());

            //Use topic to load up topicFlow from contract flow
            TopicFlow topicFlow = contractFlow.getTopicFlowMap().get(page.getTopicText());

            //If topicFlow exists for current topic, perform it
            if (topicFlow != null) {
                topicFlow.addUsed();

                //Load interview questions
                InterviewActionMap iMap = page.getInterviewMap();

                //Handle all questions on page, using topicFlow
                for (String question : iMap.keySet()) {
                    InterviewAction interviewAction = iMap.get(question);
                    ActionFlow actionFlow = topicFlow.lookupQuestion(question);

                    //Perform topicFlow item on corresponding interview item
                    test &= interviewAction.performFlow(actionFlow) >= 0;

                    //Perform post action
                    for (String postAction : actionFlow.getPostActions()) {

                    }
                }

                assert page.clickNext();
                assert page.waitForPageLoad();
            } else {
                log.error("missing topicFlow for topic \"{}\"", page.getTopicText());
                return false;
            }

            //Get next page
            page = new InterviewTopicPage(driver);
        }

        return true;
    }

    public boolean finishContract() {
        InterviewTopicPage page = new InterviewTopicPage(driver);

        ContractPreviewPage previewPage = new ContractPreviewPage(driver);
        assert previewPage.confirmCurrentPage();
        assert previewPage.clickNext();
        assert page.waitForPageLoad();

        WizardCompletePage completePage = new WizardCompletePage(driver);
        assert completePage.confirmCurrentPage();
        return completePage.clickWizardNext();
    }

    /*
    HELPER METHODS
     */

}
