package ui_test.page.cmd.transaction.dialog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Dialog {
    private static final Logger log = LoggerFactory.getLogger(Dialog.class);

    private final String code;
    private final String message;

    /*
    CONSTRUCTOR
    */

    public Dialog(String code, String message) {
        this.code = code;
        this.message = message;
    }

    /*
    STATIC METHODS
    */  
    
    /*
    CLASS METHODS
    */

    public String getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    @Override
    public String toString() {
        return code + " --- " + message;
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */


}
