package rest_api_test.api;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;

public class ParamMap<T> extends HashMap<String, T> {
    private static final Logger log = LoggerFactory.getLogger(ParamMap.class);

    /*
    CONSTRUCTOR
    */
    
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

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */


}
