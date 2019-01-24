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
                e -> {
                    String s = e.getValue();
                    for (Map.Entry<String, String> ee : subs.entrySet()) {
                        s = s.replace(ee.getKey(), ee.getValue());
                    }
                    return s;
                })
        );
    }

    Map<String, String> subMapStringValues(Map<String, String> base) {
        return subMapStringValues(base, defaultSubMap);
    }
}
