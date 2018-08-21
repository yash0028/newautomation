import step_definitions.MarketTableSteps;
import step_definitions.TaxonomyTableSteps;
import step_definitions.TransactionSteps;

/**
 * Created by dtimaul on 8/8/18.
 */
public class Main {
    // The purpose of the class is used to isolate and run a single test.
    public static void main(String[] args) {
        MarketTableSteps marketSteps = new MarketTableSteps();


        try {
            marketSteps.setMarketNumber("1402");
            marketSteps.initiateQuery();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }

    }
}
