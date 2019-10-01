
package rest_api_test.api.fallout.model.contract;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ProductDetail {

    @Expose
    private List<FeeScheduleRate> feeScheduleRates;
    @Expose
    private String productCode;
    @Expose
    private String productGroupCode;
    @Expose
    private String networkAccessCode;

    //    TODO: add the following fields
//    contractType
//    networkId
//    networkOrgMarket
//    platform

    public List<FeeScheduleRate> getFeeScheduleRates() {
        return feeScheduleRates;
    }

    public String getProductCode() {
        return productCode;
    }

    public String getProductGroupCode() {
        return productGroupCode;
    }

    public String getNetworkAccessCode() { return networkAccessCode; }
    public static class Builder {

        private List<FeeScheduleRate> feeScheduleRates;
        private String productCode;
        private String productGroupCode;
        private String networkAccessCode;

        public ProductDetail.Builder withFeeScheduleRates(List<FeeScheduleRate> feeScheduleRates) {
            this.feeScheduleRates = feeScheduleRates;
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

        public ProductDetail.Builder withNetworkAccessCode(String networkAccessCode) {
            this.networkAccessCode = networkAccessCode;
            return this;
        }

        public ProductDetail build() {
            ProductDetail productDetail = new ProductDetail();
            productDetail.feeScheduleRates = feeScheduleRates;
            productDetail.productCode = productCode;
            productDetail.productGroupCode = productGroupCode;
            productDetail.networkAccessCode = networkAccessCode;
            return productDetail;
        }

    }

}
