package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonMethods {

    public static String formatDate(String OldDate) {
        try {
            final String OLD_FORMAT = "dd-MMM-yy";
            final String NEW_FORMAT = "MMMM dd, yyyy";
            SimpleDateFormat sdf = new SimpleDateFormat(OLD_FORMAT);
            Date date = sdf.parse(OldDate);
            sdf.applyPattern(NEW_FORMAT);
            return sdf.format(date);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String todaysDate() {
        String pattern = "MMMM dd, yyyy";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        return simpleDateFormat.format(new Date());
    }

    public static boolean isElementPresent(WebDriver driver, final By by) {
        try {
            driver.findElement(by);
            return true;
        } catch (org.openqa.selenium.NoSuchElementException e) {
            return false;
        }
    }


}
