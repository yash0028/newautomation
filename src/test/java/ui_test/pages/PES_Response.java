package ui_test.pages;

import exari_test.eif.report.Result;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.IWebInteract;
import util.TimeKeeper;

import java.util.HashMap;
import java.util.List;

public class PES_Response extends GenericInputPage {
    private Report report = Report.getReportInstance();
    private long startTime;

    public PES_Response(WebDriver driver)
    {
        super(driver);
        this.startTime = TimeKeeper.getInstance().getCurrentMillisecond();

    }

    public void selectCounterParty(HashMap<String, String> hmap)
    {

        try{
            assert setCheckBox("CouterParty Name checkbox", counterPartyName(hmap.get("CounterPartyName")), true);
            assert clickNext();
            assert waitForPageLoad();
            if (report.getReport() != null) {
                report.getReport().markPESResponse(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }

        }catch(Exception e){
            if (report.getReport() != null) {
                report.getReport().markPESResponse(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }
            e.printStackTrace();
        }
    }

    public void selectCounterPartyAddress(HashMap<String, String> hmap)  {

        try{
            assert setCheckBox("CounterParty address checkbox",counterPartyAddress(hmap.get("CounterPartyAddress")),true);
            assert clickNext();
            assert waitForPageLoad();
            if (report.getReport() != null) {
                report.getReport().markPESResponse(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }
            //for testing purpose
            if (report.getReport() != null) {
                report.saveReport(hmap.get("commonName"));
            }
        }catch(Exception e){
            if (report.getReport() != null) {
                report.getReport().markPESResponse(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }
            e.printStackTrace();
        }

    }

   public void specifyApproachForCounter(HashMap<String, String> hmap)  {

        try{
            assert setCheckBox("Approach for Counter Party",counterPartyApproach(hmap.get("CounterPartyApproach")),true);
            assert clickNext();
            assert waitForPageLoad();
            if (report.getReport() != null) {
                report.getReport().markPESResponse(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }
            }catch (Exception e){
            if (report.getReport() != null) {
                report.getReport().markPESResponse(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }
            e.printStackTrace();
        }

    }
    public WebElement counterPartyName(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public WebElement counterPartyAddress(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public WebElement counterPartyApproach(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }
}
