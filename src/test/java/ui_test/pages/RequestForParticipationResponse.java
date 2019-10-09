package ui_test.pages;

import org.openqa.selenium.WebDriver;

public class RequestForParticipationResponse
{
    private WebDriver driver;
    public RequestForParticipationResponse(WebDriver driver)
    {
        this.driver=driver;
    }

    public void performAction() throws InterruptedException {
        Thread.sleep(2000);
        commonMethod.next();

    }
}
