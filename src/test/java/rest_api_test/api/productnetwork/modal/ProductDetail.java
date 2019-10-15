
package rest_api_test.api.productnetwork.modal;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ProductDetail {

    @Expose
    private String contractType;
    @Expose
    private List<NetworkCondition> networkConditions;
    @Expose
    private String platform;
    @Expose
    private String productCode;
    @Expose
    private String productGroupCode;

    public String getContractType() {
        return contractType;
    }

    public List<NetworkCondition> getNetworkConditions() {
        return networkConditions;
    }

    public String getPlatform() {
        return platform;
    }

    public String getProductCode() {
        return productCode;
    }

    public String getProductGroupCode() {
        return productGroupCode;
    }

    public static class Builder {

        private String contractType;
        private List<NetworkCondition> networkConditions;
        private String platform;
        private String productCode;
        private String productGroupCode;

        public ProductDetail.Builder withContractType(String contractType) {
            this.contractType = contractType;
            return this;
        }

        public ProductDetail.Builder withNetworkConditions(List<NetworkCondition> networkConditions) {
            this.networkConditions = networkConditions;
            return this;
        }

        public ProductDetail.Builder withPlatform(String platform) {
            this.platform = platform;
            return this;
        }

        public ProductDetail.Builder withProductCode(String productCode) {
            this.productCode = productCode;
            return this;
        }

        public ProductDetail.Builder withProductGroupCode(String productGroupCode) {
            this.productGroupCode = productGroupCode;
            return this;
        }

        public ProductDetail build() {
            ProductDetail productDetail = new ProductDetail();
            productDetail.contractType = contractType;
            productDetail.networkConditions = networkConditions;
            productDetail.platform = platform;
            productDetail.productCode = productCode;
            productDetail.productGroupCode = productGroupCode;
            return productDetail;
        }

    }

}
