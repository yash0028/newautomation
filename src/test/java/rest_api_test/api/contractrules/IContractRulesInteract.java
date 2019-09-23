package rest_api_test.api.contractrules;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;

public interface IContractRulesInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractRulesInteract.class);

    String RESOURCE_IPA_DETERMINATION = "/v1.0/rules/ipa_determination/validate_market_network_values";
    String RESOURCE_PILOT_MARKET = "/v1.0/rules/pilot_market/validate";
    String RESOURCE_SILENT_INCLUSION = "/v1.0/rules/heritage_silent_inclusion/market_product_met";
    String RESOURCE_PCP_SPECIALTY = "/v1.0/rules/pcp_specialty/validate_pcp";
    String RESOURCE_ENW_INDICATOR = "/v1.0/rules/enw_indicator/validate_enw";
    String RESOURCE_PENALTY_TABLE = "/v1.0/rules/penalty_table_determination/penalty_table_required";

    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default Response getIpaDetermination(Object payload) {
        return ContractRulesHelper.getInstance().doBasicPost(RESOURCE_IPA_DETERMINATION, payload);
    }

    default Response getPilotMarket(Object payload) {
        return ContractRulesHelper.getInstance().doBasicPost(RESOURCE_PILOT_MARKET, payload);
    }

    default Response getSilentInclusion(Object payload) {
        return ContractRulesHelper.getInstance().doBasicPost(RESOURCE_SILENT_INCLUSION, payload);
    }

    default Response getPcpSpeciality(Object payload) {
        return ContractRulesHelper.getInstance().doBasicPost(RESOURCE_PCP_SPECIALTY, payload);
    }

    default Response getEnwIndicator(Object payload) {
        return ContractRulesHelper.getInstance().doBasicPost(RESOURCE_ENW_INDICATOR, payload);
    }

    default Response getPenaltyTable(Object payload) {
        return ContractRulesHelper.getInstance().doBasicPost(RESOURCE_PENALTY_TABLE, payload);
    }

    /*
    UTILITY CLASS
    */
}
