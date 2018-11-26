package util.configuration;

import org.slf4j.helpers.Util;

import java.util.Optional;

/**
 * Interface created with several default methods that allows any class that
 * implements it to safely access Configuration options.
 */
public interface IConfigurable {

    /*
    DEFAULT METHODS
     */

    /**
     * retrieve boolean value from configuration or return a default value
     *
     * @param key          accessed variable
     * @return boolean value from key or the default
     */
    default Optional<Boolean> configGetOptionalBoolean(String key) {
        return configCompare(key, "true");
    }

    /**
     * retrieve boolean value from configuration or return false
     *
     * @param key accessed variable
     * @return boolean value from key or false
     */
    default Boolean configGetBoolean(String key) {
        return configGetOptionalBoolean(key).orElse(false);
    }

    /**
     * retrieve string value from key and compares (ignore case) to given value
     *
     * @param key           accessed variable
     * @param comparedValue value to compare to retrieved value
     * @return Optional boolean that is valid or null if key is not present
     */
    default Optional<Boolean> configCompare(String key, String comparedValue) {
        Optional<String> stringOptional = this.configGetOptionalString(key);
        return stringOptional.map(s -> s.equalsIgnoreCase(comparedValue));
    }

    /**
     * retrieve integer value from key
     *
     * @param key accessed variable
     * @return Optional integer that is valid or a null if key is not present
     */
    default Optional<Integer> configGetOptionalInteger(String key) {
        Optional<String> optionalS = Configuration.getInstance().getOption(key);
        if (optionalS.isPresent()) {
            try {
                return Optional.of(Integer.parseInt(optionalS.get()));
            } catch (NumberFormatException nfe) {
                Util.report("Unable to parse value " + optionalS.get() + " from " + key + " as an integer");
            }
        }

        return Optional.empty();
    }

    /**
     * retrieve string value from key
     *
     * @param key accessed variable
     * @return Optional string that is valid or null if key is not present
     */
    default Optional<String> configGetOptionalString(String key) {
        return Configuration.getInstance().getOption(key);
    }

    default boolean configHasKey(String key) {
        return this.configGetOptionalString(key).isPresent();
    }
}
