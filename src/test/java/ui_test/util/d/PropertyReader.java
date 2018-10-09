package ui_test.util.d;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertyReader {
    public static Properties properties = new Properties();
    public static InputStream inputStreamConfig = null;
    public static String filePath = System.getProperty("user.dir") + "/src/test/resources/dataFiles/Environment.properties";

    public PropertyReader() {
        loadProperties();
    }

    public static void loadProperties() {
        try {

            inputStreamConfig = new FileInputStream(filePath);
            properties.load(inputStreamConfig);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String readProperty(String key) {
        String value = properties.getProperty(key);
        if (value != null) return value;
        else throw new RuntimeException(key + " not specified in the Configuration.properties file.");

    }
}
