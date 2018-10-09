package ui_test.util.d;

import com.fasterxml.jackson.annotation.*;

import javax.annotation.Generated;
import java.util.HashMap;
import java.util.Map;


/**
 * POJO for JSON Configuration Manager.
 *
 * @author ssinha47
 */

@JsonInclude(JsonInclude.Include.NON_NULL)
@Generated("org.jsonschema2pojo")
@JsonPropertyOrder({"browser", "Environment", "DevURL", "TestURL", "ProdURL", "username", "password"})
public class JsonReader {


    // CHECKSTYLE:OFF


    private static final String BROWSER = "browser";
    private static final String ENV = "Environment";
    private static final String DEVURL = "DevURL";
    private static final String TESTURL = "TestURL";
    private static final String PRODURL = "ProdURL";
    private static final String USERNAME = "username";
    private static final String PASSWORD = "password";


    @JsonProperty(BROWSER)
    private String browser;

    @JsonProperty(ENV)
    private String Environment;

    @JsonProperty(DEVURL)
    private String DevURL;

    @JsonProperty(TESTURL)
    private String TestURL;

    @JsonProperty(PRODURL)
    private String ProdURL;

    @JsonProperty(USERNAME)
    private String username;

    @JsonProperty(PASSWORD)
    private String password;


    @JsonIgnore
    private Map<String, Object> additionalProperties =
            new HashMap<String, Object>();


    /**
     * Get the browser name.
     *
     * @return The browser name
     */
    @JsonProperty(BROWSER)
    public String getBrowserName() {
        return browser;
    }


    /**
     * Set the browser name.
     *
     * @param appName The browser name
     */
    @JsonProperty(BROWSER)
    public void setBrowserVersion(final String browser) {
        this.browser = browser;
    }

    /**
     * Get the Environment name.
     *
     * @return The Environment name
     */
    @JsonProperty(ENV)
    public String getEnvironment() {
        return Environment;
    }


    /**
     * Set the Environment name.
     *
     * @param appName The Environment name
     */
    @JsonProperty(ENV)
    public void setEnvironment(final String Environment) {
        this.Environment = Environment;
    }


    /**
     * Get the JSON file DevURL.
     *
     * @return The JSON file DevURL.
     */
    @JsonProperty(DEVURL)
    public String getDevURL() {
        return DevURL;
    }

    /**
     * Set the JSON file DevURL.
     *
     * @param url The JSON file DevURL.
     */
    @JsonProperty(DEVURL)
    public void setDevUrl(final String DevURL) {
        this.DevURL = DevURL;
    }


    /**
     * Get the JSON file TestURL.
     *
     * @return The JSON file TestURL.
     */
    @JsonProperty(TESTURL)
    public String getTestURL() {
        return TestURL;
    }

    /**
     * Set the JSON file TestURL.
     *
     * @param url The JSON file TestURL.
     */
    @JsonProperty(TESTURL)
    public void setTestUrl(final String TestURL) {
        this.TestURL = TestURL;
    }


    /**
     * Get the JSON file ProdURL.
     *
     * @return The JSON file ProdURL.
     */
    @JsonProperty(PRODURL)
    public String getProdURL() {
        return ProdURL;
    }

    /**
     * Set the JSON file ProdURL.
     *
     * @param url The JSON file ProdURL.
     */
    @JsonProperty(PRODURL)
    public void setProdUrl(final String ProdURL) {
        this.ProdURL = ProdURL;
    }

    /**
     * Get the JSON file username.
     *
     * @return The username to connect to the JSON file.
     */
    @JsonProperty(USERNAME)
    public String getUsername() {
        return username;
    }

    /**
     * Set the JSON file username.
     *
     * @param username The username to connect to the JSON file.
     */
    @JsonProperty(USERNAME)
    public void setUsername(final String username) {
        this.username = username;
    }


    /**
     * Get the JSON file password.
     *
     * @return The password to connect to the JSON file.
     */
    @JsonProperty(PASSWORD)
    public String getPassword() {
        return password;
    }

    /**
     * Set the JSON file password.
     *
     * @param password The password to connect to the JSON file.
     */
    @JsonProperty(PASSWORD)
    public void setPassword(final String password) {
        this.password = password;
    }


    /**
     * Get any additional properties in JSON Object.
     *
     * @return Additional properties in JSON object
     */
    @JsonAnyGetter
    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    /**
     * Set additional properties in JSON Object.
     *
     * @param name  Additional property name in JSON object
     * @param value Additional property value in JSON object
     */
    @JsonAnySetter
    public void setAdditionalProperty(final String name, final Object value) {
        this.additionalProperties.put(name, value);
    }


}
