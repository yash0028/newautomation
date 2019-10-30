package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.nio.channels.MulticastChannel;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;

public class ProviderRoaster extends GenericInputPage
{
    private PageElements elements;
    String home = System.getProperty("user.dir");
    private static int MULTIPLE_PROVIDERS;
    private static int CANCEL_MULTIPLE_PROVIDERS;

    public ProviderRoaster(WebDriver driver)
    {
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void roasterAction(HashMap<String,String>hmap,String Roster)  {
        assert click("Provider Roster", clickRosterAction(hmap.get(Roster)));
        //waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();

    }
    public void roasterActionAsNone()  {
        assert click("Provider Roster", clickRosterAction("NONE"));        
        assert clickNext();
        assert waitForPageLoad();

    }
    public void downloadCurrentRoster(){
        assert clickNext();
        assert waitForPageLoad();
    }
    public void uploadCompletedRoster(HashMap<String,String>hmap){
        assert click("Upload", elements.uploadButton);
        pause(3);
        Path RosterFilePath = Paths.get(home, "src", "test", "resources","features","rcbridge","ProviderRoster",hmap.get("RosterFileName"));
        assert sendKeys("Search retro code",elements.chooseFile,RosterFilePath.toString());
        pause(3);
        assert clickNext();
        assert waitForPageLoad();
    }
    public void selectretrocode(HashMap<String,String>hmap){
        if(MULTIPLE_PROVIDERS>0){
            String[] retroCode= hmap.get("Retro code").split("//");
            int count=1;
            for(WebElement dropdownopen: elements.dropdown_open_list){
                click("Retro code dropdown open", dropdownopen);
                pause(1);
                if(count<=retroCode.length){
                    assert sendKeys("Search retro code",elements.retroCode,retroCode[count-1]);
                }else{
                    assert sendKeys("Search retro code",elements.retroCode,retroCode[retroCode.length-1]);
                }
                pause(1);
                assert click("Select retro code", elements.selectRetroCode.get(0));
                pause(3);
            }

        }else{
            click("Retro code dropdown open", elements.dropdown_open);
            pause(1);
            assert sendKeys("Search retro code",elements.retroCode,hmap.get("Retro code"));
            pause(1);
            assert click("Select retro code", elements.selectRetroCode.get(0));
        }

        //waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();
    }
    public void approachForProvider(HashMap<String,String>hmap){
        assert click("Select Approach For Provider",clickapproachForProvider(hmap.get("Select approach for provider entry")) );
        waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
        assert sendKeys("TIN",elements.enterTIN,hmap.get("TIN"));
        assert clickNext();
        assert waitForPageLoad();
    }
    public void approachForProvider(String approach){
        assert click("Select Approach For Provider",clickapproachForProvider(approach) );
        assert clickNext();
        assert waitForPageLoad();
    }
    public void selectProviders(HashMap<String,String>hmap){
        String[] providers = hmap.get("Select Providers").split("//");
        for(String provider :providers){
            assert sendKeys("Search provider",elements.selectProvider,provider.trim());
            pause(1);
            if(CommonMethods.isElementPresent(driver,By.xpath(elements.selectProviderWithNamenotFound))){
                elements.selectProvider.clear();
                IWebInteract.log.info("Provider Name [{}] NOT FOUND",provider.trim());
                continue;
            }else{
                assert click("Select provider", elements.selectProviderWithName.get(0));
                MULTIPLE_PROVIDERS++;
            }
            pause(1);
        }
        assert clickNext();
        assert waitForPageLoad();
    }
    public void providerStartDate(HashMap<String,String>hmap)
    {
        String date;
        if(MULTIPLE_PROVIDERS>0){
            String[] dates = hmap.get("Provider Start Date").split("//");
            for(int count=1;count<=MULTIPLE_PROVIDERS;count++){
                if(count<=dates.length){
                    if(dates[count-1].equals("today")){
                        date = CommonMethods.todaysDate();
                    }else{
                        date = CommonMethods.formatDate(dates[count-1]);
                    }
                    assert sendKeys("Provider Start Date",providerStartDate(count-1),date);
                }else{
                    assert sendKeys("Provider Start Date",providerStartDate(count-1),CommonMethods.todaysDate());
                }
            }

        }
        assert clickNext();
        assert waitForPageLoad();
        
    }
    public void enterTIN(HashMap<String,String>hmap){
        assert sendKeys("TIN",elements.enterTIN,hmap.get("TIN"));
        assert clickNext();
        assert waitForPageLoad();
    }
    public void enterMPIN(HashMap<String,String>hmap){
        assert sendKeys("MPIN",elements.enterTIN,hmap.get("MPIN"));
        assert clickNext();
        assert waitForPageLoad();
    }
    public void providerandcanceldate(HashMap<String,String>hmap)
    {
        String[] providers = hmap.get("providers to cancel").split("//");
        int count =0;
        boolean createNewRow = true;
        String date;
        for(String provider :providers){
            //click
            if(count>0 && createNewRow){
                pause(3);
                assert click("Add Provider Row",elements.addnewProvider);
                pause(1);
            }
            pause(3);
            if(createNewRow){
                assert click("Open Cancel Provider Dropdown",openCancelProviderDropdown(count));
            }
            pause(1);
            assert sendKeys("Search provider",elements.selectProvider,provider.trim());
            pause(1);
            if(CommonMethods.isElementPresent(driver,By.xpath(elements.selectProviderWithNamenotFound))){
                elements.selectProvider.clear();
                IWebInteract.log.info("Provider Name [{}] NOT FOUND",provider.trim());
                createNewRow=false;
                continue;
            }else{
                assert click("Select provider", elements.selectProviderWithName.get(0));
                createNewRow=true;
                count++;
                CANCEL_MULTIPLE_PROVIDERS++;
            }
            pause(1);

        }
        if(CommonMethods.isElementPresent(driver,By.xpath(elements.selectProviderpath))){
            if(elements.selectProvider.getAttribute("value").equals("")){
                click("Remove Provider Row",removeProviderrow(CANCEL_MULTIPLE_PROVIDERS));
            }
        }

        //write func to enter date
        if(CANCEL_MULTIPLE_PROVIDERS>0){
            String[] dates = hmap.get("Cancel Date").split("//");
            for(count=1;count<=CANCEL_MULTIPLE_PROVIDERS;count++){
                if(count<=dates.length){
                    if(dates[count-1].equals("today")){
                        date = CommonMethods.todaysDate();
                    }else{
                        date = CommonMethods.formatDate(dates[count-1]);
                    }
                    assert sendKeys("Provider Cancel Date",providerCancelDate(count-1),date);
                }else{
                    assert sendKeys("Provider Cancel Date",providerCancelDate(count-1),CommonMethods.todaysDate());
                }
            }

        }
        assert clickNext();
        assert waitForPageLoad();
    }
    public void cancelreason(HashMap<String,String>hmap)
    {
        String[] errorCodes= hmap.get("Cancel Reason Code").split("//");
        for(int count=1;count<=CANCEL_MULTIPLE_PROVIDERS;count++){
            assert click("Open Cancel Reason Dropdown",openCancelReasonDropdown(count-1));
            pause(1);
            if(count<=errorCodes.length){
                assert sendKeys("Search provider",elements.selectProvider,errorCodes[count-1]);
            }else{
                assert sendKeys("Search provider",elements.selectProvider,errorCodes[errorCodes.length-1]);
            }
            pause(1);
            assert click("Select provider", elements.selectCancelReason.get(0));
            pause(1);
        }
        assert clickNext();
        assert waitForPageLoad();

    }




    public WebElement providerStartDate(int Count){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@name,'StartDate_Multi__SL_Repeat_AddEntry.DMCQ_Multi.count_"+Count+"')]"});
    }
    public WebElement clickRosterAction(String Name){
        return findElement(getDriver(), new String[]{"xpath","//span/input[contains(@value, '"+Name+"')]"});
    }
    public WebElement clickapproachForProvider(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+Name+"')]"});
    }
    public WebElement openCancelProviderDropdown(int count){
        return findElement(getDriver(), new String[]{"xpath","//select[contains(@name,'DMCQ__SL_Repeat_Cancel.rpti_"+count+"')]/following::span[4]"});
    }
    public WebElement openCancelReasonDropdown(int count){
        return findElement(getDriver(), new String[]{"xpath","//select[contains(@name,'ReasonCode__SL_Repeat_Cancel.rpti_"+count+"')]/following::span[4]"});
    }
    public WebElement providerCancelDate(int count){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@name,'CancelDate__SL_Repeat_Cancel.rpti_"+count+"')]"});
    }
    public WebElement removeProviderrow(int count){
        return findElement(getDriver(), new String[]{"xpath","//select[contains(@name,'ReasonCode__SL_Repeat_Cancel.rpti_"+count+"')]/following::button[3]"});
    }



    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//span[contains(@class,'select2-selection__rendered')]")
        private WebElement dropdown_open;
        @FindBy(xpath = "//span[contains(@class,'select2-selection__rendered')]")
        private List<WebElement> dropdown_open_list;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement retroCode;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectRetroCode;
        @FindBy(xpath = "//tr/td[3]/button[contains(@title,'Upload')]")
        private WebElement uploadButton;
        @FindBy(xpath = "//input[contains(@name,'UploadedRoster')]")
        private WebElement chooseFile;
        @FindBy(xpath = "//input[contains(@name,'AddEntry.TIN_Multi')]")
        private WebElement enterTIN;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement selectProvider;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectProviderWithName;
        @FindBy(xpath = "//input[contains(@name,'StartDate')]")
        private WebElement providerStartDate;
        @FindBy(xpath = "//tfoot[contains(@class,'repeater-table-add-items')]//button")
        private WebElement addnewProvider;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectCancelReason;

        private String message= "//div[contains(@class,'DialogBox')]";
        private String selectProviderpath= "//input[@type='search']";
        private String selectProviderWithNamenotFound= "//span[@class='select2-results']//li[contains(.,'No results found')]";


        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
