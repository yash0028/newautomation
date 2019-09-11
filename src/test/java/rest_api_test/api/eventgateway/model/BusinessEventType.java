package rest_api_test.api.eventgateway.model;

public enum BusinessEventType {
    CONTRACT_INSTALLED("ContractInstalled", "contract-installed");

    public final String eventName;
    public final String url;


    /*
    CONSTRUCTOR
    */

    BusinessEventType(String eventName, String url) {
        this.eventName = eventName;
        this.url = url;
    }

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
