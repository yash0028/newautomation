package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.util.HashMap;

public class WizardComplete extends GenericInputPage {
    private PageElements elements;

    public WizardComplete(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void completeWizard() {
        waitTillClickable(elements.completeWizardElement, 10);
        try {

            this.elements.completeWizardElement.click();
        } catch (Exception e)
        {
        	 System.out.println("Taking long time");       	
        }
        try {
            IWebInteract.log.trace("clicked on {}", "Complete Wizard");
            Assert.assertTrue(waitForPageLoad(90));
            confirmDashboard();
        } catch (Exception e) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.wizardCompleteXpath))) {
                WebElement wc = getDriver().findElement(By.xpath(elements.wizardCompleteXpath));
                waitForElementToDissapear(getDriver(), wc);
                if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.wizardCompleteXpath))) {
                    Assert.fail("Complete Wizard process is taking long time than expected.");
                }


            } else {
                confirmDashboard();
            }

        }
        IWebInteract.log.info("Contract Link : {}", getDriver().getCurrentUrl());
    }

    public void confirmDashboard() {
        boolean dasboard = false;
        for (int count = 0; count <= 2; count++) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.getheaderTabHome))) {
                dasboard = true;
                break;
            } else {
                refreshPage();
                pause(3);
            }
        }
        if (dasboard) {
            waitTillVisible(elements.headerTabHome);
            if (isVisible(elements.headerTabHome)) {
                highlight(elements.headerTabHome);
            }
        } else {
            Assert.fail("Unable to load Dashboard.");
        }
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//a[contains(@class,'nextButtonLink')]")
        private WebElement completeWizardElement;
        @FindBy(xpath = "//div[@title='Home']")
        public WebElement headerTabHome;

        private String wizardCompleteXpath = "//h2[contains(.,'Wizard Complete')]";
        private String getheaderTabHome = "//div[@title='Home']";

        public PageElements(SearchContext context) {
            super(context);
        }

    }

}