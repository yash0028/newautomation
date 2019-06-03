package exari_test.eif.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class TopicFlow {
    private static final Logger log = LoggerFactory.getLogger(TopicFlow.class);


    private String topic;

    private Map<String, ActionFlow> questions;

    public TopicFlow(String topic, Map<String, ActionFlow> questions) {
        this.topic = topic;
        this.questions = questions;
    }

    /*
    CLASS METHODS
     */

    public String getTopic() {
        return topic;
    }

    public Map<String, ActionFlow> getQuestions() {
        return questions;
    }

    public ActionFlow lookupQuestion(String questionText) {

        // do basic match
        if (questions.containsKey(questionText)) {
            return questions.get(questionText);
        }

        for (ActionFlow actionFlow : questions.values()) {
            if (actionFlow.check4Match(questionText)) {
                return actionFlow;
            }
        }

        return null;
    }

    public void addQuestions(Map<String, ActionFlow> questionsToAdd) {
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
        builder.append("TopicFlow::").append(topic).append("\n");
        for (String q : getQuestions().keySet()) {
            builder.append("Q::").append(q).append("\n");
        }

        return builder.toString();
    }

    /*
    UTILITY CLASS
     */
    public static class Deserializer implements JsonDeserializer<TopicFlow> {
        @Override
        public TopicFlow deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            JsonObject jsonObject = json.getAsJsonObject();
            JsonArray questions = jsonObject.get("questions").getAsJsonArray();
            Gson gson = new Gson();

            String topic = jsonObject.get("topic").getAsString();
            Map<String, ActionFlow> itemMap = new HashMap<>();

            for (JsonElement jsonElement : questions) {
                ActionFlow actionFlow = gson.fromJson(jsonElement, ActionFlow.class);
                itemMap.put(actionFlow.getQuestion(), actionFlow);
            }

            return new TopicFlow(topic, itemMap);
        }
    }


}
