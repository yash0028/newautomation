package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class Article extends GenericInputPage
{

    public Article(WebDriver driver)
    {
        super(driver);

    }
    public void handleArticle(HashMap<String,String>hmap)
    {
        ArticleI articleI=new ArticleI(driver);
        articleI.handleArticleI();
        ArticleII articleII=new ArticleII(driver);
        articleII.handleArticleII();
        ArticleIII articleIII=new ArticleIII(driver);
        articleIII.handleArticleIII();
        ArticleIV articleIV=new ArticleIV(driver);
        articleIV.handleArticleIV();
        ArticleV articleV=new ArticleV(driver);
        articleV.handleArticleV();
        ArticleVI articleVI=new ArticleVI(driver);
        articleVI.handleArticleVI();
        ArticleVII articleVII=new ArticleVII(driver);
        articleVII.handleArticleVII();
        ArticleVIII articleVIII=new ArticleVIII(driver);
        articleVIII.handleArticleVIII(hmap);
        ArticleIX articleIX=new ArticleIX(driver);
        articleIX.handleArticlIX();
        ArticleX articleX=new ArticleX(driver);
        articleX.handleArticleX();
    }
}

class ArticleI extends Article
{
     public ArticleI(WebDriver driver) {
        super(driver);
    }


    public void handleArticleI()
        {
        assert clickNext();
        assert waitForPageLoad();
        }

}

class ArticleII extends Article
{
     public ArticleII(WebDriver driver) {
        super(driver);
    }


    public void handleArticleII()
    {
        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleIII extends Article
{
    public ArticleIII(WebDriver driver) {
        super(driver);
    }


    public void handleArticleIII()
    {
        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleIV extends Article
{
    public ArticleIV(WebDriver driver) {
        super(driver);
    }

    public void handleArticleIV()
    {
        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleV extends Article
{
    public ArticleV(WebDriver driver) {
        super(driver);
    }

    public void handleArticleV()
    {
        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleVI extends Article
{
    public ArticleVI(WebDriver driver) {
        super(driver);
    }

    public void handleArticleVI()
    {
        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleVII extends Article
{
    public ArticleVII(WebDriver driver) {
        super(driver);
    }

    public void handleArticleVII()
    {
        assert clickNext();
        assert waitForPageLoad();
        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleVIII extends Article
{
    public ArticleVIII(WebDriver driver) {
        super(driver);
    }

    public WebElement selectArticle(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+Name+"')]"});
    }

    public void handleArticleVIII(HashMap<String,String> hmap)
    {
        assert setCheckBox("Select Article 8", selectArticle(hmap.get("Article 8")), true);

        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleIX extends Article
{
    public ArticleIX(WebDriver driver) {
        super(driver);
    }

    public void handleArticlIX()
    {
        assert clickNext();
        assert waitForPageLoad();
    }
}

class ArticleX extends Article
{
    public ArticleX(WebDriver driver) {
        super(driver);
    }

    public void handleArticleX()
    {
        assert clickNext();
        assert waitForPageLoad();
    }
}