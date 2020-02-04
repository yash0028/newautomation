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
        articleI.handleArticleI();
        ArticleII articleII = new ArticleII(getDriver());
        articleII.handleArticleII();
        ArticleIII articleIII = new ArticleIII(getDriver());
        articleIII.handleArticleIII();
        ArticleIV articleIV = new ArticleIV(getDriver());
        articleIV.handleArticleIV();
        ArticleV articleV = new ArticleV(getDriver());
        articleV.handleArticleV();
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


    public void handleArticleI() {


            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }



    }

class ArticleII extends Article {
    public ArticleII(WebDriver driver) {
        super(driver);
    }


    public void handleArticleII() {

            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());

        }

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

    public void handleArticleV() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

}
class ArticleVI extends Article {
    public ArticleVI(WebDriver driver) {
        super(driver);
    }

    public void handleArticleVI() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

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