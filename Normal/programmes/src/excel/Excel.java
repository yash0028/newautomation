package excel;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Excel{

private static Object formData;

@org.testng.annotations.Test
public static void ReadData() throws IOException, EncryptedDocumentException, InvalidFormatException
{
	 // Import excel sheet from a webdriver directory which is inside c drive.
	 //DataSource is the name of the excel
	 File src=new File("C:\\Users\\gkuma222\\Desktop");
	// System.setProperty("webdriver.chrome.driver", "G:\\Folder Structure\\Installation Stuff\\Drivers\\chromedriver1.exe");
	// WebDriver driver=new ChromeDriver();
	 //This step is for loading the file. We have used FileInputStream as
	 //we are reading the excel. 
	 //In case you want to write into the file,you need to use FileOutputStream. 
	 //The path of the file is passed as an argument to FileInputStream
	 FileInputStream finput = new FileInputStream(src);
	 
	 //This step is to load the workbook of the excel which is done by global HSSFWorkbook in which we have
	 //passed finput as an argument.
	 Workbook wb = WorkbookFactory .create  (finput);
	 
    //This step is to load the sheet in which data is stored.
	 Sheet sh= wb.getSheet("Sheet1");
	  int row = sh.getLastRowNum();
	  int col  =sh.getRow(0).getLastCellNum();
	  System.out.println(row+ " "+col);
	 
	 for(int i=1; i<=row; i++)
	 {
		 for (int j=0; j<col;j++)
		 {
			 
		 // Import data for Email.
		 String email = sh.getRow(i).getCell(j).toString();
		 System.out.println(email);
		 //driver.findElement(By.id("email")).sendKeys(email);
		 
		 // Import data for the password.
		 //String password = sh.getRow(i).getCell(j).toString();
		 //System.out.println(password);
		// driver.findElement(By.id("password")).sendKeys(password);
		 }	
       }
	 
 }

  public static void main(String[] args) throws IOException, EncryptedDocumentException, InvalidFormatException {
	   Excel.ReadData();
  }
}