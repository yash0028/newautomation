package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.List;

public class Appendix2Page extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(Appendix2Page.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Appendix 2')]")
    private WebElement labelAppendix2;

    @FindBy(xpath = "//input[contains(@value,'ALL Medicare Advantage')]")
    private WebElement radioOptionAllMedicareAdvantage;

    @FindBy(xpath = "//label/b[contains(text(),'include')]/../../../..//label[contains(@for,'Product')]")
    private List<WebElement> radioOptionInclude;

    @FindBy(xpath = "//label/b[contains(text(),'exclude')]/../../../..//label[contains(@for,'Product')]")
    private List<WebElement> radioOptionExclude;


    @FindBy(xpath = "//input[contains(@value,'No')]")
    private WebElement radioOptionNo;

    /*
    CONSTRUCTOR
     */

    public Appendix2Page(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelAppendix2);
    }

    /*
    CLASS METHODS
     */

    public boolean selectProductByIndex(String complexStringIndex) {
        List<String> indexes = Arrays.asList(complexStringIndex.split(" "));

        for (String index : indexes) {
            String trimIndex = index.trim();
            //Skip empty
            if (trimIndex.isEmpty()) {
                continue;
            }

            //TODO include/exclude all

            try {
                int i = Integer.parseInt(trimIndex);

                if (i < radioOptionInclude.size() && i >= 0) {
                    click("radio option " + i, radioOptionInclude.get(i));
                }

            } catch (NumberFormatException e) {
                log.trace(trimIndex + " is not a number");
            }
        }

        return true;
    }

    public boolean selectMedicareAdvantageIfAvailable() {
        if (waitTillVisible(radioOptionNo, 120)) {
            return click(radioOptionNo);
        } else {
            return true;
        }
    }

}
