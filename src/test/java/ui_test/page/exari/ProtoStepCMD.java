package ui_test.page.exari;

import exari_test.eif.flow.ContractFlow;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import util.TimeKeeper;
import util.configuration.IConfigurable;

public class ProtoStepCMD implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(ProtoStepCMD.class);
    public DashboardPage dashboardPage;
    public ContractPage contractPage;
    public GenericSitePage sitePage;
    private WebDriver driver;
    private ContractFlow flow;


    /*
    CONSTRUCTOR
    */

    public ProtoStepCMD(WebDriver driver) {
        this.driver = driver;
    }

    /*
    CLASS METHODS
    */

    public ContractFlow getFlow() {
        return this.flow;
    }

    public void setFlow(ContractFlow flow) {
        this.flow = flow;
    }

    public ProtoStepCMD logincmd(String urlKey) {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();

        try {
            String url = configGetOptionalString(urlKey).orElse("");
            driver.get(url);
            log.info(driver.getTitle());




            return this;
        } catch (Exception e) {
//            if (flow.getReport() != null) {
//                flow.getReport().markLogin(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
//            }
            throw e;
        }
    }


    public ProtoStepCMD logincmd() {
        String env = configGetOptionalString("cmd.environment").orElse("");
        String urlkey;
        switch (env.toUpperCase()) {
            case "DEV":
                urlkey = "cmd.devURL";
                break;
            case "TEST":
                urlkey = "cmd.testURL";
                break;
            case "STAGE":
                urlkey = "cmd.stageURL";
                break;
            default:
                urlkey = "cmd.devURL";
                break;
        }
        return logincmd(urlkey);
    }




    
    /*
    UTILITY CLASS
    */
}
