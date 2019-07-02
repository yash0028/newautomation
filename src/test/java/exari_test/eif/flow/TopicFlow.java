package exari_test.eif.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.*;

public class TopicFlow {
    private static final Logger log = LoggerFactory.getLogger(TopicFlow.class);


    private String topic;

    private Map<String, ActionFlow> questions;

    private List<Integer> order;

    private int used = 0;

    public TopicFlow(String topic, Map<String, ActionFlow> questions, List<Integer> order) {
        this.topic = topic;
        this.questions = questions;
        this.order = order;
    }

    /*
    CLASS METHODS
     */

    public String getTopic() {
        return topic;
    }

    public int getUsed() {
        return used;
    }

    public void addUsed() {
        this.used++;
    }

    public Map<String, ActionFlow> getQuestions() {
        return questions;
    }

    public boolean validOrder(List<Integer> previousTopicOrder) {
        //Return true if there is no order to compare
        if (previousTopicOrder.size() == 0 || this.order.size() == 0) {
            return true;
        }

        //Check if this order is greater than last order
        return previousTopicOrder.stream().anyMatch(this::validOrder);
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
                log.error("cannot override key::{}", key);
            } else {
                questions.put(key, questionsToAdd.get(key));
            }
        }
    }

    public TopicFlow deepCopy() {
        Map<String, ActionFlow> copyMap = new HashMap<>();
        for (String key : this.questions.keySet()) {
            copyMap.put(key, this.questions.get(key).deepCopy());
        }

        return new TopicFlow(this.topic, this.questions, new ArrayList<>(this.order));
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
    HELPER METHODS
     */

    /**
     * Check if my order comes after last order and is within reasonable range
     *
     * @param previousOrder single int of the previous order
     * @return true if the previous order is less than at least one of this order and within 10
     */
    private boolean validOrder(int previousOrder) {
        return this.order.stream().mapToInt(i -> i - previousOrder).allMatch(i -> i <= 10 && i > 0);
    }

    /*
    UTILITY CLASS
     */
    public static class Deserializer implements JsonDeserializer<TopicFlow> {
        @Override
        public TopicFlow deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            JsonObject jsonObject = json.getAsJsonObject();
            JsonArray questionJson = jsonObject.get("questions").getAsJsonArray();


            Gson gson = new Gson();

            String topic = jsonObject.get("topic").getAsString();
            Map<String, ActionFlow> itemMap = new HashMap<>();
            ArrayList<Integer> order = new ArrayList<>();

            for (JsonElement jsonElement : questionJson) {
                ActionFlow actionFlow = gson.fromJson(jsonElement, ActionFlow.class);
                itemMap.put(actionFlow.getQuestion(), actionFlow);
            }

            if (jsonObject.has("order")) {
                JsonArray orderJson = jsonObject.get("order").getAsJsonArray();

                for (JsonElement jsonElement : orderJson) {
                    OptionalInt.of(jsonElement.getAsInt()).ifPresent(order::add);
                }
            }


            return new TopicFlow(topic, itemMap, order);
        }
    }


}
