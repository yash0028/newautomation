package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

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
        articleVII.handleArticleVII();
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

    public void handleArticleVII() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
}

class ArticleVIII extends Article {
    public ArticleVIII(WebDriver driver) {
        super(driver);
    }

    public WebElement selectArticle(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + Name + "')]"});
    }

    public void handleArticleVIII(HashMap<String, String> hmap) {
        Assert.assertTrue( setCheckBox("Select Article 8", selectArticle(hmap.get("Article 8")), true));
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