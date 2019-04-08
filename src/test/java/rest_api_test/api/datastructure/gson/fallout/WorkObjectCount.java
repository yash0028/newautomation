
package rest_api_test.api.datastructure.gson.fallout;

import com.google.gson.annotations.Expose;
import io.restassured.response.Response;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class WorkObjectCount {

    @Expose
    private Long count;
    @Expose
    private List<CountByType> countByType;
    @Expose
    private String result;

    private Response response;

    public Long getCount() {
        return count;
    }

    public List<CountByType> getCountByType() {
        return countByType;
    }

    public String getResult() {
        return result;
    }

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    public static class Builder {

        private Long count;
        private List<CountByType> countByType;
        private String result;

        public WorkObjectCount.Builder withCount(Long count) {
            this.count = count;
            return this;
        }

        public WorkObjectCount.Builder withCountByType(List<CountByType> countByType) {
            this.countByType = countByType;
            return this;
        }

        public WorkObjectCount.Builder withResult(String result) {
            this.result = result;
            return this;
        }

        public WorkObjectCount build() {
            WorkObjectCount workObjectCount = new WorkObjectCount();
            workObjectCount.count = count;
            workObjectCount.countByType = countByType;
            workObjectCount.result = result;
            return workObjectCount;
        }

    }

}
