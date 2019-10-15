package rest_api_test.api.productnetwork;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.ParamMap;
import rest_api_test.api.productnetwork.modal.ProductDetails;

/**
 * This is an example of a Rest Api interact interface
 */
public interface IProductNetworkInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IProductNetworkInteract.class);

    String RESOURCE_CONTRACT_PRODUCT_GROUPS = "/v1.0/contract-product-groups";
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * get list of Product Groups using an OCM with the Product Network microservice
     * maps to POST /v1.0/contract-product-groups
     *
     * @param payload the json element containing the ocm
     * @return the response from Product Network microservice
     */
    default ProductDetails getContractProductGroups(Object payload) {
        Response response = ProductNetworkHelper.getInstance().doBasicPost(RESOURCE_CONTRACT_PRODUCT_GROUPS, payload);

        ProductDetails groups = response.as(ProductDetails.class);
        groups.setResponse(response);
        return groups;
    }

    /**
     * get list of Product Groups using an OCM with the Product Network microservice
     * maps to POST /v1.0/contract-product-groups
     *
     * @param payload the json element containing the ocm
     * @return the response from Product Network microservice
     */
    default Response getContractProductGroupsFormatted(String format, Object payload) {
        ParamMap params = new ParamMap("format", format);
        return ProductNetworkHelper.getInstance().doParamPost(RESOURCE_CONTRACT_PRODUCT_GROUPS, params, payload);
    }

    
    /*
    UTILITY CLASS
    */
}
