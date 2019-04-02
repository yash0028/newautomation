package rest_api_test.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import general_test.util.ISharedValueReader;
import io.restassured.RestAssured;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.datastructure.gson.transaction.TransactionStatus;
import rest_api_test.util.datastructure.list.TransactionDetails;

public abstract class AbstractRestApi implements ISharedValueReader {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    protected final Gson gson;
    protected boolean useDev = getSharedInteger("env.active").orElse(0) == 0;

    /*
    CONSTRUCTOR
    */

    public AbstractRestApi() {
        RestAssured.useRelaxedHTTPSValidation();
        gson = new GsonBuilder()
                .registerTypeAdapter(TransactionStatus.class, new TransactionStatus.Deserializer())
                .registerTypeAdapter(TransactionDetails.class, new TransactionDetails.Deserializer())
                .create();
    }

    /*
    ABSTRACT METHODS
     */

    protected abstract String getEndpoint();
    
    /*
    CLASS METHODS
    */

    public void useDevEnv() {
        this.useDev = true;
    }

    public void useTestEnv() {
        this.useDev = false;
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
