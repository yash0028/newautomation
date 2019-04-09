
package rest_api_test.api.datastructure.gson.page;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Page {

    @Expose
    private Boolean first;
    @Expose
    private Boolean last;
    @Expose
    private Long number;
    @Expose
    private Long numberOfElements;
    @Expose
    private Pageable pageable;
    @Expose
    private Long size;
    @Expose
    private Sort sort;
    @Expose
    private Long totalElements;
    @Expose
    private Long totalPages;

    public Boolean getFirst() {
        return first;
    }

    public Boolean getLast() {
        return last;
    }

    public Long getNumber() {
        return number;
    }

    public Long getNumberOfElements() {
        return numberOfElements;
    }

    public Pageable getPageable() {
        return pageable;
    }

    public Long getSize() {
        return size;
    }

    public Sort getSort() {
        return sort;
    }

    public Long getTotalElements() {
        return totalElements;
    }

    public Long getTotalPages() {
        return totalPages;
    }

    public static class Builder {

        private Boolean first;
        private Boolean last;
        private Long number;
        private Long numberOfElements;
        private Pageable pageable;
        private Long size;
        private Sort sort;
        private Long totalElements;
        private Long totalPages;

        public Page.Builder withFirst(Boolean first) {
            this.first = first;
            return this;
        }

        public Page.Builder withLast(Boolean last) {
            this.last = last;
            return this;
        }

        public Page.Builder withNumber(Long number) {
            this.number = number;
            return this;
        }

        public Page.Builder withNumberOfElements(Long numberOfElements) {
            this.numberOfElements = numberOfElements;
            return this;
        }

        public Page.Builder withPageable(Pageable pageable) {
            this.pageable = pageable;
            return this;
        }

        public Page.Builder withSize(Long size) {
            this.size = size;
            return this;
        }

        public Page.Builder withSort(Sort sort) {
            this.sort = sort;
            return this;
        }

        public Page.Builder withTotalElements(Long totalElements) {
            this.totalElements = totalElements;
            return this;
        }

        public Page.Builder withTotalPages(Long totalPages) {
            this.totalPages = totalPages;
            return this;
        }

        public Page build() {
            Page page = new Page();
            page.first = first;
            page.last = last;
            page.number = number;
            page.numberOfElements = numberOfElements;
            page.pageable = pageable;
            page.size = size;
            page.sort = sort;
            page.totalElements = totalElements;
            page.totalPages = totalPages;
            return page;
        }

    }

}
