package util.map;


import java.util.Map;

public interface IMapSub {
    default Map<String, String> subMapStringValues(Map<String, String> base, Map<String, String> subs) {
        return MapHelper.getInstance().subMapStringValues(base, subs);
    }

    default Map<String, String> subMapStringValues(Map<String, String> base) {
        return MapHelper.getInstance().subMapStringValues(base);
    }
}
