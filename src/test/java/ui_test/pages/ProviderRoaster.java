package ui_test.pages;

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

    public WebElement clickRosterAction(String Name){
        return findElement(getDriver(), new String[]{"xpath","//span/input[contains(@value, '"+Name+"')]"});
    }

    public void roasterAction(HashMap<String,String>hmap,String Roster)  {
        assert click("Provider Roster", clickRosterAction(hmap.get(Roster)));
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
        assert clickNext();
        assert waitForPageLoad();
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

        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
