package module9.TestCase;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

public class HashMapdata {
	
	@Test(dataProvider="testdata")
	public void Test(Map mapdata)
	{
		System.out.println("-----TestStarted-----");
		System.out.println(mapdata.get("UserName"));
		System.out.println(mapdata.get("Password"));
		System.out.println(mapdata.get("DoB"));
		System.out.println("-----TestEnded-----");

	}
	
	@DataProvider(name="testdata")
	public Object[][] dataproviderMethod() throws  IOException{

		String filepath = "C://Users//gkuma222//Desktop//Project//automation//Ed//src//module9//TestData//TestDate.xlsx";
		
		File file = new File (filepath);
		FileInputStream fis = new FileInputStream(file);
		Workbook wb = WorkbookFactory.create(fis);
		Sheet sh = wb.getSheet("Sheet1");
		int norow = sh.getLastRowNum();
		int nocol = sh.getRow(0).getLastCellNum();
		System.out.println("Rows "+norow);
		System.out.println("Cols "+nocol);
		
		Object[][] formData = new Object[norow][nocol];	
		for(int i=0 ; i<norow; i++)
		{
			Map<Object,Object> datamap= new HashMap<Object,Object>();
			for (int j=0;j<nocol;j++)
			{
				datamap.put(sh.getRow(0).getCell(j), sh.getRow(i+1).getCell(j));
				
			}
			
					
		}

		return formData;
		
	
	}
	
	

}
