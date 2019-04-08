
package rest_api_test.api.datastructure.gson.fallout;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class CountByType {

    @Expose
    private Long count;
    @Expose
    private String type;

    public Long getCount() {
        return count;
    }

    public String getType() {
        return type;
    }

    public static class Builder {

        private Long count;
        private String type;

        public CountByType.Builder withCount(Long count) {
            this.count = count;
            return this;
        }

        public CountByType.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public CountByType build() {
            CountByType countByType = new CountByType();
            countByType.count = count;
            countByType.type = type;
            return countByType;
        }

    }

}
