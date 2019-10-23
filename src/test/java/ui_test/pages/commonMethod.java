package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class commonMethod{

    public static String formatDate(String OldDate){
        try{
            final String OLD_FORMAT = "dd-MMM-yy";
            final String NEW_FORMAT = "MMMM dd, yyyy";
            SimpleDateFormat sdf = new SimpleDateFormat(OLD_FORMAT);
            Date date = sdf.parse(OldDate);
            sdf.applyPattern(NEW_FORMAT);
            return sdf.format(date);
        }catch (ParseException e){
            e.printStackTrace();
            return null;
        }
    }

}
