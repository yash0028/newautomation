package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;
import java.util.List;

public class Article extends GenericInputPage {

    public Article(WebDriver driver) {

    }

    public void handleArticle(HashMap<String, String> hmap) {
        ArticleI articleI = new ArticleI(getDriver());
        articleI.handleArticleI(hmap);
        ArticleII articleII = new ArticleII(getDriver());
        articleII.handleArticleII(hmap);
        ArticleIII articleIII = new ArticleIII(getDriver());
        articleIII.handleArticleIII();
        ArticleIV articleIV = new ArticleIV(getDriver());
        articleIV.handleArticleIV();
        ArticleV articleV = new ArticleV(getDriver());
        articleV.handleArticleV(hmap);
        ArticleVI articleVI = new ArticleVI(getDriver());
        articleVI.handleArticleVI();
        ArticleVII articleVII = new ArticleVII(getDriver());
        articleVII.handleArticleVII(hmap);
        ArticleVIII articleVIII = new ArticleVIII(getDriver());
        articleVIII.handleArticleVIII(hmap);
        ArticleIX articleIX = new ArticleIX(getDriver());
        articleIX.handleArticlIX();
        ArticleX articleX = new ArticleX(getDriver());
        articleX.handleArticleX();
    }
}

class ArticleI extends Article {
    public ArticleI(WebDriver driver) {
        super(driver);
    }


    public void handleArticleI(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(article1Xpath))){
            for(WebElement elem: getAllInput(hmap.get("Article 1"))){
                Assert.assertTrue(click("Article 1",elem));
                waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
            }
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(article1Xpath))) {
            WebElement elem=getDriver().findElement(By.xpath(Alternate));
            Assert.assertTrue(click("Alternate 1",elem));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(article1Xpath))) {
            Exhibit1(hmap);

            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }


            ContractDetails co = new ContractDetails(getDriver());
        co.contractEffectiveDate(hmap);

            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

    public List<WebElement> getAllInput(String answer){
        return getDriver().findElements(By.xpath("//input[contains(@value,'"+answer+"')]"));
    }
    private String article1Xpath = "//p[contains(.,'Article I')]";
    private String message = "//div[contains(@class,'DialogBox')]";
    private String Alternate = "//input[contains(@value,'Alternate 1')]";

    private String Date = "//input[contains(@id,'xri-Exhibit1Affiliates_Date')]";



    public void Exhibit1(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(message)));
        String date;
        if (hmap.get("Contract Effective Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Contract Effective Date"));
        }
        waitForPageLoad(60);
        WebElement elem=getDriver().findElement(By.xpath(Date));
        Assert.assertTrue(sendKeys("Contract Effective Date", elem, date));

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }}

class ArticleII extends Article {
    public ArticleII(WebDriver driver) {
        super(driver);
    }


    public void handleArticleII(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(article7Xpath))){
            for(WebElement elem: getAllInput(hmap.get("Article 2"))){
                Assert.assertTrue(click("Article 2",elem));
                waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
            }
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());

        }
    }
    public List<WebElement> getAllInput(String answer){
        return getDriver().findElements(By.xpath("//input[contains(@value,'"+answer+"')]"));
    }
    private String article7Xpath = "//p[contains(.,'Article II')]";
    private String message = "//div[contains(@class,'DialogBox')]";

}

class ArticleIII extends Article {
    public ArticleIII(WebDriver driver) {
        super(driver);
    }


    public void handleArticleIII() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
}

class ArticleIV extends Article {
    public ArticleIV(WebDriver driver) {
        super(driver);
    }

    public void handleArticleIV() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
}

class ArticleV extends Article {
    public ArticleV(WebDriver driver) {
        super(driver);
    }

    public void handleArticleV(HashMap<String, String> hmap) {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        //  waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        //if(CommonMethods.isElementPresent(getDriver(),By.xpath(article5Xpath))) {
        //  for (WebElement elem : getAllInput(hmap.get("Article 5"))) {
        //    Assert.assertTrue(click("Article 5", elem));
        //  waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(message)));
        // }
        // Assert.assertTrue(clickNext());
        // Assert.assertTrue(waitForPageLoad());
        // }
        //   waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        //  if(CommonMethods.isElementPresent(getDriver(),By.xpath(article5Xpath))) {
        //    WebElement elem=getDriver().findElement(By.xpath(Alternate));
        //   Assert.assertTrue(click("Alternate 1",elem));
        //  Assert.assertTrue(clickNext());
        // Assert.assertTrue(waitForPageLoad());
        //    }
        // }
        //public List<WebElement> getAllInput(String answer){
        //  return getDriver().findElements(By.xpath("//input[contains(@value,'"+answer+"')]"));
        //}
        //private String article5Xpath = "//p[contains(.,'Article V')]";
        //private String message = "//div[contains(@class,'DialogBox')]";
        //private String Alternate = "//input[contains(@value,'Alternate 1')]";
    }

}
class ArticleVI extends Article {
    public ArticleVI(WebDriver driver) {
        super(driver);
    }

    public void handleArticleVI() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        // public void handleArticleVI(HashMap<String, String> hmap) {
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        // if(CommonMethods.isElementPresent(getDriver(),By.xpath(article6Xpath))){
        //   for(WebElement elem: getAllInput(hmap.get("Article 6"))){
        //     Assert.assertTrue(click("Article 6",elem));
        //   waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        //}
        //Assert.assertTrue(clickNext());
        //Assert.assertTrue(waitForPageLoad());

        //}
        //}
        //public List<WebElement> getAllInput(String answer){
        //   return getDriver().findElements(By.xpath("//input[contains(@value,'"+answer+"')]"));
        //}
        //private String article6Xpath = "//p[contains(.,'Article VI')]";
        //private String message = "//div[contains(@class,'DialogBox')]";
    }

}
class ArticleVII extends Article {
    public ArticleVII(WebDriver driver) {
        super(driver);
    }

    public void handleArticleVII(HashMap<String, String> hmap) {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(article7Xpath))){
            for(WebElement elem: getAllInput(hmap.get("Article 7"))){
                Assert.assertTrue(click("Article 7",elem));
                waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
            }
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(article7Xpath))) {
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }
    public List<WebElement> getAllInput(String answer){
        return getDriver().findElements(By.xpath("//input[contains(@value,'"+answer+"')]"));
    }
    private String article7Xpath = "//p[contains(.,'Article VII')]";
    private String message = "//div[contains(@class,'DialogBox')]";
}

class ArticleVIII extends Article {
    public ArticleVIII(WebDriver driver) {
        super(driver);
    }

    public WebElement selectArticle(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + Name + "')]"});
    }

    public void handleArticleVIII(HashMap<String, String> hmap) {
        if (selectArticle(hmap.get("Article 8")).getAttribute("type").equals("checkbox")) {
            Assert.assertTrue(setCheckBox("Select Article 8", selectArticle(hmap.get("Article 8")), true));
        } else if (selectArticle(hmap.get("Article 8")).getAttribute("type").equals("radio")) {
            Assert.assertTrue(click("Select Article 8", selectArticle(hmap.get("Article 8"))));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
}

class ArticleIX extends Article {
    public ArticleIX(WebDriver driver) {
        super(driver);
    }

    public void handleArticlIX() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        // public void handleArticlIX(HashMap<String, String> hmap) {
        //  waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        //if(CommonMethods.isElementPresent(getDriver(),By.xpath(article9Xpath))){
        //  for(WebElement elem: getAllInput(hmap.get("Article 9"))){
        //    Assert.assertTrue(click("Article 9",elem));
        //  waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(message)));
        // }
        // Assert.assertTrue(clickNext());
        // Assert.assertTrue(waitForPageLoad());

        //}
        //}
        //public List<WebElement> getAllInput(String answer){
        //  return getDriver().findElements(By.xpath("//input[contains(@value,'"+answer+"')]"));
        //}
        //private String article9Xpath = "//p[contains(.,'Article IX')]";
        //private String message = "//div[contains(@class,'DialogBox')]";
    }
}

class ArticleX extends Article {
    public ArticleX(WebDriver driver) {
        super(driver);
    }

    public void handleArticleX() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


}