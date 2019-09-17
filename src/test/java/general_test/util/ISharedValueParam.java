package general_test.util;

import rest_api_test.api.ParamMap;

public interface ISharedValueParam extends ISharedValueReset {

    /**
     * Singleton accessor for the default param map
     *
     * @return the default param map
     */
    default ParamMap getParams() {
        return SharedValueStore.getInstance().paramMapMap.get("default");
    }

    /**
     * Singleton accessor for any arbitrary param map.
     * Will create a param map if the key does not already have a map.
     *
     * @param key the param map key to access or create
     * @return the param map assigned to that key
     */
    default ParamMap getParams(String key) {
        if (!SharedValueStore.getInstance().paramMapMap.containsKey(key)) {
            SharedValueStore.getInstance().paramMapMap.put(key, new ParamMap());
        }

        return SharedValueStore.getInstance().paramMapMap.get(key);
    }
}
