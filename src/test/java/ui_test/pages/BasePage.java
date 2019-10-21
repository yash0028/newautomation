package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;


public class BasePage extends GenericInputPage {

    private AdditionalLocations additionalLocations;
    private Appendix2 appendix2;
    private Article article;
    private ContractDetails contractDetails;
    private CounterpartyDetails counterpartyDetails;
    private DocumentSelection documentSelection;
    private GroupSummary groupSummary;
    private HBPsRedDoor hbPsRedDoor;
    private MarketExceptionGrid marketExceptionGrid;
    private MarketStrategyGrid marketStrategyGrid;
    private PaymentAppendix paymentAppendix;
    private PES_Response pes_response;
    private PESInputActions pesInputActions;
    private PracticeLocations practiceLocations;
    private ProviderDetails providerDetails;
    private ProviderRoaster providerRoaster;
    private RegulatoryAppendices regulatoryAppendices;
    private RequestForParticipationResponse requestForParticipationResponse;
    private SignatureBlock signatureBlock;
    private WizardComplete wizardComplete;
    private Amendements amendements;


    public Amendements getAmendements() {
        return (amendements==null) ? new Amendements(getDriver()) :amendements;
    }
    public AdditionalLocations getAdditionalLocations() {
        return (additionalLocations==null) ? new AdditionalLocations(getDriver()) :additionalLocations;
    }

    public Appendix2 getAppendix2() {
        return (appendix2==null) ? new Appendix2(getDriver()) :appendix2;
    }


    public Article getArticle() {
        return (article==null) ? new Article(getDriver()) :article;
    }


    public ContractDetails getContractDetails() {
        return (contractDetails==null) ? new ContractDetails(getDriver()) :contractDetails;
    }


    public CounterpartyDetails getCounterpartyDetails() {
        return (counterpartyDetails==null) ? new CounterpartyDetails(getDriver()) :counterpartyDetails;
    }

    public DocumentSelection getDocumentSelection() {
        return (documentSelection==null) ? new DocumentSelection(getDriver()) :documentSelection;
    }

    public GroupSummary getGroupSummary() {
        return (groupSummary==null) ? new GroupSummary(getDriver()) :groupSummary;
    }

    public HBPsRedDoor getHbPsRedDoor() {
        return (hbPsRedDoor==null) ? new HBPsRedDoor(getDriver()) :hbPsRedDoor;
    }

    public MarketExceptionGrid getMarketExceptionGrid() {
        return (marketExceptionGrid==null) ? new MarketExceptionGrid(getDriver()) :marketExceptionGrid;
    }

    public MarketStrategyGrid getMarketStrategyGrid() {
        return (marketStrategyGrid==null) ? new MarketStrategyGrid(getDriver()) :marketStrategyGrid;
    }

    public PaymentAppendix getPaymentAppendix() {
        return (paymentAppendix==null) ? new PaymentAppendix(getDriver()) :paymentAppendix;
    }

    public PES_Response getPes_response() {
        return (pes_response==null) ? new PES_Response(getDriver()) :pes_response;
    }

    public PESInputActions getPesInputActions() {
        return (pesInputActions==null) ? new PESInputActions(getDriver()) :pesInputActions;
    }

    public PracticeLocations getPracticeLocations() {
        return (practiceLocations==null) ? new PracticeLocations(getDriver()) :practiceLocations;
    }

    public ProviderDetails getProviderDetails() {
        return (providerDetails==null) ? new ProviderDetails(getDriver()) :providerDetails;
    }

    public ProviderRoaster getProviderRoaster() {
        return (providerRoaster==null) ? new ProviderRoaster(getDriver()) :providerRoaster;
    }

    public RegulatoryAppendices getRegulatoryAppendices() {
        return (regulatoryAppendices==null) ? new RegulatoryAppendices(getDriver()) :regulatoryAppendices;
    }

    public RequestForParticipationResponse getRequestForParticipationResponse() {
        return (requestForParticipationResponse==null) ? new RequestForParticipationResponse(getDriver()) :requestForParticipationResponse;
    }

    public SignatureBlock getSignatureBlock(){
        return (signatureBlock==null) ? new SignatureBlock(getDriver()): signatureBlock;
    }

    public WizardComplete getWizardComplete() {
        return (wizardComplete==null) ? new WizardComplete(getDriver()) :wizardComplete;
    }

    public BasePage(WebDriver driver) {
        super(driver);
    }


}
