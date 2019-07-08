package rest_api_test.api;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import general_test.util.ISharedValueReader;
import io.restassured.RestAssured;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.datastructure.gson.contractsquery.QueryResponse;
import rest_api_test.api.datastructure.gson.transaction.TransactionStatus;
import rest_api_test.api.datastructure.list.TransactionDetails;

public abstract class AbstractRestApi implements ISharedValueReader {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    protected final Gson gson;

    protected static boolean useDev = true;

    /*
    CONSTRUCTOR
    */

    public AbstractRestApi() {
        RestAssured.useRelaxedHTTPSValidation();
        gson = new GsonBuilder()
                .registerTypeAdapter(TransactionStatus.class, new TransactionStatus.Deserializer())
                .registerTypeAdapter(TransactionDetails.class, new TransactionDetails.Deserializer())
                .registerTypeAdapter(QueryResponse.class, new QueryResponse.Deserializer())
                .create();
    }

    /*
    ABSTRACT METHODS
     */

    protected abstract String getEndpoint();
    
    /*
    CLASS METHODS
    */
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
