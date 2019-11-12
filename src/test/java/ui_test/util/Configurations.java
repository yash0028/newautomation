package ui_test.util;

import util.configuration.ConfigStub;
import util.configuration.IConfigurable;

public class Configurations {
    IConfigurable config = new ConfigStub();

    public String getBrowserType(){
        return config.configGetOptionalString("ui.runLocalBrowser").orElse("false");
    }
}
