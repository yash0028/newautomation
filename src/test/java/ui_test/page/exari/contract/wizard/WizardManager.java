package ui_test.page.exari.contract.wizard;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.wizard.subpages.*;

public class WizardManager {

    private final WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public WizardManager(WebDriver driver) {
        this.driver = driver;
    }

    /*
    CLASS METHODS
     */

    public boolean searchPES(String mpin, String tin, int index) {
        boolean test = true;
        //Handle PES Input Page
        PESInputPage pesInputPage = this.getPESInputPage();
        assert pesInputPage.confirmCurrentPage();

        if (mpin != null && !mpin.isEmpty()) {
            test &= pesInputPage.enterMPIN(mpin);
        }

        if (tin != null && !tin.isEmpty()) {
            test &= pesInputPage.enterTIN(tin);
        }

        pesInputPage.clickNext();

        //Handle PES Response Page
        PESResponsePage pesResponsePage = this.getPESResponsePage();
        assert pesResponsePage.confirmCurrentPage();

        //Ignore index for now, just select option 1
        pesResponsePage.selectCounterPartyOption1();
        pesResponsePage.clickNext();

        return test;
    }

    public boolean enterMarketNumber(String marketNumber) {
        boolean test = true;
        //Handle Market Number Page
        MarketNumberInputPage marketNumberInputPage = this.getMarketNumberInputPage();
        assert marketNumberInputPage.confirmCurrentPage();

        test &= marketNumberInputPage.selectMarketNumber(marketNumber);
        marketNumberInputPage.clickNext();

        //Handle RFP Response Master Page, no action
        RFPResponseMasterPage rfpResponseMasterPage = this.getRFPResponseMasterPage();
        if (rfpResponseMasterPage.confirmCurrentPage()) {
            rfpResponseMasterPage.clickNext();
        }

        //Handle Provider Detail
        ProviderDetailsReviewPage providerDetailsReviewPage = this.getProviderDetailsReviewPage();
        if (providerDetailsReviewPage.confirmCurrentPage()) {
            test &= providerDetailsReviewPage.selectArbitrationCounty();
            providerDetailsReviewPage.clickNext();
        }

        return test;
    }

    public boolean selectPaperType(String paperType) {
        boolean test = true;
        DocumentSelectionPage documentSelectionPage = this.getDocumentSelectionPage();
        assert documentSelectionPage.confirmCurrentPage();

        test &= documentSelectionPage.selectRadioOption(paperType);
        documentSelectionPage.clickNext();

        return test;
    }

    public boolean selectHBPOption(String option) {
        boolean test = true;
        //Handle HBP Red Door
        HBPRedDoorPage hbpRedDoorPage = this.getHBPRedDoorPage();
        assert hbpRedDoorPage.confirmCurrentPage();
        if (option.equalsIgnoreCase("yes")) {
            test &= hbpRedDoorPage.selectHospitalBasedProvidersOptionYes();
            //Do some extra stuff
        } else {
            test &= hbpRedDoorPage.selectHospitalBasedProvidersOptionNo();
        }

        return test;
    }

    public boolean enterPhyconNumber(String phycon) {
        boolean test = true;
        ContractDetailsPage contractDetailsPage = this.getContractDetailsPage();
        assert contractDetailsPage.confirmCurrentPage();

        test &= contractDetailsPage.enterPhyconNumber(phycon);

        return test;
    }

    /*
    PAGE
     */

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

    public RFPResponseMasterPage getRFPResponseMasterPage() {
        return new RFPResponseMasterPage(driver);
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
