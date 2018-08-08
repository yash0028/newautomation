import step_definitions.TransactionSteps;

/**
 * Created by dtimaul on 8/8/18.
 */
public class Main {
    public static void main(String[] args) {
        TransactionSteps steps = new TransactionSteps();


        try {
            steps.aBusinessEventIsReceivedByTheEventGatewayThatRequiresAnUpdateToNDB();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }

    }
}
