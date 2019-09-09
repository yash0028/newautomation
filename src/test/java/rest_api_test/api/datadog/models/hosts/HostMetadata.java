
package rest_api_test.api.datadog.models.hosts;

import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class HostMetadata {

    @SerializedName("agent_checks")
    private List<List<String>> agentChecks;
    @SerializedName("agent_version")
    private String agentVersion;
    @Expose
    private Long cpuCores;
    @Expose
    private List<String> fbsdV;
    @Expose
    private String gohai;
    @SerializedName("host_id")
    private Long hostId;
    @Expose
    private List<String> macV;
    @Expose
    private String machine;
    @Expose
    private List<String> nixV;
    @Expose
    private String platform;
    @Expose
    private String processor;
    @Expose
    private String pythonV;
    @SerializedName("socket-fqdn")
    private String socketFqdn;
    @SerializedName("socket-hostname")
    private String socketHostname;
    @Expose
    private List<String> timezones;
    @Expose
    private List<String> winV;

    public List<List<String>> getAgentChecks() {
        return agentChecks;
    }

    public void setAgentChecks(List<List<String>> agentChecks) {
        this.agentChecks = agentChecks;
    }

    public String getAgentVersion() {
        return agentVersion;
    }

    public void setAgentVersion(String agentVersion) {
        this.agentVersion = agentVersion;
    }

    public Long getCpuCores() {
        return cpuCores;
    }

    public void setCpuCores(Long cpuCores) {
        this.cpuCores = cpuCores;
    }

    public List<String> getFbsdV() {
        return fbsdV;
    }

    public void setFbsdV(List<String> fbsdV) {
        this.fbsdV = fbsdV;
    }

    public String getGohai() {
        return gohai;
    }

    public void setGohai(String gohai) {
        this.gohai = gohai;
    }

    public Long getHostId() {
        return hostId;
    }

    public void setHostId(Long hostId) {
        this.hostId = hostId;
    }

    public List<String> getMacV() {
        return macV;
    }

    public void setMacV(List<String> macV) {
        this.macV = macV;
    }

    public String getMachine() {
        return machine;
    }

    public void setMachine(String machine) {
        this.machine = machine;
    }

    public List<String> getNixV() {
        return nixV;
    }

    public void setNixV(List<String> nixV) {
        this.nixV = nixV;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
        this.processor = processor;
    }

    public String getPythonV() {
        return pythonV;
    }

    public void setPythonV(String pythonV) {
        this.pythonV = pythonV;
    }

    public String getSocketFqdn() {
        return socketFqdn;
    }

    public void setSocketFqdn(String socketFqdn) {
        this.socketFqdn = socketFqdn;
    }

    public String getSocketHostname() {
        return socketHostname;
    }

    public void setSocketHostname(String socketHostname) {
        this.socketHostname = socketHostname;
    }

    public List<String> getTimezones() {
        return timezones;
    }

    public void setTimezones(List<String> timezones) {
        this.timezones = timezones;
    }

    public List<String> getWinV() {
        return winV;
    }

    public void setWinV(List<String> winV) {
        this.winV = winV;
    }

}
