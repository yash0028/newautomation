package exari_test.eif.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.*;

public class TopicFlowMap extends HashMap<String, TopicFlow> {
    private static final Logger log = LoggerFactory.getLogger(TopicFlowMap.class);

    /*
    CONSTRUCTOR
     */

    public TopicFlowMap(TopicFlow[] topicFlows) {
        merge(Arrays.asList(topicFlows));
    }

    public TopicFlowMap(List<TopicFlow> topicFlows) {
        merge(topicFlows);
    }

    /*
    CLASS METHODS
     */

    public TopicFlow[] getTopicFlowArray() {
        return (TopicFlow[]) this.values().toArray();
    }

    public Collection<TopicFlow> getTopicFlowCollection() {
        return this.values();
    }

    public void merge(Collection<TopicFlow> topicFlows) {
        for (TopicFlow f : topicFlows) {
            boolean needsMerge = this.containsKey(f.getTopic());
            if (needsMerge) {
                TopicFlow oldTopicFlow = this.get(f.getTopic());
//                log.info("duplicate \"{}\" topics found, automatically merging {} + {} questions.", oldTopicFlow.getTopic(), oldTopicFlow.getQuestions().size(), f.getQuestions().size());
                oldTopicFlow.addQuestions(f.getQuestions());
                log.info("duplicate \"{}\" topic found. now contains {} questions::{}", oldTopicFlow.getTopic(), oldTopicFlow.getQuestions().size(), oldTopicFlow.getQuestions().keySet().toString());
            } else {
                this.put(f.getTopic(), f);
            }
        }
    }

    public TopicFlowMap deepCopy() {
        List<TopicFlow> copyList = new ArrayList<>();
        for (TopicFlow flow : this.values()) {
            copyList.add(flow.deepCopy());
        }
        return new TopicFlowMap(copyList);
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();

        builder.append("TopicFlowMap").append("\n");

        for (Entry<String, TopicFlow> entry : this.entrySet()) {
            builder.append(entry.getKey()).append("::").append(entry.getValue().getQuestions().size()).append("\n");
        }

        return builder.toString();
    }

    /*
        UTILITY CLASS
         */
    public static class Deserializer implements JsonDeserializer<TopicFlowMap> {
        @Override
        public TopicFlowMap deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            if (json.isJsonArray()) {
                Gson gson = new GsonBuilder()
                        .registerTypeAdapter(TopicFlow.class, new TopicFlow.Deserializer())
                        .create();
                TopicFlow[] topicFlows = gson.fromJson(json, TopicFlow[].class);
                return new TopicFlowMap(topicFlows);
            }

            Gson gson = new Gson();
            return gson.fromJson(json, TopicFlowMap.class);

        }
    }
}
