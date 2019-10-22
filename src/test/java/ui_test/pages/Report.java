package ui_test.pages;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import exari_test.eif.data.EifReport;
import exari_test.hive.Hive;
import org.apache.commons.lang3.StringUtils;
import util.configuration.ConfigStub;
import util.configuration.IConfigurable;
import util.file.FileHandler;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import static rest_api_test.api.datadog.IDataDogInteract.log;

public class Report {
    private static EifReport eifReport;
    private static Report report;
    public Report(){
        init();
    }
    private void init(){
        if(eifReport==null){
            eifReport = new EifReport();
        }
    }

    public static EifReport getReport() {
        return eifReport;
    }
    public static Report getReportInstance() {
        if(report==null){
            report = new Report();
        }
        return report;
    }
    public void saveReport(String reportName)
    {
        String home = System.getProperty("user.dir");
        // Save Report
        IConfigurable config = new ConfigStub();
        if (config.configGetBoolean("hive.saveReport")) {
            Gson gson = new GsonBuilder()
                    .registerTypeHierarchyAdapter(List.class, new Hive.ListAdapter())
                    .setPrettyPrinting()
                    .create();
            /*
            // Find path to report
            StringBuilder path = new StringBuilder();
            path.append(config.configGetOptionalString("hive.reportLocation").orElse("output/report/"));
            if (!path.toString().endsWith("/")) {
                path.append("/");
            }
            */
            // Find name of report
            reportName = StringUtils.appendIfMissing(reportName, ".json");
            Path path = Paths.get(home, "src", "test", "resources","output","report",reportName);
            // Try to save report
            try {
                FileHandler.getInstance().saveFile(path.toString(), gson.toJson(this.eifReport));
            } catch (Exception e) {
                e.printStackTrace();
            }
            log.info("Report Generated at : {}", path);

        }
    }
}
