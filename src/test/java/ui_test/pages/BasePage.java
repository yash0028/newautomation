package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;


public class BasePage extends GenericInputPage {
    private Dashboard dashboard;
    private AdditionalLocations additionalLocations;
    private Appendix2 appendix2;
    private Article article;
    private ContractDetails contractDetails;
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
    private ContractDetailsDashboard contractDetailsDashboard;
    private InitialTransaction initialTransaction;
    private OurSignatory ourSignatory;
    private ProviderSignatory providerSignatory;
    private Warning warning;
    private Validation validation;
    private AmendmentSelection amendmentSelection;
    private AdditionalManuals additionalManuals;
    private Steerage steerage;
    private SuppotingDocumentSummary supportingDocumentSummary;

    public Validation getValidation() {
        return (validation ==null) ? new Validation(getDriver()) :validation;
    }
    public Warning getWarning() {
        return (warning==null) ? new Warning(getDriver()) :warning;
    }
    public ProviderSignatory getProviderSignatory() {
        return (providerSignatory==null) ? new ProviderSignatory(getDriver()) :providerSignatory;
    }
    public OurSignatory getOurSignatory() {
        return (ourSignatory==null) ? new OurSignatory(getDriver()) :ourSignatory;
    }
    public InitialTransaction getInitialTransaction() {
        return (initialTransaction==null) ? new InitialTransaction(getDriver()) :initialTransaction;
    }

    public Steerage getSteerage() {
        return (steerage==null) ? new Steerage(getDriver()) :steerage;
    }

    public AdditionalManuals getAdditionalManuals() {
        return (additionalManuals==null) ? new AdditionalManuals(getDriver()) :additionalManuals;
    }


    public AmendmentSelection getAmendmentSelection() {
        return (amendmentSelection ==null) ? new AmendmentSelection(getDriver()) :amendmentSelection;
    }

    public ContractDetailsDashboard getContractDetailsDashboard() {
        return (contractDetailsDashboard==null) ? new ContractDetailsDashboard(getDriver()) :contractDetailsDashboard;
    }

    public Amendements getAmendements() {
        return (amendements==null) ? new Amendements(getDriver()) :amendements;
    }
    public AdditionalLocations getAdditionalLocations() {
        return (additionalLocations==null) ? new AdditionalLocations(getDriver()) :additionalLocations;
    }

    public Dashboard getDashboard() {
        return (dashboard==null) ? new Dashboard(getDriver()) :dashboard;
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
    public SuppotingDocumentSummary getSupportingDocumentSummary() {
        return (supportingDocumentSummary==null) ? new SuppotingDocumentSummary(getDriver()) :supportingDocumentSummary;
    }




}
