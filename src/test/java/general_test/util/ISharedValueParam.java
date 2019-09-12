package general_test.util;

import rest_api_test.api.ParamMap;

public interface ISharedValueParam {

    default ParamMap<Object> getParams() {
        return SharedValueStore.getInstance().paramMapMap.get("default");
    }

    default ParamMap<Object> getParams(String key) {
        if (!SharedValueStore.getInstance().paramMapMap.containsKey(key)) {
            SharedValueStore.getInstance().paramMapMap.put(key, new ParamMap<>());
        }

        return SharedValueStore.getInstance().paramMapMap.get(key);
    }
}
