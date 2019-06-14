package exari_test.eif.flow;

import com.google.gson.*;
import exari_test.eif.data.EifReport;
import exari_test.eif.data.EifTestData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class ContractFlow {
    private static final Logger log = LoggerFactory.getLogger(ContractFlow.class);


    private String name;

    private String site;

    private List<String> authors;

    private String extendedFrom;

    private TopicFlowMap topicFlowMap;

    private EifReport report;

    /*
    CONSTRUCTOR
     */

    public ContractFlow(String name, String site, String extendedFrom, List<String> authors, TopicFlowMap topicFlowMap) {
        this.name = name;
        this.extendedFrom = extendedFrom;
        this.authors = authors;
        this.topicFlowMap = topicFlowMap;
    }

    public ContractFlow(ContractFlow flow) {
        this.name = flow.getName();
        this.extendedFrom = flow.getExtendedFrom().orElse("");
        this.authors = flow.getAuthors();
        this.topicFlowMap = flow.getTopicFlowMap().deepCopy();
    }

    /*
    CLASS METHODS
     */

    public void setName(String name) {
        this.name = name;
    }

    public void setTopicFlowMap(TopicFlowMap topicFlowMap) {
        this.topicFlowMap = topicFlowMap;
    }

    public Optional<String> getSite() {
        return Optional.ofNullable(site);
    }

    public String getName() {
        return name;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public Optional<String> getExtendedFrom() {
        return Optional.ofNullable(extendedFrom);
    }

    public List<String> getAuthors() {
        return authors;
    }

    public TopicFlowMap getTopicFlowMap() {
        return topicFlowMap;
    }

    public EifReport getReport() {
        return report;
    }

    public void connectEifTestData(EifTestData data) {
        if (data == null) return;

        if (!data.getCommonName().isEmpty()) {
            this.setName(data.getCommonName());
        }

        //Each <paramkey> of params needs to be found in the answers fields and subbed for param
        for (String paramKey : data.keySet()) {
            String paramSub = "<" + paramKey + ">";
            for (String flowKey : topicFlowMap.keySet()) {
                Map<String, ActionFlow> itemMap = topicFlowMap.get(flowKey).getQuestions();
                for (String itemKey : itemMap.keySet()) {
                    List<String> list = itemMap.get(itemKey).getAnswers();
                    for (int i = 0; i < list.size(); i++) {
                        String answer = list.get(i);
                        //If answer contains <paramkey> replace <paramkey> with params value
                        if (answer.contains(paramSub)) {
                            String value = data.get(paramKey);
                            log.trace("sub gherkin {} for {}", value, paramSub);
                            list.set(i, answer.replace(paramSub, value));
                        }
                    }
                }
            }
        }

        this.report = data.getReport();
    }

    public void merge(ContractFlow child) {
        //merge authors
//        for(String author : child.getAuthors()){
//            if(!this.authors.contains(author)){
//                this.authors.add(author);
//            }
//        }

        //merge flows
        this.topicFlowMap.merge(child.getTopicFlowMap().getTopicFlowCollection());
    }

    public ContractFlow deepCopy() {
        return new ContractFlow(this);
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(name).append("\n");
        builder.append(String.join(", ", authors)).append("\n");
        builder.append(topicFlowMap.toString());

        return builder.toString();
    }

    /*
    UTILITY CLASS
     */

    public static class Deserializer implements JsonDeserializer<ContractFlow> {
        @Override
        public ContractFlow deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            JsonObject jsonObject = json.getAsJsonObject();
            Gson gson = new GsonBuilder()
                    .registerTypeAdapter(TopicFlowMap.class, new TopicFlowMap.Deserializer())
                    .create();
            String name = getName(jsonObject);
            String site = getSite(jsonObject);
            String extendedFrom = getExtendedFrom(jsonObject);
            String[] authors = getAuthors(gson, jsonObject);
            TopicFlowMap topicFlowMap = gson.fromJson(jsonObject.get("flows"), TopicFlowMap.class);
            return new ContractFlow(name, site, extendedFrom, Arrays.asList(authors), topicFlowMap);
        }

        public String getName(JsonObject jsonObject) {
            JsonElement name = jsonObject.get("name");

            if (name.isJsonPrimitive()) {
                return name.getAsString();
            }

            log.error("bad name field");
            return "BAD NAME FIELD";
        }

        public String getSite(JsonObject jsonObject) {
            if (!jsonObject.has("site")) {
                return null;
            }

            JsonElement name = jsonObject.get("site");

            if (name.isJsonPrimitive()) {
                return name.getAsString();
            }

            log.error("bad site field");
            return null;
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
