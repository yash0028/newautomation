package rest_api_test.api;

import io.cucumber.datatable.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;

public class PayloadMap<T> extends HashMap<String, T> {
    private static final Logger log = LoggerFactory.getLogger(PayloadMap.class);

    /*
    CONSTRUCTOR
    */

    public PayloadMap() {
    }

    public PayloadMap(Map<? extends String, ? extends T> m) {
        super(m);
    }

    /*
    STATIC METHODS
    */  
    
    /*
    CLASS METHODS
    */

    @Override
    public void putAll(Map<? extends String, ? extends T> m) {
        super.putAll(m);
    }

    public void put2ColDataTable(DataTable dataTable) {
        this.putAll(dataTable.asMap(String.class, String.class));
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */


}
