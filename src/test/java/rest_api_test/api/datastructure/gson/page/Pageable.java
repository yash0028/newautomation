
package rest_api_test.api.datastructure.gson.page;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Pageable {

    @Expose
    private Long offset;
    @Expose
    private Long pageNumber;
    @Expose
    private Long pageSize;
    @Expose
    private Boolean paged;
    @Expose
    private Sort sort;
    @Expose
    private Boolean unpaged;

    public Long getOffset() {
        return offset;
    }

    public Long getPageNumber() {
        return pageNumber;
    }

    public Long getPageSize() {
        return pageSize;
    }

    public Boolean getPaged() {
        return paged;
    }

    public Sort getSort() {
        return sort;
    }

    public Boolean getUnpaged() {
        return unpaged;
    }

    public static class Builder {

        private Long offset;
        private Long pageNumber;
        private Long pageSize;
        private Boolean paged;
        private Sort sort;
        private Boolean unpaged;

        public Pageable.Builder withOffset(Long offset) {
            this.offset = offset;
            return this;
        }

        public Pageable.Builder withPageNumber(Long pageNumber) {
            this.pageNumber = pageNumber;
            return this;
        }

        public Pageable.Builder withPageSize(Long pageSize) {
            this.pageSize = pageSize;
            return this;
        }

        public Pageable.Builder withPaged(Boolean paged) {
            this.paged = paged;
            return this;
        }

        public Pageable.Builder withSort(Sort sort) {
            this.sort = sort;
            return this;
        }

        public Pageable.Builder withUnpaged(Boolean unpaged) {
            this.unpaged = unpaged;
            return this;
        }

        public Pageable build() {
            Pageable pageable = new Pageable();
            pageable.offset = offset;
            pageable.pageNumber = pageNumber;
            pageable.pageSize = pageSize;
            pageable.paged = paged;
            pageable.sort = sort;
            pageable.unpaged = unpaged;
            return pageable;
        }

    }

}
