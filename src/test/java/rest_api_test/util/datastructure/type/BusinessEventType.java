package rest_api_test.util.datastructure.type;

public enum BusinessEventType {
    CONTRACT_INSTALLED("ContractInstalled");

    public final String eventName;


    /*
    CONSTRUCTOR
    */

    BusinessEventType(String eventName) {
        this.eventName = eventName;
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
