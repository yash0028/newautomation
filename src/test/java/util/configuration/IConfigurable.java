package util.configuration;

import java.util.Optional;

public interface IConfigurable {

    default Boolean configGetBoolean(String key) {
        return configGetBooleanOrDefault(key, false);
    }

    default Boolean configGetBooleanOrDefault(String key, boolean defaultValue) {
        return configCompare(key, "true").orElse(defaultValue);
    }

    default Optional<Boolean> configCompare(String key, String comparedValue) {
        Optional<String> stringOptional = this.configGetOptionalString(key);
        return stringOptional.map(s -> s.equalsIgnoreCase(comparedValue));
    }

    default Optional<Integer> configGetOptionalInteger(String key) {
        try {
            return Optional.of(Integer.parseInt(Configuration.getInstance().getOption(key)));
        } catch (NumberFormatException nfe) {
            return Optional.empty();
        }
    }

    default Optional<String> configGetOptionalString(String key) {
        return Optional.ofNullable(Configuration.getInstance().getOption(key));
    }

    default void configLoadEnvVariables() {
        Configuration.getInstance().loadEnvironment(true, true);
    }

    default void configLoadPropertyVariables(String fileName) {
        Configuration.getInstance().loadProperty(fileName, true, false);
    }

}
