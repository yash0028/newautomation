package ui_test.page.exari.contract.interview.flow;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.HashMap;

public class FlowMap extends HashMap<String, Flow> {
    private static final Logger log = LoggerFactory.getLogger(FlowMap.class);

    public FlowMap(Flow[] flows) {

        for (Flow f : flows) {
            boolean needsMerge = this.containsKey(f.getTopic());
            if (needsMerge) {
                Flow oldFlow = this.get(f.getTopic());
                oldFlow.addQuestions(f.getQuestions());

            } else {
                this.put(f.getTopic(), f);
            }
        }
    }

    /*
    UTILITY CLASS
     */
    public static class Deserializer implements JsonDeserializer<FlowMap> {
        @Override
        public FlowMap deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            Gson gson = new GsonBuilder()
                    .registerTypeAdapter(Flow.class, new Flow.Deserializer())
                    .create();
            Flow[] flows = gson.fromJson(json, Flow[].class);
            return new FlowMap(flows);
        }
    }
}
