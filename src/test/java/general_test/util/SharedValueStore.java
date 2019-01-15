package general_test.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

class SharedValueStore {
    private static final Logger log = LoggerFactory.getLogger(SharedValueStore.class);
    private static SharedValueStore ourInstance = new SharedValueStore();
    private Map<String, Object> map;

    /*
    CONSTRUCTOR
     */

    private SharedValueStore() {
        reset();
    }

    /*
    STATIC METHODS
     */

    public static SharedValueStore getInstance() {
        return ourInstance;
    }

    /*
    CLASS METHODS
     */

    public void reset() {
        map = new HashMap<>();
    }

    public void putSharedObject(String key, Object obj) {
        map.put(key, obj);
        log.trace("put a value at key::{}", key);
    }

    public Optional<Object> getSharedObject(String key) {
        log.trace("get a value from key::{}", key);
        return Optional.ofNullable(map.get(key));
    }

    public Optional<Integer> getSharedInteger(String key) {
        return getSharedObject(key).flatMap(obj -> obj instanceof Integer ? Optional.of((Integer) obj) : Optional.empty());
    }

    public Optional<Double> getSharedDouble(String key) {
        return getSharedObject(key).flatMap(obj -> obj instanceof Double ? Optional.of((Double) obj) : Optional.empty());
    }

    public Optional<String> getSharedString(String key) {
        return getSharedObject(key).flatMap(obj -> obj instanceof String ? Optional.of((String) obj) : Optional.empty());
    }
}
