package ui_test.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.configuration.IConfigurable;

import java.util.Map;

public class UiConfigHelper implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(UiConfigHelper.class);
    private static UiConfigHelper INSTANCE = new UiConfigHelper();

    /*
    CONSTRUCTOR
    */

    private UiConfigHelper() {
    }
    
    /*
    STATIC METHODS
    */

    public static UiConfigHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    public SauceLabs.Builder getDefaultSauceBuilder(String scenarioName) {
        SauceLabs.Builder builder = new SauceLabs.Builder();


        //Setup Browser
        builder.withBrowserName(configGetOptionalString("ui.sauce.defaultBrowserName"));
//        builder.withBrowserVersion(configGetOptionalString("ui.sauce.defaultBrowserVersion"));

        //Setup Platform
        builder.withPlatformName(configGetOptionalString("ui.sauce.defaultPlatformName"));
//        builder.withPlatformVersion(configGetOptionalString("ui.sauce.defaultPlatformVersion"));

        //Setup Job Name
        builder.withJobNameJenkinsBuild(configGetOptionalString("BUILD_TAG"));
        builder.withJobNameScenarioName(scenarioName);

        //Setup Build Name
        builder.withBuildName(configGetOptionalString("BUILD_TAG"));

        //Setup Username and api key
        builder.withUsername(configGetOptionalString("ui.sauce.username"));
        builder.withApiKey(configGetOptionalString("ui.sauce.apiKey"));

        //Setup Tunnel
        builder.withParentTunnel(configGetOptionalString("ui.sauce.parentTunnel"));
        builder.withTunnelIdentifier(configGetOptionalString("ui.sauce.tunnelIdentifier"));

        //Setup Other
        builder.doAutoAcceptAlerts(configGetOptionalBoolean("ui.sauce.autoAcceptAlerts"));
        builder.doExtendedDebugging(configGetBoolean("ui.sauce.extendedDebugging"));
        builder.withVisibility(configGetOptionalString("ui.sauce.visibility"));

        return builder;
    }

    public SauceLabs.Builder getParametricSauceBuilder(String scenarioName, Map<String, String> map) {
        SauceLabs.Builder builder = getDefaultSauceBuilder(scenarioName);
        builder.loadPropertyMap(map);
        return builder;
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
