package ui_test.page.exari.contract.interview.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class FlowContract {
    private static final Logger log = LoggerFactory.getLogger(FlowContract.class);


    private String name;

    private List<String> authors;

    private String extendedFrom;

    private FlowMap flowMap;

    /*
    CONSTRUCTOR
     */

    public FlowContract(String name, String extendedFrom, List<String> authors, FlowMap flowMap) {
        this.name = name;
        this.extendedFrom = extendedFrom;
        this.authors = authors;
        this.flowMap = flowMap;
    }

    /*
    CLASS METHODS
     */

    public String getName() {
        return name;
    }

    public Optional<String> getExtendedFrom() {
        return Optional.ofNullable(extendedFrom);
    }

    public List<String> getAuthors() {
        return authors;
    }

    public FlowMap getFlowMap() {
        return flowMap;
    }

    public void substituteGherkinData(Map<String, String> params) {
        //Each <paramkey> of params needs to be found in the answers fields and subbed for param
        for (String paramKey : params.keySet()) {
            String paramSub = "<" + paramKey + ">";
            for (String flowKey : flowMap.keySet()) {
                Map<String, FlowItem> itemMap = flowMap.get(flowKey).getQuestions();
                for (String itemKey : itemMap.keySet()) {
                    List<String> list = itemMap.get(itemKey).getAnswers();
                    for (int i = 0; i < list.size(); i++) {
                        String answer = list.get(i);
                        //If answer contains <paramkey> replace <paramkey> with params value
                        if (answer.contains(paramSub)) {
                            String value = params.get(paramKey);
                            log.trace("sub gherkin {} for {}", value, paramSub);
                            list.set(i, answer.replace(paramSub, value));
                        }
                    }
                }
            }
        }
    }

    public void merge(FlowContract child) {
        //merge authors
//        for(String author : child.getAuthors()){
//            if(!this.authors.contains(author)){
//                this.authors.add(author);
//            }
//        }

        //merge flows
        this.flowMap.merge(child.getFlowMap().getFlowCollection());
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(name).append("\n");
        builder.append(String.join(", ", authors)).append("\n");
        builder.append(flowMap.toString());

        return builder.toString();
    }

    /*
    UTILITY CLASS
     */

    public static class Deserializer implements JsonDeserializer<FlowContract> {
        @Override
        public FlowContract deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            JsonObject jsonObject = json.getAsJsonObject();
            Gson gson = new GsonBuilder()
                    .registerTypeAdapter(FlowMap.class, new FlowMap.Deserializer())
                    .create();
            String name = getName(jsonObject);
            String extendedFrom = getExtendedFrom(jsonObject);
            String[] authors = getAuthors(gson, jsonObject);
            FlowMap flowMap = gson.fromJson(jsonObject.get("flows"), FlowMap.class);
            return new FlowContract(name, extendedFrom, Arrays.asList(authors), flowMap);
        }

        public String getName(JsonObject jsonObject) {
            JsonElement name = jsonObject.get("name");

            if (name.isJsonPrimitive()) {
                return name.getAsString();
            }

            log.error("bad name field");
            return "BAD NAME FIELD";
        }

        public String getExtendedFrom(JsonObject jsonObject) {

            if (!jsonObject.has("extendedFrom")) {
                return null;
            }

            JsonElement extendedFrom = jsonObject.get("extendedFrom");

            if (extendedFrom.isJsonPrimitive()) {
                return extendedFrom.getAsString();
            }

            return null;
        }

        public String[] getAuthors(Gson gson, JsonObject jsonObject) {
            JsonElement authors = jsonObject.get("authors");

            if (authors.isJsonArray()) {
                return gson.fromJson(authors, String[].class);
            }

            log.error("bad authors array");
            return new String[0];
        }
    }
}
