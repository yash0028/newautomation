package rest_api_test.api.datastructure.gson.transaction;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TransactionContract extends TransactionUnit {
    private static final Logger log = LoggerFactory.getLogger(TransactionContract.class);

    protected String contractId;
    protected String contractName;
    protected String market;
    protected String paperType;
    protected String site;
    protected String state;
    protected String status;
    protected String userId;
    protected String workObjectReady;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    @Override
    public String toString() {
        return String.format("[%s][%s::%s] - %s", site, status, state, getTransactionId());
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static class Deserializer implements JsonDeserializer<TransactionContract> {

        @Override
        public TransactionContract deserialize(JsonElement json, java.lang.reflect.Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
            Gson gson = new Gson();
            return gson.fromJson(json, TransactionContract.class);
        }
    }


    public static final class Builder {
        private String transactionId;
        private String contractId;
        private String contractName;
        private String market;
        private String transactionType;
        private String paperType;
        private String site;
        private String state;
        private String status;
        private String userId;
        private String workObjectReady;

        public Builder withTransactionId(String transactionId) {
            this.transactionId = transactionId;
            return this;
        }

        public Builder withContractId(String contractId) {
            this.contractId = contractId;
            return this;
        }

        public Builder withContractName(String contractName) {
            this.contractName = contractName;
            return this;
        }

        public Builder withMarket(String market) {
            this.market = market;
            return this;
        }

        public Builder withTransactionType(String transactionType) {
            this.transactionType = transactionType;
            return this;
        }

        public Builder withPaperType(String paperType) {
            this.paperType = paperType;
            return this;
        }

        public Builder withSite(String site) {
            this.site = site;
            return this;
        }

        public Builder withState(String state) {
            this.state = state;
            return this;
        }

        public Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public Builder withUserId(String userId) {
            this.userId = userId;
            return this;
        }

        public Builder withWorkObjectReady(String workObjectReady) {
            this.workObjectReady = workObjectReady;
            return this;
        }

        public TransactionContract build() {
            TransactionContract transactionContract = new TransactionContract();
            transactionContract.contractId = this.contractId;
            transactionContract.paperType = this.paperType;
            transactionContract.transactionType = this.transactionType;
            transactionContract.site = this.site;
            transactionContract.contractName = this.contractName;
            transactionContract.market = this.market;
            transactionContract.state = this.state;
            transactionContract.userId = this.userId;
            transactionContract.transactionId = this.transactionId;
            transactionContract.status = this.status;
            transactionContract.workObjectReady = this.workObjectReady;
            return transactionContract;
        }
    }
}
