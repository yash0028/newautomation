package rest_api_test.api;

import io.cucumber.datatable.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.map.IMapSub;

import java.util.HashMap;
import java.util.Map;

public class PayloadMap extends HashMap<String, Object> implements IMapSub {
    private static final Logger log = LoggerFactory.getLogger(PayloadMap.class);

    /*
    CONSTRUCTOR
    */

    public PayloadMap() {
    }

    public PayloadMap(Map<? extends String, ?> m) {
        super(m);
    }

    public PayloadMap(String firstKey, Object firstValue) {
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
    public void putAll(Map<? extends String, ?> m) {
        super.putAll(m);
    }

    public void put2ColDataTable(DataTable dataTable) {
        this.putAll(subMapStringValues(dataTable.asMap(String.class, String.class)));
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */


}
