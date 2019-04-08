
package rest_api_test.api.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class StorageNode {

    @Expose
    private String uuid;

    public String getUuid() {
        return uuid;
    }

    public static class Builder {

        private String uuid;

        public StorageNode.Builder withUuid(String uuid) {
            this.uuid = uuid;
            return this;
        }

        public StorageNode build() {
            StorageNode storageNode = new StorageNode();
            storageNode.uuid = uuid;
            return storageNode;
        }

    }

}
