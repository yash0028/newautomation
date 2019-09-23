
package rest_api_test.api.contractsquery.model;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Parameters {

    @Expose
    private Answers answers;
    @Expose
    private String status;
    @Expose
    private String template;

    public Answers getAnswers() {
        return answers;
    }

    public String getStatus() {
        return status;
    }

    public String getTemplate() {
        return template;
    }

    public static class Builder {

        private Answers answers;
        private String status;
        private String template;

        public Parameters.Builder withAnswers(Answers answers) {
            this.answers = answers;
            return this;
        }

        public Parameters.Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public Parameters.Builder withTemplate(String template) {
            this.template = template;
            return this;
        }

        public Parameters build() {
            Parameters parameters = new Parameters();
            parameters.answers = answers;
            parameters.status = status;
            parameters.template = template;
            return parameters;
        }

    }

}
