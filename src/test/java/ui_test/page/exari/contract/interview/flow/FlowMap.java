package ui_test.page.exari.contract.interview.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

public class FlowMap extends HashMap<String, Flow> {
    private static final Logger log = LoggerFactory.getLogger(FlowMap.class);

    /*
    CONSTRUCTOR
     */

    public FlowMap(Flow[] flows) {
        merge(Arrays.asList(flows));
    }

    public FlowMap(List<Flow> flows) {
        merge(flows);
    }

    /*
    CLASS METHODS
     */

    public Flow[] getFlowArray() {
        return (Flow[]) this.values().toArray();
    }

    public Collection<Flow> getFlowCollection() {
        return this.values();
    }

    public void merge(Collection<Flow> flows) {
        for (Flow f : flows) {
            boolean needsMerge = this.containsKey(f.getTopic());
            if (needsMerge) {
                Flow oldFlow = this.get(f.getTopic());
//                log.info("duplicate \"{}\" topics found, automatically merging {} + {} questions.", oldFlow.getTopic(), oldFlow.getQuestions().size(), f.getQuestions().size());
                oldFlow.addQuestions(f.getQuestions());
                log.info("duplicate \"{}\" topic found. now contains {} questions::{}", oldFlow.getTopic(), oldFlow.getQuestions().size(), oldFlow.getQuestions().keySet().toString());
            } else {
                this.put(f.getTopic(), f);
            }
        }
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();

        builder.append("FlowMap").append("\n");

        for (Entry<String, Flow> entry : this.entrySet()) {
            builder.append(entry.getKey()).append("::").append(entry.getValue().getQuestions().size()).append("\n");
        }

        return builder.toString();
    }

    /*
        UTILITY CLASS
         */
    public static class Deserializer implements JsonDeserializer<FlowMap> {
        @Override
        public FlowMap deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            if (json.isJsonArray()) {
                Gson gson = new GsonBuilder()
                        .registerTypeAdapter(Flow.class, new Flow.Deserializer())
                        .create();
                Flow[] flows = gson.fromJson(json, Flow[].class);
                return new FlowMap(flows);
            }

            Gson gson = new Gson();
            return gson.fromJson(json, FlowMap.class);

        }
    }
}
