package general_test.util;

import java.util.Optional;

public interface ISharedValueReader {

    default Optional<Object> getSharedObject(String key) {
        return SharedValueStore.getInstance().getSharedObject(key);
    }

    default Optional<Integer> getSharedInteger(String key) {
        return SharedValueStore.getInstance().getSharedInteger(key);
    }

    default Optional<Double> getSharedDouble(String key) {
        return SharedValueStore.getInstance().getSharedDouble(key);
    }

    default Optional<String> getSharedString(String key) {
        return SharedValueStore.getInstance().getSharedString(key);
    }

    default void resetStore() {
        SharedValueStore.getInstance().reset();
    }
}
