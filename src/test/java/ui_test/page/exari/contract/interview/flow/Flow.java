package ui_test.page.exari.contract.interview.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class Flow {
    private static final Logger log = LoggerFactory.getLogger(Flow.class);


    private String topic;

    private Map<String, FlowItem> questions;

    public Flow(String topic, Map<String, FlowItem> questions) {
        this.topic = topic;
        this.questions = questions;
    }

    /*
    CLASS METHODS
     */

    public String getTopic() {
        return topic;
    }

    public Map<String, FlowItem> getQuestions() {
        return questions;
    }

    public FlowItem lookupQuestion(String questionText) {

        // do basic match
        if (questions.containsKey(questionText)) {
            return questions.get(questionText);
        }

        for (FlowItem flowItem : questions.values()) {
            if (flowItem.check4Match(questionText)) {
                return flowItem;
            }
        }

        return null;
    }

    public void addQuestions(Map<String, FlowItem> questionsToAdd) {
        for (String key : questionsToAdd.keySet()) {
            if (questions.containsKey(key) && questions.get(key).isNoOverride()) {
                log.error("cannot override key::{}");
            } else {
                questions.put(key, questionsToAdd.get(key));
            }
        }
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Flow::").append(topic).append("\n");
        for (String q : getQuestions().keySet()) {
            builder.append("Q::").append(q).append("\n");
        }

        return builder.toString();
    }

    /*
    UTILITY CLASS
     */
    public static class Deserializer implements JsonDeserializer<Flow> {
        @Override
        public Flow deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            JsonObject jsonObject = json.getAsJsonObject();
            JsonArray questions = jsonObject.get("questions").getAsJsonArray();
            Gson gson = new Gson();

            String topic = jsonObject.get("topic").getAsString();
            Map<String, FlowItem> itemMap = new HashMap<>();

            for (JsonElement jsonElement : questions) {
                FlowItem flowItem = gson.fromJson(jsonElement, FlowItem.class);
                itemMap.put(flowItem.getQuestion(), flowItem);
            }

            return new Flow(topic, itemMap);
        }
    }


}
