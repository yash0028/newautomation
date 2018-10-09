package ui_test.util.d;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Multimap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.skyscreamer.jsonassert.JSONParser;

import java.io.*;
import java.net.HttpURLConnection;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;

/**
 * @author ssinha47
 */
public final class JsonHelper {

    /**
     * store a reference to an initialized browser config.
     */
    private static JsonReader configInfo;

    /**
     * Prevent class from being instantiated.
     */
    private JsonHelper() {
        // Empty constructor
    }

    /**
     * Read a json file and populate pojo.
     *
     * @param <T>            type of configuration class
     * @param pathToJsonFile Path to json file
     * @param type           the type of top level (parent) class
     * @return reference to class of type
     * @throws IOException invalid config file
     */
    public static <T> T readJsonFile(final String pathToJsonFile,
                                     final Class<T> type) throws IOException {

        System.out.println("inside json reader for file " + pathToJsonFile);

        ObjectMapper mapper = new ObjectMapper();

        // JSON from file to Object
        return mapper.readValue(new File(pathToJsonFile), type);
    }

    /**
     * Create a json object from a file.
     *
     * @param pathToJsonFile path to json file
     * @return new json object created from file
     * @throws IOException invalid config file
     */
    public static JSONObject createJSONObjectFromFile(
            final String pathToJsonFile) throws IOException {

        if (pathToJsonFile == null || pathToJsonFile.isEmpty()) {
            throw new IllegalArgumentException("File Path Not Specified");
        }

        File f = new File(pathToJsonFile);
        if (!f.exists() || f.isDirectory()) {
            throw new IllegalArgumentException(String.format(
                    "File %s Not Found", pathToJsonFile));
        }

        InputStream ioStream = new FileInputStream(f);
        String jsonString = org.apache.commons.io.IOUtils.toString(ioStream);

        return new JSONObject(jsonString);
    }

    /**
     * Check if a json object has an element.
     *
     * @param jsonObject json object to search
     * @param jsonKey    key to search
     * @return true if key found in json object
     */
    public static Boolean hasElement(final JSONObject jsonObject,
                                     final String jsonKey) {

        if (jsonObject == null) {
            throw new IllegalArgumentException("JSON Object is null");
        }

        if (jsonKey == null || jsonKey.isEmpty()) {
            throw new IllegalArgumentException("JSON Key Not Provided");
        }

        return jsonObject.has(jsonKey);
    }

    /**
     * Get a child json object based on a parent jsonobject and key.
     *
     * @param jsonObject parent json object
     * @param jsonKey    key in parent json object
     * @return json object starting from child node in parent
     */
    public static JSONObject getJsonObject(final JSONObject jsonObject,
                                           final String jsonKey) {

        if (jsonObject == null) {
            throw new IllegalArgumentException("JSON Object is null");
        }

        if (jsonKey == null || jsonKey.isEmpty()) {
            throw new IllegalArgumentException("JSON Key Not Provided");
        }

        JSONObject retObj = null;

        if (hasElement(jsonObject, jsonKey)) {
            retObj = jsonObject.getJSONObject(jsonKey);
        }

        return retObj;
    }

    /**
     * @param json
     * @param out
     * @return
     * @throws JSONException
     */
    public static HashMap<String, Object> parseJsonObject(JSONObject json, HashMap<String, Object> out)
            throws JSONException {
        Iterator<String> keys = json.keys();

        while (keys.hasNext()) {
            String key = keys.next();
            Object val = json.get(key);
            if (val != null) {
                out.put(key, val);
            }

            Object objJson = json.get(key);
            if (objJson instanceof JSONObject) {
                JSONObject value = json.getJSONObject(key);
                parseJsonObject(value, out);
            } else if (objJson instanceof JSONArray) {
                getArray(objJson, out);
            }
        }
        return out;
    }

    /**
     * @param json
     * @param out
     * @return
     * @throws JSONException
     */
    public static Multimap<String, Object> parseJsonObject(JSONObject json, Multimap<String, Object> out)
            throws JSONException {
        Iterator<String> keys = json.keys();

        while (keys.hasNext()) {
            String key = keys.next();
            //String val = json.getString(key);
            Object val = json.get(key);
            if (val != null) {
                out.put(key, val);
            }

            Object objJson = json.get(key);
            if (objJson instanceof JSONObject) {
                JSONObject value = json.getJSONObject(key);
                parseJsonObject(value, out);
            } else if (objJson instanceof JSONArray) {
	                  /*JSONArray arrJSON = new JSONArray(val);
	                  JSONObject innerJson = (JSONObject) arrJSON.get(0);
	                  parseJsonObject(innerJson, out);*/
                getArray(objJson, out);
            }
        }
        return out;
    }

    /**
     * @param object2
     * @param out
     * @throws JSONException
     */
    public static void getArray(Object object2, HashMap<String, Object> out) throws JSONException {
        JSONArray jsonArr = (JSONArray) object2;
        for (int k = 0; k < jsonArr.length(); k++) {
            if (jsonArr.get(k) instanceof JSONObject) {
                parseJsonObject((JSONObject) jsonArr.get(k), out);
            } else {
                System.out.println(jsonArr.get(k));
            }
        }
    }

    /**
     * @param object2
     * @param out
     * @throws JSONException
     */
    public static void getArray(Object object2, Multimap<String, Object> out) throws JSONException {

        JSONArray jsonArr = (JSONArray) object2;

        for (int k = 0; k < jsonArr.length(); k++) {

            if (jsonArr.get(k) instanceof JSONObject) {
                //parseJson((JSONObject) jsonArr.get(k));
                parseJsonObject((JSONObject) jsonArr.get(k), out);
            } else {
                System.out.println(jsonArr.get(k));
            }

        }
    }

    /**
     * @param jsonObj
     * @param navigationJson
     * @return
     * @throws JSONException
     */

    public static String getValueFromJsonObject(JSONObject jsonObj, String navigationJson) throws Exception {
        if (!(jsonObj == null) && !navigationJson.isEmpty()) {
            String[] jsonParentNodeArray = navigationJson.split("/");
            String parentnode = null;
            int parentNodeNumber = -1;
            int lm = jsonParentNodeArray.length;
            int itrCounter = 0;
            Object jsonObject = null;
            String finalNode = jsonParentNodeArray[lm - 1];

            while (itrCounter <= lm - 1) {
                String[] abc = jsonParentNodeArray[itrCounter].split("-");
                if (abc.length > 1) {
                    parentnode = abc[0];
                    parentNodeNumber = Integer.parseInt(abc[1]);
                } else {
                    parentnode = abc[0];
                    parentNodeNumber = -1;
                }

                jsonObject = jsonObj.get(parentnode);
                if (finalNode == parentnode) {
                    break;
                }

                if (jsonObject instanceof JSONObject) {
                    jsonObject = (JSONObject) jsonObject;
                } else if (jsonObject instanceof JSONArray) {
                    JSONArray jsonAry = (JSONArray) jsonObject;
                    if (parentNodeNumber != -1) {
                        jsonObject = jsonAry.get(parentNodeNumber);
                    } else {
                        jsonObject = jsonAry.get(0);
                    }
                }
                jsonObj = (JSONObject) jsonObject;
                itrCounter++;
            }

            return jsonObject.toString();
        }
        throw new Exception("Navigation or JSON object can't be null or empty");
    }

    /**
     * @author ssinha47
     * This method is used to write  response of REST API call to json file
     */


    public static void writeJSONResponseFile(HttpURLConnection result, String path) {


        try {

            InputStream inputStream = result.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] buf = new byte[512];
            int read = -1;
            while ((read = inputStream.read(buf)) > 0) {
                byteArrayOutputStream.write(buf, 0, read);
            }
            //System.out.println(new String(byteArrayOutputStream.toByteArray()));


            Files.write(Paths.get(path), byteArrayOutputStream.toByteArray());


        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }


    /* ************************JSON CONFIGURATION MANAGER *********************************** */

    /**
     * @author ssinha47
     * This method is used to read a json file as JSONObject
     */
    public static JSONObject readJSONRFileasObject(String path) {

        JSONObject json = null;

        JSONParser parser;

        try {
            System.out.println("Reading JSON file from " + path);


            //FileReader fileReader = new FileReader(path);

            String contents = new String(Files.readAllBytes(Paths.get(path)));
            json = (JSONObject) JSONParser.parseJSON(contents);


        } catch (Exception e) {
            e.printStackTrace();
        }

        return json;

    }

    /**
     * Initialize a set of configuration objects based on input configuration
     * file.
     *
     * @param configFilePathString path to configuration file
     * @return true if initialization is successful
     * @throws IOException invalid config file
     */
    public static boolean initialize(String configFilePathString)
            throws IOException {

        if (configFilePathString == null || configFilePathString.isEmpty()) {
            throw new IllegalArgumentException("Config Filepath Not Specified");
        }

        File f = new File(configFilePathString);
        if (!f.exists() || f.isDirectory()) {
            throw new IllegalArgumentException(String.format(
                    "Config File %s Not Found", configFilePathString));
        }

        configInfo = readJsonFile(configFilePathString, JsonReader.class);

        return true;
    }

    /**
     * Get a reference to an initialized configuration object.
     *
     * @return reference to configuration
     */
    public static JsonReader getConfig() {

        return configInfo;
    }

    /**
     * Uninitialize a previously initialized configuration object.
     */
    public static void uninitialize() {
        configInfo = null;
    }


}
