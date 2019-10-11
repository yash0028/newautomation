////import amendements.Amendements;
////import csvReader.CSVReader;
//import org.openqa.selenium.By;
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.WebElement;
//import org.openqa.selenium.chrome.ChromeDriver;
//import org.openqa.selenium.chrome.ChromeOptions;
//import org.openqa.selenium.support.ui.WebDriverWait;
//import ui_test.pages.*;
//import ui_test.pages.Amendements;
//import ui_test.pages.csvReader.CSVReader;
//
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.concurrent.TimeUnit;
//
//public class StartContract  {
//
//    List<String> arr=new ArrayList<>();
//    public static void main(String[] args) throws InterruptedException {
//
//        System.setProperty("webdriver.chrome.driver","C:\\ProgramData\\Chrome_driver_76.0.3809.68\\chromedriver.exe");
//        ChromeOptions chromeOptions = new ChromeOptions();
//        chromeOptions.setExperimentalOption("useAutomationExtension", false);
//        WebDriver driver = new ChromeDriver(chromeOptions);
//
////         driver = new ChromeDriver();
//        WebDriverWait wait = new WebDriverWait(driver,10);
////        System.out.println("Hello World!");
//
//        driver.get("https://uhg-ha-stage.exaricontracts.com/ ");
//        driver.manage().window().maximize() ;
//
//        String i1 = driver.getCurrentUrl();
//        System.out.println(i1);
//        String j1 = driver.getTitle();
//        System.out.println("Your page title Is : "+j1);
//
//        Thread.sleep(10000);
//
//        String i = driver.getCurrentUrl();
//        System.out.println(i);
//        String j = driver.getTitle();
//        System.out.println("Your page title Is : "+j);
//        driver.findElement(By.xpath("//input[@name='USER']")).sendKeys("clmqe1");
//        driver.findElement(By.xpath("//input[@name='PASSWORD']")).sendKeys("Test1234");
//        driver.findElement(By.xpath("//input[@id='Button2']")).click();
//        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
//        driver.findElement(By.xpath("//*[@id=\"HEADER_SITES_MENU\"]/span[2]")).click();
//        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
//        Thread.sleep(1000);
////        System.out.println(driver.findElement(By.xpath("//div[@id='HEADER_SITES_MENU']")));
//        driver.findElement(By.xpath("//a[text()='Central UHN']")).click();
//        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
//        driver.findElement(By.xpath("//span[text()='Click to start']")).click();
//
//        List<WebElement> region = driver.findElements(By.xpath("//h3[@class='itemname']"));
//        List<WebElement> createTemplate = driver.findElements(By.xpath("//a[@class=\"create-from-template\"]"));
//
//        System.out.println("region:"+region);
//        System.out.println("createTemplate"+createTemplate);
//        int in = 0;
//
//        String str = "Central Region Wrapper Group.grp";
//
//        for(WebElement a : region){
//            System.out.println(a.getText());
//            if(a.getText().equals(str)){
//                break;
//            }
//            in++;
//        }
//
//        System.out.println("index"+in);
//        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
//
//        Thread.sleep(3000);
//        System.out.println("abcd"+createTemplate.get(in));
//        createTemplate.get(in).click();
//
//        //driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
//
//        Thread.sleep(8000);
//        //wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//form[@name='userInput']")));
//        Thread.sleep(3000);
//        commonMethod commonMethod=new commonMethod(driver);
//        CSVReader csvReader = new CSVReader();
//        String path2="C:\\Users\\asomani1\\Desktop\\pom\\acceptance-testing\\src\\test\\resources\\support\\hive\\dataMap\\elements.csv";
//        HashMap<String,String> elements=csvReader.readFile(path2, "xyz");
//
//        String path1="C:\\Users\\asomani1\\Desktop\\pom\\acceptance-testing\\src\\test\\resources\\support\\hive\\dataMap\\eif-basic-central-list-1.csv";
//        HashMap<String,String> data = csvReader.readFile(path1, "xyz");
//        PESInputActions pi= new PESInputActions(driver);
//
//        /*pi.enterData(data,elements);*/
//
//
//        PESResponse pesResponse=new PESResponse(driver);
//        pesResponse.selectEntry();
//
//
//
//        ProviderDetails providerDetails = new ProviderDetails(driver);
//        providerDetails.selectEntry(data,elements);
//
//        RequestForParticipationResponse requestForParticipationResponse=new RequestForParticipationResponse(driver);
//        requestForParticipationResponse.performAction();
//
//
//        DocumentSelection documentSelection=new DocumentSelection(driver);
//        documentSelection.selectDocumentType(data);
//
//        providerDetails.previewProfile();
//
//        PracticeLocations practiceLocations=new PracticeLocations(driver);
//        //practiceLocations.selectLocation();
//
//        providerDetails.previewProfile();
//        CounterpartyDetails counterpartyDetails= new CounterpartyDetails(driver);
//        counterpartyDetails.counterpartyTINDuplicateCheck();
//
//        MarketExceptionGrid marketExceptionGrid=new MarketExceptionGrid(driver);
//        marketExceptionGrid.previewMarketDetails();
//        Thread.sleep(5000);
//        marketExceptionGrid.previewMarketDetails();
//
//        ContractDetails contractDetails=new ContractDetails(driver);
//        System.out.println("Phycon ID"+data.get("Phycon"));
//        //contractDetails.enterData(data.get("Phycon"));
//
//        HBPsRedDoor hbPsRedDoor = new HBPsRedDoor(driver);
//        //hbPsRedDoor.selectRedDoor();
//
//        MarketStrategyGrid marketStrategyGrid = new MarketStrategyGrid(driver);
//        marketStrategyGrid.marketStrategyGridCheck();
//
//
//        Appendix2 appendix2 = new Appendix2(driver);
//        appendix2.selectAppendix();
//
//        PaymentAppendix paymentAppendix = new PaymentAppendix(driver);
//        //paymentAppendix.selectPaymentAppendix();
//        Thread.sleep(2000);
//        paymentAppendix.enterFeeScheduleID(data.get("FS All Payer"));
//        Thread.sleep(2000);
//        paymentAppendix.verifyFeeScheduleID();
//
//        AdditionalLocations additionalLocations=new AdditionalLocations(driver);
//        //additionalLocations.selectAdditionalLocations();
//
//        RegulatoryAppendices regulatoryAppendices=new RegulatoryAppendices(driver);
//        regulatoryAppendices.selectRegulatoryAppendix();
//
//        ProviderRoaster providerRoaster=new ProviderRoaster(driver);
//        providerRoaster.roasterAction();
//
//        Amendements amendements=new Amendements(driver);
//        amendements.authorAmendements();
//
//        GroupSummary groupSummary=new GroupSummary(driver);
//        groupSummary.readInterviewSummary();
//
//        WizardComplete wizardComplete=new WizardComplete(driver);
//        wizardComplete.completeWizard();
//
//
//
//
//    }
//
//
//
//
//
//}
