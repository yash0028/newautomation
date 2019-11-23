package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class SuppotingDocumentSummary extends GenericInputPage {
    public SuppotingDocumentSummary(WebDriver driver) {
    }

    public void reviewSupportingDocument() {
         clickNext();
         waitForPageLoad();
    }
}
