package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.pages.excelReaderWriter.ExcelReaderWriter;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.lang.Integer.parseInt;

public class ProviderRoaster extends GenericInputPage {
    private PageElements elements;
    String home = System.getProperty("user.dir");
    private static int MULTIPLE_PROVIDERS;
    private static int CANCEL_MULTIPLE_PROVIDERS;
    Path downloadFlowPath = Paths.get(home, "src", "test", "resources", "features", "rcbridge", "ProviderRoster");
    ExcelReaderWriter excelReaderWriter;


    public ProviderRoaster(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void roasterAction(String action) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Provider Roster", clickRosterAction(action)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void downloadCurrentRoster(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Click here to Download Provider Roster", elements.downloadProviderRoster));
        waitForPageLoad(120);
        pause(5);
        String findFileName = elements.downloadProviderRoster.getAttribute("href");
        String fileName = findFileName.substring(findFileName.lastIndexOf('=') + 1);
        fileName = fileName.replace("%20", " ");
        fileName = fileName.replace(":", "_");
        //hmap.put("RosterFileName", fileName);
        hmap.put("RosterFileName", "Provider-Roster-74788257-Tue Nov 19 2019 04_52_18 GMT-0600 (CST).xlsx");
        IWebInteract.log.info("File path : {}", downloadFlowPath.toString());
        IWebInteract.log.info("File name : {}", hmap.get("RosterFileName"));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        pause(5);
    }

    public void uploadCompletedRoster(HashMap<String, String> hmap) throws IOException {
        callingExcelReaderWriter(hmap);
        Assert.assertTrue(click("Upload", elements.uploadButton));
        pause(3);
        Path RosterFilePath = Paths.get(home, "src", "test", "resources", "features", "rcbridge", "ProviderRoster", hmap.get("RosterFileName"));
        IWebInteract.log.info("Upload file path : {}", RosterFilePath.toString());
        Assert.assertTrue(sendKeys("Uploading File", elements.chooseFile, RosterFilePath.toString()));
        pause(3);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void callingExcelReaderWriter(HashMap<String, String> hmap) throws IOException {
        excelReaderWriter = new ExcelReaderWriter();
        List<String> keys = excelReaderWriter.reader(downloadFlowPath.toString(), hmap.get("RosterFileName"), "Sheet1");
        List<String> keysMap =createListtoPass(keys);
        int rowindex = parseInt(keys.get(keys.size() - 1));
        keys.remove(keys.size() - 1);
        List<String> dataToWrite = excelReaderWriter.matcher(keys, hmap, rowindex,keysMap);
        excelReaderWriter.writer(downloadFlowPath.toString(), hmap.get("RosterFileName"), "Sheet1", dataToWrite, rowindex);
    }

    private List createListtoPass(List<String> array)
    {
        List<String> headings = new ArrayList<>();
        headings.add("Line Number");
        headings.add("TIN");
        headings.add("MPIN");
        headings.add("NPI");
        headings.add("ProviderName");
        headings.add("Degree Code");
        headings.add("Organization Type Code");
        headings.add("Organization Type Description");
        headings.add("Specialty Code");
        headings.add("Specialty Description");
        headings.add("Record Type");
        headings.add("Contract Effective Date");
        headings.add("Retro code");
        headings.add("Cancel Date");
        headings.add("Cancel Reason Code");

        System.out.println("15 rows entered");
        return headings;
    }

    public void selectretrocode(HashMap<String, String> hmap) {
        if (MULTIPLE_PROVIDERS > 0) {
            String[] retroCode = hmap.get("Retro code").split("//");
            int count = 1;
            for (WebElement dropdownopen : elements.dropdown_open_list) {
                click("Retro code dropdown open", dropdownopen);
                pause(1);
                waitForPageLoad(60);
                if (count <= retroCode.length) {
                    Assert.assertTrue(sendKeys("Search retro code", elements.retroCode, retroCode[count - 1]));
                } else {
                    Assert.assertTrue(sendKeys("Search retro code", elements.retroCode, retroCode[retroCode.length - 1]));
                }
                waitForPageLoad(60);
                pause(1);
                Assert.assertTrue(click("Select retro code", elements.selectRetroCode.get(0)));
                pause(3);
                waitForPageLoad(60);
            }

        } else {
            click("Retro code dropdown open", elements.dropdown_open);
            pause(1);
            waitForPageLoad(60);
            Assert.assertTrue(sendKeys("Search retro code", elements.retroCode, hmap.get("Retro code")));
            pause(1);
            waitForPageLoad(60);
            Assert.assertTrue(click("Select retro code", elements.selectRetroCode.get(0)));
        }

        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectretrocode(HashMap<String, String> hmap, boolean clickNext) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        click("Retro code dropdown open", elements.dropdown_open);
        pause(1);
        waitForPageLoad(60);
        Assert.assertTrue(sendKeys("Search retro code", elements.retroCode, hmap.get("Retro code")));
        pause(1);
        waitForPageLoad(60);
        Assert.assertTrue(click("Select retro code", elements.selectRetroCode.get(0)));
        if (clickNext) {
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad(60));
        }
    }

    public void approachForProvider(HashMap<String, String> hmap, String approach, boolean clickNext) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.retroDropdown))) {
            selectretrocode(hmap, false);
        }
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Select Approach For Provider", clickapproachForProvider(approach)));
        if (clickNext) {
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public void verifyProviders() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectProviders(HashMap<String, String> hmap) {
        MULTIPLE_PROVIDERS = 0;
        String[] providers = hmap.get("Select Providers").split("//");
        waitForPageLoad(60);
        for (String provider : providers) {
            Assert.assertTrue(sendKeys("Search provider", elements.selectProvider, provider.trim()));
            waitForPageLoad(60);
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.selectProviderWithNamenotFound))) {
                elements.selectProvider.clear();
                IWebInteract.log.info("Provider Name [{}] NOT FOUND", provider.trim());
                continue;
            } else {
                Assert.assertTrue(click("Select provider", elements.selectProviderWithName.get(0)));
                waitForPageLoad(60);
                MULTIPLE_PROVIDERS++;
            }
            pause(1);
        }
        Assert.assertTrue("[ERROR] Didn't Found Any Valid Provider", MULTIPLE_PROVIDERS > 0);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad(60));
    }
    
    public void enterStartDate(HashMap<String, String> hmap)
    {
        String date;
        if (hmap.get("Contract Effective Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Contract Effective Date"));
        }
        waitForPageLoad(60);
        Assert.assertTrue(sendKeys("Contract Effective Date", this.elements.start_date, date));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void providerStartDate(HashMap<String, String> hmap) {
        String date;
        if (MULTIPLE_PROVIDERS > 0) {
            String[] dates = hmap.get("Provider Start Date").split("//");
            for (int count = 1; count <= MULTIPLE_PROVIDERS; count++) {
                if (count <= dates.length) {
                    if (dates[count - 1].equals("today")) {
                        date = CommonMethods.todaysDate();
                    } else {
                        date = CommonMethods.formatDate(dates[count - 1]);
                    }

                    try {
                        waitForPageLoad(60);
                        Thread.sleep(5000);
                        sendKeys("Provider Start Date", providerStartDate(count - 1), date);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }

                } else {

                    try {
                        waitForPageLoad(60);
                        Thread.sleep(5000);
                        sendKeys("Provider Start Date", providerStartDate(count - 1), CommonMethods.todaysDate());
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }

                }
            }

        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void enterTIN(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("TIN", elements.enterTIN, hmap.get("TIN")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterMPIN(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("MPIN", elements.enterTIN, hmap.get("MPIN")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void removeExcessRow(int dropdown_count, int providersCount) {
        if (dropdown_count > providersCount) {
            for (int count = dropdown_count; count > providersCount; count--) {
                pause(1);
                waitForPageLoad(60);
                click("Remove Provider Row", removeProviderrow(count - 1));
            }
        }
    }

    public void providerandcanceldate(HashMap<String, String> hmap) {
        CANCEL_MULTIPLE_PROVIDERS = 0;
        String[] providers = hmap.get("providers to cancel").split("//");
        boolean createNewRow = elements.dropdown_open_count.size() > providers.length ? false : true;
        boolean nextInput = true;
        int count = 0;
        String date;
        for (String provider : providers) {
            //click
            if (count > 0 && createNewRow) {
                pause(1);
                waitForPageLoad(60);
                Assert.assertTrue(click("Add Provider Row", elements.addnewProvider));
                pause(1);
                waitForPageLoad(60);
            }
            if (nextInput) {
                pause(1);
                Assert.assertTrue(click("Open Cancel Provider Dropdown", openCancelProviderDropdown(count)));
                waitForPageLoad(60);
            }
            pause(1);
            waitForPageLoad(60);
            Assert.assertTrue(sendKeys("Search provider", elements.selectProvider, provider.trim()));
            waitForPageLoad(60);
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.selectProviderWithNamenotFound))) {
                elements.selectProvider.clear();
                IWebInteract.log.info("Provider Name [{}] NOT FOUND", provider.trim());
                nextInput = false;
                createNewRow = false;
                continue;
            } else {
                Assert.assertTrue(click("Select provider", elements.selectProviderWithName.get(0)));
                CANCEL_MULTIPLE_PROVIDERS++;
                nextInput = true;
                createNewRow = CANCEL_MULTIPLE_PROVIDERS >= elements.dropdown_open_count.size() ? true : false;
                count++;

            }
            pause(1);
            waitForPageLoad(60);

        }
        removeExcessRow(elements.dropdown_open_count.size(), CANCEL_MULTIPLE_PROVIDERS);
        //Dont give assert to the following click method.
        click("Get Cancel Dates", elements.nextLink);
        if (CANCEL_MULTIPLE_PROVIDERS > 0) {
            String[] dates = hmap.get("Cancel Date").split("//");
            for (count = 1; count <= CANCEL_MULTIPLE_PROVIDERS; count++) {
                if (count <= dates.length) {
                    if (dates[count - 1].equals("today")) {
                        date = CommonMethods.todaysDate();
                    } else {
                        date = CommonMethods.formatDate(dates[count - 1]);
                    }
                    Assert.assertTrue(sendKeys("Provider Cancel Date", providerCancelDate(count - 1), date));
                } else {
                    Assert.assertTrue(sendKeys("Provider Cancel Date", providerCancelDate(count - 1), CommonMethods.todaysDate()));
                }
            }

        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void cancelreason(HashMap<String, String> hmap) {
        String[] errorCodes = hmap.get("Cancel Reason Code").split("//");
        for (int count = 1; count <= CANCEL_MULTIPLE_PROVIDERS; count++) {
            Assert.assertTrue(click("Open Cancel Reason Dropdown", openCancelReasonDropdown(count - 1)));
            pause(1);
            waitForPageLoad(60);
            if (count <= errorCodes.length) {
                Assert.assertTrue(sendKeys("Search provider", elements.selectProvider, errorCodes[count - 1]));
            } else {
                Assert.assertTrue(sendKeys("Search provider", elements.selectProvider, errorCodes[errorCodes.length - 1]));
            }
            pause(1);
            waitForPageLoad(60);
            Assert.assertTrue(click("Select provider", elements.selectCancelReason.get(0)));
            pause(1);
            waitForPageLoad(60);
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public WebElement providerStartDate(int Count) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@name,'StartDate_Multi__SL_Repeat_AddEntry.DMCQ_Multi.count_" + Count + "')]"});
    }

    public WebElement clickRosterAction(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//span/input[contains(@value, '" + Name + "')]"});
    }

    public WebElement clickapproachForProvider(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + Name + "')]"});
    }

    public WebElement openCancelProviderDropdown(int count) {
        return findElement(getDriver(), new String[]{"xpath", "//select[contains(@name,'DMCQ__SL_Repeat_Cancel.rpti_" + count + "')]/following::span[4]"});
    }

    public WebElement openCancelReasonDropdown(int count) {
        return findElement(getDriver(), new String[]{"xpath", "//select[contains(@name,'ReasonCode__SL_Repeat_Cancel.rpti_" + count + "')]/following::span[4]"});
    }

    public WebElement providerCancelDate(int count) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@name,'CancelDate__SL_Repeat_Cancel.rpti_" + count + "')]"});
    }

    public WebElement removeProviderrow(int count) {
        return findElement(getDriver(), new String[]{"xpath", "//select[contains(@name,'ReasonCode__SL_Repeat_Cancel.rpti_" + count + "')]/following::button[3]"});
    }


    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//span[contains(@class,'select2-selection__rendered')]")
        private WebElement dropdown_open;
        @FindBy(xpath = "//input[contains(@id,\"Date\")]")
        private WebElement start_date;
        @FindBy(xpath = "//span[contains(@class,'select2-selection__rendered')]")
        private List<WebElement> dropdown_open_list;
        @FindBy(xpath = "//select[contains(@name,'DMCQ__SL_Repeat_Cancel.rpti')]/following::span[4]")
        private List<WebElement> dropdown_open_count;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement retroCode;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectRetroCode;
        @FindBy(xpath = "//tr/td[3]/button[contains(@title,'Upload')]")
        private WebElement uploadButton;
        @FindBy(xpath = "//input[contains(@name,'UploadedRoster')]")
        private WebElement chooseFile;
        @FindBy(xpath = "//input[contains(@name,'AddEntry.TIN_Multi')]")
        private WebElement enterTIN;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement selectProvider;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectProviderWithName;
        @FindBy(xpath = "//input[contains(@name,'StartDate')]")
        private WebElement providerStartDate;
        @FindBy(xpath = "//tfoot[contains(@class,'repeater-table-add-items')]//button")
        private WebElement addnewProvider;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectCancelReason;
        @FindBy(xpath = "//a[contains(@href,\"Roster\")]")
        private WebElement downloadProviderRoster;
        @FindBy(xpath = "//a[contains(.,'Next')]")
        private WebElement nextLink;

        private String message = "//div[contains(@class,'DialogBox')]";
        private String retroDropdown = "//span[contains(@class,'select2-selection__rendered')]";
        private String selectProviderpath = "//input[@type='search']";
        private String selectProviderWithNamenotFound = "//span[@class='select2-results']//li[contains(.,'No results found')]";


        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
