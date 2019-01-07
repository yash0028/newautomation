package ui_test.page.exari.contract.interview.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class FlowContract {
    private static final Logger log = LoggerFactory.getLogger(FlowContract.class);


    private String name;

    private List<String> authors;

    private FlowMap flowMap;

    /*
    CONSTRUCTOR
     */

    public FlowContract(String name, List<String> authors, FlowMap flowMap) {
        this.name = name;
        this.authors = authors;
        this.flowMap = flowMap;
    }

    /*
    CLASS METHODS
     */

    public String getName() {
        return name;
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
            String name = jsonObject.get("name").getAsString();
            String[] authors = gson.fromJson(jsonObject.get("authors"), String[].class);
            FlowMap flowMap = gson.fromJson(jsonObject.get("flows"), FlowMap.class);
            return new FlowContract(name, Arrays.asList(authors), flowMap);
        }
    }
}
