
package rest_api_test.api.datadog.models.hosts;

import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class HostInfo {

    @Expose
    private List<String> aliases;
    @Expose
    private List<String> apps;
    @SerializedName("host_name")
    private String hostName;
    @Expose
    private Long id;
    @SerializedName("is_muted")
    private Boolean isMuted;
    @SerializedName("last_reported_time")
    private Long lastReportedTime;
    @Expose
    private HostMetadata hostMetadata;
    @Expose
    private HostMetrics hostMetrics;
    @Expose
    private String name;
    @Expose
    private List<String> sources;
    @SerializedName("tags_by_source")
    private TagsBySource tagsBySource;
    @Expose
    private Boolean up;

    public List<String> getAliases() {
        return aliases;
    }

    public void setAliases(List<String> aliases) {
        this.aliases = aliases;
    }

    public List<String> getApps() {
        return apps;
    }

    public void setApps(List<String> apps) {
        this.apps = apps;
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getIsMuted() {
        return isMuted;
    }

    public void setIsMuted(Boolean isMuted) {
        this.isMuted = isMuted;
    }

    public Long getLastReportedTime() {
        return lastReportedTime;
    }

    public void setLastReportedTime(Long lastReportedTime) {
        this.lastReportedTime = lastReportedTime;
    }

    public HostMetadata getHostMetadata() {
        return hostMetadata;
    }

    public void setHostMetadata(HostMetadata hostMetadata) {
        this.hostMetadata = hostMetadata;
    }

    public HostMetrics getHostMetrics() {
        return hostMetrics;
    }

    public void setHostMetrics(HostMetrics hostMetrics) {
        this.hostMetrics = hostMetrics;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getSources() {
        return sources;
    }

    public void setSources(List<String> sources) {
        this.sources = sources;
    }

    public TagsBySource getTagsBySource() {
        return tagsBySource;
    }

    public void setTagsBySource(TagsBySource tagsBySource) {
        this.tagsBySource = tagsBySource;
    }

    public Boolean getUp() {
        return up;
    }

    public void setUp(Boolean up) {
        this.up = up;
    }

}
