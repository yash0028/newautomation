
package rest_api_test.api.datastructure.gson.fallout;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ProductGroup {

    @Expose
    private Long objectItemId;
    @Expose
    private String productGroupName;

    public Long getObjectItemId() {
        return objectItemId;
    }

    public String getProductGroupName() {
        return productGroupName;
    }

    public static class Builder {

        private Long objectItemId;
        private String productGroupName;

        public ProductGroup.Builder withObjectItemId(Long objectItemId) {
            this.objectItemId = objectItemId;
            return this;
        }

        public ProductGroup.Builder withProductGroupName(String productGroupName) {
            this.productGroupName = productGroupName;
            return this;
        }

        public ProductGroup build() {
            ProductGroup productGroup = new ProductGroup();
            productGroup.objectItemId = objectItemId;
            productGroup.productGroupName = productGroupName;
            return productGroup;
        }

    }

}
