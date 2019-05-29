package util.map;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

class MapHelper {
    private static MapHelper ourInstance = new MapHelper();

    Map<String, String> defaultSubMap;

    private MapHelper() {
        defaultSubMap = new HashMap<>();
        defaultSubMap.put("EMPTY_STRING", "");
        defaultSubMap.put("\"\"", "");
    }

    static MapHelper getInstance() {
        return ourInstance;
    }

    Map<String, String> subMapStringValues(Map<String, String> base, Map<String, String> subs) {
        return base.entrySet().stream().collect(Collectors.toMap(Map.Entry::getKey,
                entry -> {
                    String entryValue = entry.getValue();
                    for (Map.Entry<String, String> subEntry : subs.entrySet()) {
                        entryValue = entryValue.replace(subEntry.getKey(), subEntry.getValue());
                    }
                    return entryValue;
                })
        );
    }

    Map<String, String> subMapStringValues(Map<String, String> base) {
        return subMapStringValues(base, defaultSubMap);
    }
}
