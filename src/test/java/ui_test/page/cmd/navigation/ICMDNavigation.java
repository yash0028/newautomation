package ui_test.page.cmd.navigation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface ICMDNavigation {
    Logger log = LoggerFactory.getLogger(ICMDNavigation.class);

    /*
    INTERFACE METHODS
    */

    CMDNavigationPanel getNavigation();

    /*
    DEFAULT METHODS
    */

}
