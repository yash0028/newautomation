
package rest_api_test.api.example.model;

import com.google.gson.annotations.Expose;
import io.restassured.response.Response;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Letter {

    @Expose
    private String namedCode;
    @Expose
    private String svg;
    @Expose
    private Long unicode;

    private Response response;

    public String getNamedCode() {
        return namedCode;
    }

    public String getSvg() {
        return svg;
    }

    public Long getUnicode() {
        return unicode;
    }

    public Response getResponse() {
        return this.response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    public static class Builder {

        private String namedCode;
        private String svg;
        private Long unicode;

        public Letter.Builder withNamedCode(String namedCode) {
            this.namedCode = namedCode;
            return this;
        }

        public Letter.Builder withSvg(String svg) {
            this.svg = svg;
            return this;
        }

        public Letter.Builder withUnicode(Long unicode) {
            this.unicode = unicode;
            return this;
        }

        public Letter build() {
            Letter letter = new Letter();
            letter.namedCode = namedCode;
            letter.svg = svg;
            letter.unicode = unicode;
            return letter;
        }

    }

}
