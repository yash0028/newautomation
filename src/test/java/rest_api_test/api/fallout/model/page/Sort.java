
package rest_api_test.api.fallout.model.page;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Sort {

    @Expose
    private Boolean sorted;
    @Expose
    private Boolean unsorted;

    public Boolean getSorted() {
        return sorted;
    }

    public Boolean getUnsorted() {
        return unsorted;
    }

    public static class Builder {

        private Boolean sorted;
        private Boolean unsorted;

        public Sort.Builder withSorted(Boolean sorted) {
            this.sorted = sorted;
            return this;
        }

        public Sort.Builder withUnsorted(Boolean unsorted) {
            this.unsorted = unsorted;
            return this;
        }

        public Sort build() {
            Sort sort = new Sort();
            sort.sorted = sorted;
            sort.unsorted = unsorted;
            return sort;
        }

    }

}
