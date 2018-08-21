import step_definitions.TaxonomyTableSteps;
import step_definitions.TransactionSteps;

/**
 * Created by dtimaul on 8/8/18.
 */
public class Main {
    // The purpose of the class is used to isolate and run a single test.
    public static void main(String[] args) {
        TransactionSteps steps = new TransactionSteps();
        TaxonomyTableSteps taxonomySteps = new TaxonomyTableSteps();


        try {
            steps.aBusinessEventIsReceivedByTheEventGatewayThatRequiresAnUpdateToNDB();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }

        try {
            taxonomySteps.theUserProvidesTheValueReqValueForReqFieldAndNdbRecValueFor("22", "ndbSpecCD", "O", "ndbRec");
            //taxonomySteps.theUserProvidesTheOptionalValueOptionalValueForOptionalField("21", "ndbSpecCD");
            //taxonomySteps.theQueryResponseProvidesTheMostRecentRecordVersionAttributesData();
            //taxonomySteps.theResponseIncludesAllRecordsThatMatched();
            taxonomySteps.theQueryResponseReturnsAnError();


        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }

    }
}
