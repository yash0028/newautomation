
package rest_api_test.api.datastructure.gson.contractmodel;

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

    public List<FeeScheduleRate> getFeeScheduleRates() {
        return feeScheduleRates;
    }

    public String getProductCode() {
        return productCode;
    }

    public String getProductGroupCode() {
        return productGroupCode;
    }

    public static class Builder {

        private List<FeeScheduleRate> feeScheduleRates;
        private String productCode;
        private String productGroupCode;

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

        public ProductDetail build() {
            ProductDetail productDetail = new ProductDetail();
            productDetail.feeScheduleRates = feeScheduleRates;
            productDetail.productCode = productCode;
            productDetail.productGroupCode = productGroupCode;
            return productDetail;
        }

    }

}
