package util.configuration;

import org.slf4j.helpers.Util;

import java.io.InputStream;
import java.util.*;

/**
 * Singleton created to handle reading environment variables and property files (that exist
 * within resources folder). Allows setting protected sources so they are not overwritten by variables read later.
 */
public class Configuration {
    private static final String CONFIGURATIONS_GLOBAL_PROPERTIES = "/configurations/global.properties";
//    public static final String CONFIGURATIONS_UI_PROPERTIES = "/configurations/ui.properties";
//    private static final String CONFIGURATIONS_LOGGER_PROPERTIES = "/configurations/logger.properties";

    private static final String GLOBAL_FILE_KEY = "configuration.global.file";
    private static final String BASE_FOLDER_KEY = "configuration.baseFolder";
    private static final String LOGGER_FILE_KEY = "configuration.logger.file";
    private static final String REST_FILE_KEY = "configuration.rest.file";
    private static final String UI_FILE_KEY = "configuration.ui.file";
    private static final String EXTRA_FILES_KEY = "configuration.extra.files";

    private static Configuration INSTANCE = new Configuration();

    private Map<String, ProtectedString> optionMap;

    /*
    CONSTRUCTOR
     */

    /**
     * Load default configurations
     */
    private Configuration() {
        List<String> filesToLoad = new ArrayList<>();
        this.optionMap = new HashMap<>();
        Optional<String> baseFolder;

        //Load environment variables as unchangeable
        loadEnvironment(true, true);

        //Load Global variables from environment defined file or from default location
        loadProperty(getOption(GLOBAL_FILE_KEY).orElse(CONFIGURATIONS_GLOBAL_PROPERTIES), true, false);

        baseFolder = getOption(BASE_FOLDER_KEY);

        //Get predefined files
        getOption(LOGGER_FILE_KEY).map(filesToLoad::add);
        getOption(REST_FILE_KEY).map(filesToLoad::add);
        getOption(UI_FILE_KEY).map(filesToLoad::add);

        //Get extra files
        Optional<String> extraFileNames = getOption(EXTRA_FILES_KEY);
        if (extraFileNames.isPresent()) {
            for (String item : extraFileNames.get().split("\\s")) {
                Optional.ofNullable(item).map(filesToLoad::add);
            }
        }

        //Load the other files
        filesToLoad.forEach(fileName ->
                loadProperty("/" + baseFolder.orElse("") + "/" + fileName, true, false)
        );

    }

    /*
    STATIC METHODS
     */

    public static Configuration getInstance() {
        return INSTANCE;
    }

    /**
     * Reset instance, removes all values and loads defaults again
     */
    public static void reset() {
        INSTANCE = new Configuration();
    }

    /*
    CLASS METHODS
     */

    /**
     * Retrieve option from variable map. Package Private to prevent unknown usage.
     *
     * @param key
     * @return optional string value at key
     */
    Optional<String> getOption(String key) {
        Optional<ProtectedString> optional = Optional.ofNullable(optionMap.get(key));
        return optional.flatMap(ProtectedString::getValue);
    }

    /**
     * Load all environment variables into configuration
     *
     * @param override           override other unprotected variables
     * @param makeWriteProtected prevent later load from overriding what is loaded in this call
     */
    public void loadEnvironment(boolean override, boolean makeWriteProtected) {
        System.getenv().forEach((key, value) -> {
            addOption(key, value, override, makeWriteProtected);
        });
    }

    /**
     * Load all variables from a property file, located in resource folder, into configuration
     *
     * @param override           override other unprotected variables
     * @param makeWriteProtected prevent later load from overriding what is loaded in this call
     */
    public void loadProperty(String propertyFileName, boolean override, boolean makeWriteProtected) {
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

    /**
     * Get status of the configuration
     *
     * @return
     */
    public String getStatus() {
        StringBuilder message = new StringBuilder();
        long counter = this.optionMap.values().stream().filter(ps -> ps.isWriteProtected()).count();
        message.append("Configuration: found ").append(optionMap.size()).append(" unique keys & ");
        message.append(counter).append(" of these are protected.");
        return message.toString();
    }

    @Override
    public String toString() {
        return getStatus();
    }

    /*
    HELPER METHODS
     */

    /**
     * Add the option and handle override and whether to make it protected
     *
     * @param key                to put value under
     * @param value              string that is stored
     * @param override           whether to override unprotected values
     * @param makeWriteProtected whether to prevent this value from being overriden
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

    /**
     * Store for a value and whether the value should be protected
     */
    class ProtectedString {
        private final boolean writeProtected;
        private final String value;

        ProtectedString(boolean writeProtected, String value) {
            this.writeProtected = writeProtected;
            this.value = value;
        }

        public Optional<String> getValue() {
            return Optional.ofNullable(value);
        }

        boolean isWriteProtected() {
            return writeProtected;
        }
    }
}
