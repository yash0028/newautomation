package ui_test.util;

import org.openqa.selenium.WebDriver;

public class LocalDriverProxy implements IUiStep{
    private static LocalDriverProxy  INSTANCE = new LocalDriverProxy();
    public WebDriver getNewDriver(){
         return getDriver();
    }
    public static LocalDriverProxy getInstance() {
     if(INSTANCE!=null){
         return INSTANCE;
     }else{
         INSTANCE = new LocalDriverProxy();
         return INSTANCE;
     }
    }
}
