package ui_test.page.cmd.transaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface ITransactionTable {
    Logger log = LoggerFactory.getLogger(ITransactionTable.class);

    /*
    INTERFACE METHODS
    */

    Integer getExpectedPageSize();

    Integer getFuzzyPageNumber();

    /*
    DEFAULT METHODS
    */

}
