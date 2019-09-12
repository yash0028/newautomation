package general_test.util;

import rest_api_test.api.ParamMap;

public interface ISharedValueParam {

    default ParamMap<?> getParams() {
        return SharedValueStore.getInstance().paramMapMap.get("default");
    }

    default ParamMap<?> getParams(String key) {
        if (!SharedValueStore.getInstance().paramMapMap.containsKey(key)) {
            SharedValueStore.getInstance().paramMapMap.put(key, new ParamMap<>());
        }

        return SharedValueStore.getInstance().paramMapMap.get(key);
    }
}
