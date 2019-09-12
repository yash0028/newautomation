package general_test.util;

import rest_api_test.api.PayloadMap;

public interface ISharedValuePayload extends ISharedValueReset {

    default PayloadMap getPayload() {
        return SharedValueStore.getInstance().payloadMapMap.get("default");
    }

    default PayloadMap getPayload(String key) {
        if (!SharedValueStore.getInstance().payloadMapMap.containsKey(key)) {
            return SharedValueStore.getInstance().payloadMapMap.put(key, new PayloadMap());
        }

        return SharedValueStore.getInstance().payloadMapMap.get(key);
    }
}
