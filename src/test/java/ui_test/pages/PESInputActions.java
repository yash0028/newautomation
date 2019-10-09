package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import util.configuration.IConfigurable;

import java.util.HashMap;
import java.util.Map;

public class PESInputActions implements IWebInteract, IFactoryPage, IConfigurable {

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.npi);
    }
    private WebDriver driver;
    private PageElements elements;

    public PESInputActions(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
    }

    public void enterData(HashMap<String, String> readFile, HashMap<String, String> elements) throws InterruptedException {
        for (Map.Entry<String, String> entry : readFile.entrySet()) {
            System.out.println("Heloo");
            System.out.println("elements key"+entry.getKey()+"Element Value"+entry.getValue() );
            if (elements.containsKey(entry.getKey())) {
                //System.out.println("if statement");
                System.out.println("elements key"+entry.getKey()+"Element Value"+entry.getValue() );

                performAction(entry.getKey(), entry.getValue());
            }
        }
        commonMethod.next();
    }


    private void performAction(String key, String value)
    {
        if(key.equalsIgnoreCase("MPIN")){
//            System.out.println(key + value);
            //InterviewElements.mpin
            driver.findElement(By.xpath("//*[@id=\"xri-Request.MPIN-UTQField_1\"]")).sendKeys(value);
            //Aisehee.InterviewElements.mpin.sendKeys(value);

        }

        if(key.equalsIgnoreCase("TIN")){
//            System.out.println(key + value);
            driver.findElement(By.id("xri-Request.TIN-UTQField_2")).sendKeys(value);
            //InterviewElements.tin.sendKeys(value);
        }


        if(key.equalsIgnoreCase("provider first name")){
//            System.out.println(key + value);
            driver.findElement(By.xpath("//*[@id=\"xri-Request.TIN-UTQField_2\"]")).sendKeys(value);
            //InterviewElements.tin.sendKeys(value);
        }

        if(key.equalsIgnoreCase("provider last name")){
//            System.out.println(key + value);
            driver.findElement(By.xpath("//*[@id=\"xri-Request.TIN-UTQField_2\"]")).sendKeys(value);
            //InterviewElements.tin.sendKeys(value);
        }

        if(key.equalsIgnoreCase("city")){
//            System.out.println(key + value);
            driver.findElement(By.xpath("//*[@id=\"xri-Request.TIN-UTQField_2\"]")).sendKeys(value);
            //InterviewElements.tin.sendKeys(value);
        }

        if(key.equalsIgnoreCase("state")){
//            System.out.println(key + value);
            driver.findElement(By.xpath("//*[@id=\"xri-Request.TIN-UTQField_2\"]")).sendKeys(value);
            //InterviewElements.tin.sendKeys(value);
        }

        if(key.equalsIgnoreCase("zip")){
//            System.out.println(key + value);
            driver.findElement(By.xpath("//*[@id=\"xri-Request.TIN-UTQField_2\"]")).sendKeys(value);
            //InterviewElements.tin.sendKeys(value);
        }

        if(key.equalsIgnoreCase("npi")){
//            System.out.println(key + value);
            driver.findElement(By.xpath("//*[@id=\"xri-Request.TIN-UTQField_2\"]")).sendKeys(value);
            //InterviewElements.tin.sendKeys(value);
        }
    }

    private static class PageElements{

        @FindBy(xpath = "xpath=//*[@id=\"xri-Request.MPIN-UTQField_1\"]")
        private static WebElement mpin;


        @FindBy(xpath = "xpath=//span[@id='UTQField_2']/input")
        private static WebElement tin;

        @FindBy(xpath = "xpath=//span[@id='UTQField_3']/input")
        private WebElement providerfirstname;

        @FindBy(xpath = "xpath=//span[@id='UTQField_4']/input")
        private WebElement providerlastname;

        @FindBy(xpath = "xpath=//span[@id='UTQField_5']/input")
        private WebElement city;

        @FindBy(xpath = "xpath=//span[@id='UTQField_6']/input")
        private WebElement state;

        @FindBy(xpath = "xpath=//span[@id='UTQField_7']/input")
        private WebElement zip;

        @FindBy(xpath = "xpath=//span[@id='UTQField_8']/input")
        private WebElement npi;

        PageElements(SearchContext context) {
            super(context);
        }
    }

}