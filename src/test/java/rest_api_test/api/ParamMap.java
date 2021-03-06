package rest_api_test.api;

import io.cucumber.datatable.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.map.IMapSub;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class ParamMap extends HashMap<String, Object> implements IMapSub {
    private static final Logger log = LoggerFactory.getLogger(ParamMap.class);

    /*
    CONSTRUCTOR
    */

    public ParamMap() {
    }

    public ParamMap(Map<? extends String, ?> m) {
        super(m);
    }

    public ParamMap(String firstKey, Object firstValue) {
        super();
        this.put(firstKey, firstValue);
    }

    /*
    STATIC METHODS
    */  
    
    /*
    CLASS METHODS
    */

    @Override
    public Object put(String key, Object value) {
        return super.put(key, value);
    }

    @Override
    public void putAll(Map<? extends String, ?> m) {
        super.putAll(m);
    }

    public void put2ColDataTable(DataTable dataTable) {
        this.putAll(subMapStringValues(dataTable.asMap(String.class, String.class)));
    }

    public String getUriString() {
        if (this.size() == 0)
            return "";

        return "?" + this.entrySet().stream().map(entry -> entry.getKey() + (entry.getValue() != null ? ('=' + entry.getValue().toString()) : "")).collect(Collectors.joining("&"));
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */


}
