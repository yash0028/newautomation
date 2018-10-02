package util.configuration;

import org.slf4j.helpers.Util;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.Properties;

public class Configuration {
    public static final String CONFIGURATIONS_UI_PROPERTIES = "/configurations/ui.properties";
    private static final String CONFIGURATIONS_GLOBAL_PROPERTIES = "/configurations/global.properties";
    private static final String CONFIGURATIONS_LOGGER_PROPERTIES = "/configurations/logger.properties";
    private static Configuration ourInstance = new Configuration();
    private Map<String, ProtectedString> optionMap;

    /*
    CONSTRUCTOR
     */

    private Configuration() {
        optionMap = new HashMap<>();
        //Create Single Instances
        loadEnvironment(true, true);
        loadProperty(CONFIGURATIONS_GLOBAL_PROPERTIES, true, false);
        loadProperty(CONFIGURATIONS_LOGGER_PROPERTIES, true, false);
        loadProperty(CONFIGURATIONS_UI_PROPERTIES, true, false);
    }

    /*
    STATIC METHODS
     */

    public static Configuration getInstance() {
        return ourInstance;
    }

    /*
    CLASS METHODS
     */

    public String getStatus() {
        StringBuilder message = new StringBuilder();
        long counter = this.optionMap.values().stream().filter(ps -> ps.isWriteProtected()).count();
        message.append("Configuration: found ").append(optionMap.size()).append(" unique keys & ");
        message.append(counter).append(" of these are protected.");
        return message.toString();
    }

    String getOption(String key) {
        Optional<ProtectedString> optional = Optional.ofNullable(optionMap.get(key));
        return optional.map(ProtectedString::getValue).orElse(null);
    }

    void loadEnvironment(boolean override, boolean makeWriteProtected) {
        System.getenv().forEach((key, value) -> {
            addOption(key, value, override, makeWriteProtected);
        });
    }

    void loadProperty(String propertyFileName, boolean override, boolean makeWriteProtected) {
        InputStream inputStream;
        Properties properties = new Properties();

        try {
            inputStream = getClass().getResourceAsStream(propertyFileName);
            properties.load(inputStream);
            inputStream.close();
        } catch (Exception e) {
//            e.printStackTrace();
            Util.report("ERROR: did not find <" + propertyFileName + ">.");
        }

        properties.forEach((key, value) -> {
            if (key instanceof String && value instanceof String) {
                String keyString = (String) key;
                String valueString = (String) value;

                addOption(keyString, valueString, override, makeWriteProtected);
            }
        });
    }

    @Override
    public String toString() {
        return getStatus();
    }

    /*
    HELPER METHODS
     */

    private void addOption(String key, String value, boolean override, boolean makeWriteProtected) {
        if (override) {
            if (!optionMap.containsKey(key) || !optionMap.get(key).isWriteProtected()) {
                this.optionMap.put(key, new ProtectedString(makeWriteProtected, value));
            } else {
                Util.report("Tried to override " + key + " but it was protected.");
            }
        } else {
            this.optionMap.putIfAbsent(key, new ProtectedString(makeWriteProtected, value));
        }
    }



    /*
    UTILITY CLASS
     */

    class ProtectedString {
        private final boolean writeProtected;
        private final String value;

        ProtectedString(boolean writeProtected, String value) {
            this.writeProtected = writeProtected;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        boolean isWriteProtected() {
            return writeProtected;
        }
    }
}
