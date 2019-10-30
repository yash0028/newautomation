package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;

public class ProviderRoaster extends GenericInputPage
{
    private PageElements elements;
    String home = System.getProperty("user.dir");

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
        click("Retro code dropdown open", this.elements.dropdown_open);
        pause(1);
        assert sendKeys("Search retro code",elements.retroCode,hmap.get("Retro code"));
        pause(1);
        assert click("Select retro code", elements.selectRetroCode.get(0));
        //waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();
    }
    public void approachForProvider(HashMap<String,String>hmap){
        assert click("Select Approach For Provider",clickapproachForProvider(hmap.get("Select approach for provider entry")) );
        assert clickNext();
        assert waitForPageLoad();
    }
    //Murty New
    public void approachForProvider(String approach){
        assert click("Select Approach For Provider",clickapproachForProvider(approach) );
        assert clickNext();
        assert waitForPageLoad();
    }
    public void selectProviders(HashMap<String,String>hmap){

        assert sendKeys("Search provider",elements.selectProvider,hmap.get("Select Providers"));
        pause(1);
        assert click("Select provider", elements.selectProviderWithName.get(0));
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
    public void providerStartDate(HashMap<String,String>hmap)
    {
        String date;
        if(hmap.get("Provider Start Date").equals("today")){
            date = CommonMethods.todaysDate();
        }else{
            date = CommonMethods.formatDate(hmap.get("Provider Start Date"));
        }
        assert sendKeys("Provider Start Date",elements.providerStartDate,date);
        assert clickNext();
        assert waitForPageLoad();
    }
    public WebElement clickRosterAction(String Name){
        return findElement(getDriver(), new String[]{"xpath","//span/input[contains(@value, '"+Name+"')]"});
    }
    public WebElement clickapproachForProvider(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+Name+"')]"});
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//span[contains(@class,'select2-selection__rendered')]")
        private WebElement dropdown_open;
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
        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
