
package rest_api_test.api.contractsquery.model;

import com.google.gson.*;
import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.lang.reflect.Type;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class QueryResponse {

    @Expose
    private int responseCode;
    @Expose
    private String responseData;
    @Expose
    private ResponseMessage responseMessage;

    public QueryResponse() {
    }

    public QueryResponse(int responseCode, String responseData, ResponseMessage responseMessage) {
        this.responseCode = responseCode;
        this.responseData = responseData;
        this.responseMessage = responseMessage;
    }

    public int getResponseCode() {
        return responseCode;
    }

    public String getResponseData() {
        return responseData;
    }

    public ResponseMessage getResponseMessage() {
        return responseMessage;
    }

    @Override
    public String toString() {
        return responseCode + "::" + responseMessage;
    }

    public static class Builder {

        private int responseCode;
        private String responseData;
        private ResponseMessage responseMessage;

        public QueryResponse.Builder withResponseCode(int responseCode) {
            this.responseCode = responseCode;
            return this;
        }

        public QueryResponse.Builder withResponseData(String responseData) {
            this.responseData = responseData;
            return this;
        }

        public QueryResponse.Builder withResponseMessage(ResponseMessage responseMessage) {
            this.responseMessage = responseMessage;
            return this;
        }

        public QueryResponse build() {
            QueryResponse queryResponse = new QueryResponse();
            queryResponse.responseCode = responseCode;
            queryResponse.responseData = responseData;
            queryResponse.responseMessage = responseMessage;
            return queryResponse;
        }

    }

    public static class Deserializer implements JsonDeserializer<QueryResponse> {
        @Override
        public QueryResponse deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            QueryResponse.Builder builder = new Builder();

            if (!json.isJsonObject()) {
                return null;
            }

            JsonObject jsonObject = json.getAsJsonObject();

            if (jsonObject.has("responseCode") && jsonObject.get("responseCode").isJsonPrimitive()) {
                builder.withResponseCode(jsonObject.get("responseCode").getAsInt());
            }

            if (jsonObject.has("responseMessage") && jsonObject.get("responseMessage").isJsonPrimitive()) {
                JsonParser parser = new JsonParser();
                JsonElement j = parser.parse(jsonObject.get("responseMessage").getAsString());
                builder.withResponseMessage(ctx.deserialize(j, ResponseMessage.class));
            }

            if (jsonObject.has("responseData") && jsonObject.get("responseData").isJsonPrimitive()) {
                builder.withResponseData(jsonObject.get("responseData").getAsString());
            }


            return builder.build();
        }
    }

}
