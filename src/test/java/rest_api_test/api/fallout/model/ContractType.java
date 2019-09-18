package rest_api_test.api.fallout.model;

public enum ContractType {
    TYPE_1("TYPE_1_ERROR_CONTRACT_MASTER"),
    TYPE_2("TYPE_2_ERROR_DOWNSTREAM");

    public final String type;

    /*
    CONSTRUCTOR
    */

    ContractType(String type) {
        this.type = type;
    }

    /*
    CLASS METHODS
    */
    
    /*
    HELPER METHODS
    */
}
