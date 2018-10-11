package ui_test.page.exari.contract.wizard;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.wizard.subpages.*;

public class ContractWizard {

    private final WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public ContractWizard(WebDriver driver) {
        this.driver = driver;
    }

    /*
    CLASS METHODS
     */

    public GenericInputPage getGenericInputPage() {
        return new GenericInputPage(driver);
    }

    public PESInputPage getPESInputPage() {
        return new PESInputPage(driver);
    }

    public PESResponsePage getPESResponsePage() {
        return new PESResponsePage(driver);
    }

    public DocumentSelectionPage getDocumentSelectionPage() {
        return new DocumentSelectionPage(driver);
    }

    public MarketNumberInputPage getMarketNumberInputPage() {
        return new MarketNumberInputPage(driver);
    }

    public ProviderDetailsReviewPage getProviderDetailsReviewPage() {
        return new ProviderDetailsReviewPage(driver);
    }

    public RFPResponsePart1Page getRFPResponsePart1Page() {
        return new RFPResponsePart1Page(driver);
    }

    public RFPResponsePart2Page getRFPResponsePart2Page() {
        return new RFPResponsePart2Page(driver);
    }

    public HBPRedDoorPage getHBPRedDoorPage() {
        return new HBPRedDoorPage(driver);
    }

    public Appendix1Page getAppendix1Page() {
        return new Appendix1Page(driver);
    }

    public Appendix2Page getAppendix2Page() {
        return new Appendix2Page(driver);
    }

    public PaymentAppendixPage getPaymentAppendixPage() {
        return new PaymentAppendixPage(driver);
    }

    public Appendix3Page getAppendix3Page() {
        return new Appendix3Page(driver);
    }

    public Appendix4Page getAppendix4Page() {
        return new Appendix4Page(driver);
    }

    public ContractDetailsPage getContractDetailsPage() {
        return new ContractDetailsPage(driver);
    }

    public InterviewSummaryPage getInterviewSummaryPage() {
        return new InterviewSummaryPage(driver);
    }

    public WizardCompletePage getWizardCompletePage() {
        return new WizardCompletePage(driver);
    }
}
