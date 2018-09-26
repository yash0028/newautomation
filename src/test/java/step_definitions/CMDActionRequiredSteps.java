package step_definitions;

import pages.ActionRequiredPage;
import pages.CMDPage;

import java.util.logging.Logger;

/**
 * Created by dtimaul on 9/26/18.
 */
public class CMDActionRequiredSteps {
    private ActionRequiredPage actionRequiredPage = null;
    private String CMD_DASHBOARD_URL = "http://contract-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/";
    //TODO: Currently using contract summary page url for testing but will change to action required page url once created
    private String CMD_ACTION_REQUIRED_PAGE_URL = "http://contract-admin-ui-clm-test.ocp-ctc-dmz-nonprod.optum.com/contract-summary/failed";


}
