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
        PESInputPage pesInputPage = new PESInputPage(driver);
        assert pesInputPage.confirmCurrentPage();

        if (mpin != null && !mpin.isEmpty()) {
            test &= pesInputPage.enterMPIN(mpin);
        }

        if (tin != null && !tin.isEmpty()) {
            test &= pesInputPage.enterTIN(tin);
        }

        pesInputPage.clickNext();

        //Handle PES Response Page
        PESResponsePage pesResponsePage = new PESResponsePage(driver);
        assert pesResponsePage.confirmCurrentPage();

        //Ignore index for now, just select option 1
        pesResponsePage.selectCounterPartyOption1();
        pesResponsePage.clickNext();

        return test;
    }

    public boolean enterMarketNumber(String marketNumber) {
        boolean test = true;
        //Handle Market Number Page
        MarketNumberInputPage marketNumberInputPage = new MarketNumberInputPage(driver);
        assert marketNumberInputPage.confirmCurrentPage();

        test &= marketNumberInputPage.selectMarketNumber(marketNumber);
        marketNumberInputPage.clickNext();

        //Handle RFP Response Master Page, no action
        RFPResponseMasterPage rfpResponseMasterPage = new RFPResponseMasterPage(driver);
        if (rfpResponseMasterPage.confirmCurrentPage()) {
            rfpResponseMasterPage.clickNext();
        }

//        handleArbitrationCounty();

        return test;
    }

    public boolean selectPaperType(String paperType) {
        boolean test = true;
        DocumentSelectionPage documentSelectionPage = new DocumentSelectionPage(driver);
        assert documentSelectionPage.confirmCurrentPage();

        test &= documentSelectionPage.selectRadioOption(paperType);
        documentSelectionPage.clickNext();

        test &= handleArbitrationCounty();

        return test;
    }

    public boolean selectHBPOption(String option) {
        boolean test = true;
        //Handle HBP Red Door
        HBPRedDoorPage hbpRedDoorPage = new HBPRedDoorPage(driver);
        assert hbpRedDoorPage.confirmCurrentPage();
        if (option.equalsIgnoreCase("yes")) {
            test &= hbpRedDoorPage.selectHospitalBasedProvidersOptionYes();
            //Do some extra stuff
        } else {
            test &= hbpRedDoorPage.selectHospitalBasedProvidersOptionNo();
        }
        hbpRedDoorPage.clickNext();

        return test;
    }

    public boolean enterPhyconNumber(String phycon) {
        boolean test = true;
        ContractDetailsPhyconPage contractDetailsPhyconPage = new ContractDetailsPhyconPage(driver);
        assert contractDetailsPhyconPage.confirmCurrentPage();

        test &= contractDetailsPhyconPage.enterPhyconNumber(phycon);
        contractDetailsPhyconPage.clickNext();

        return test;
    }

    public boolean enterAppendix1() {
        boolean test = true;
        //Handle Appendix 1 Page
        Appendix1Page appendix1Page = new Appendix1Page(driver);
        assert appendix1Page.confirmCurrentPage();

        test &= appendix1Page.selectAdditionalManualOptionNo();
        appendix1Page.clickNext();

        return test;
    }

    public boolean enterAppendix2() {
        boolean test = true;
        //Handle Appendix 2 Page
        Appendix2Page appendix2Page = new Appendix2Page(driver);
        assert appendix2Page.confirmCurrentPage();

        test &= appendix2Page.selectMedicareAdvantageIfAvailable();
        appendix2Page.clickNext();

        return test;
    }

    public boolean enterPaymentAppendix() {
        boolean test = true;
        //Handle Payment Appendix
        PaymentAppendixPage paymentAppendixPage = new PaymentAppendixPage(driver);
        assert paymentAppendixPage.confirmCurrentPage();

        test &= paymentAppendixPage.selectNonStandardOptionNo();
        test &= paymentAppendixPage.selectIncludeAllPayer();
        paymentAppendixPage.clickNext();

        //Handle Select All Payer again
        if (paymentAppendixPage.confirmCurrentPage()) {
            test &= paymentAppendixPage.selectIncludeAllPayer();
            paymentAppendixPage.clickNext();
        }

        //Handle Fee Schedule ID
        if (paymentAppendixPage.confirmCurrentPage()) {
            test &= paymentAppendixPage.enterFeeSchedule("1234");
            paymentAppendixPage.clickNext();
        }

        return test;
    }

    public boolean selectRegulatoryAppendix(String search, int index) {
        boolean test = true;
        //Handle Regulatory Appendix
        RegulatoryAppendixPage regulatoryAppendixPage = new RegulatoryAppendixPage(driver);
        assert regulatoryAppendixPage.confirmCurrentPage();

        test &= regulatoryAppendixPage.selectRegulatory(search, index);
        regulatoryAppendixPage.clickNext();

        return test;
    }

    public boolean selectProviderRoster() {
        boolean test = true;
        //Handle Provider Roster
        ProviderRosterPage providerRosterPage = new ProviderRosterPage(driver);
        assert providerRosterPage.confirmCurrentPage();

        test &= providerRosterPage.selectRosterActionNone();
        providerRosterPage.clickNext();

        return test;
    }

    public boolean previewContractAndComplete() {
        ContractPreviewPage contractPreviewPage = new ContractPreviewPage(driver);
        assert contractPreviewPage.confirmCurrentPage();
        contractPreviewPage.clickNext();

        WizardCompletePage wizardCompletePage = new WizardCompletePage(driver);
        assert wizardCompletePage.confirmCurrentPage();

        return wizardCompletePage.clickNext();
    }

    public boolean finalCapture() {
        boolean test = true;
        //Handle Effective Date
        ContractDetailsEffectiveDatePage contractDetailsEffectiveDatePage = new ContractDetailsEffectiveDatePage(driver);
        assert contractDetailsEffectiveDatePage.confirmCurrentPage();

        test &= contractDetailsEffectiveDatePage.setEffectiveDate("October 4, 2018");
        contractDetailsEffectiveDatePage.clickNext();

        //Handle Provider Signatory
        ProviderSignatoryPage providerSignatoryPage = new ProviderSignatoryPage(driver);
        assert providerSignatoryPage.confirmCurrentPage();

        test &= providerSignatoryPage.enterSignerName("Alex Berns");
        test &= providerSignatoryPage.enterSignDate("October 20, 2018");
        test &= providerSignatoryPage.enterSignerEmail("alex.berns@optum.com");
        providerSignatoryPage.clickNext();

        //Handle Our Signatory
        OurSignatoryPage ourSignatoryPage = new OurSignatoryPage(driver);
        assert ourSignatoryPage.confirmCurrentPage();

        test &= ourSignatoryPage.enterSignerName("Suruchi Sinha");
        test &= ourSignatoryPage.enterSignDate("October 20, 2018");
        ourSignatoryPage.clickNext();

        //Handle Roster Action, no action
        ProviderRosterPage providerRosterPage = new ProviderRosterPage(driver);
        assert providerRosterPage.confirmCurrentPage();
        providerRosterPage.clickNext();

        //Handle Preview and complete
        test &= previewContractAndComplete();

        return test;
    }

    /*
    HELPER METHODS
     */

    private boolean handleArbitrationCounty() {
        //Handle Provider Detail
        ProviderDetailsReviewPage providerDetailsReviewPage = new ProviderDetailsReviewPage(driver);
        if (providerDetailsReviewPage.confirmCurrentPage()) {
            //Select and go to next
            return providerDetailsReviewPage.selectArbitrationCounty(0) &&
                    providerDetailsReviewPage.clickNext();
        }

        return true;
    }
}
