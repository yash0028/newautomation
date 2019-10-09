package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.HashMap;

public class ProviderDetails {
    private WebDriver driver;
    public ProviderDetails(WebDriver driver){
        this.driver = driver;
    }

    public void selectEntry(HashMap<String,String> data , HashMap<String,String> elements) throws InterruptedException
    {
     text_dropdown(data.get("Market Number"));
    }

    public void text_dropdown(String answer) throws InterruptedException {


        System.out.println("Answer is "+answer);
        System.out.println("Inside text_dropdown");
        WebElement dropdown_open = driver.findElement(By.xpath("//span[@class='select2-selection__arrow']"));

        //Check for empty

        if (dropdown_open == null) {
//            return true;
            System.out.println("I am true");
        }
        //Open dropdown search
//        click("dropdown open", dropdown_open);
        Thread.sleep(4000);
        dropdown_open.click();

        System.out.println("dropdown_open click");
//        pause(1);

        //Enter search term
//        sendKeys("dropdown textbox", dropdown_textbox, answers.get(0));
//        pause(1);     System.out

        //dropdown_open.sendKeys(answer);

        Thread.sleep(2000);
        selectOption(answer);
        System.out.println("send key executed");



        //Click index option
//        int index = Integer.valueOf(answers.get(1));
//        try {
//            return click("dropdown option", interviewElements.dropdown_selection.get(index));
//        } catch (IndexOutOfBoundsException e) {
//            return false;
//        }
    }

    private void selectOption(String answer) throws InterruptedException {
        WebElement dropdown_value = driver.findElement(By.xpath("//li[contains(text(),"+answer+")]"));
        dropdown_value.click();
        Thread.sleep(2000);
        commonMethod.next();

    }

        public void previewProfile() throws InterruptedException {
            Thread.sleep(2000);
            commonMethod.next();
        }
}
