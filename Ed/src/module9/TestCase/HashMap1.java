package module9.TestCase;

import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import com.google.common.collect.Table.Cell;

public class HashMap1 {
	
	
	
	
	public static final String File = "C:\\Users\\yashwanth\\git\\newautomation\\Ed\\src\\module9\\TestData\\TestData1.xlsx";
	private static FileInputStream fis;
	private static  Workbook workbook;
	private static Sheet sheet;
	private static Row row;
	private static Cell cell;
	
	public static void loadExcel()throws Exception {
		File file = new File(File);
		fis = new FileInputStream(file);
		workbook=WorkbookFactory.create(file);
		sheet=workbook.getSheet("Data");
		int row=sheet.getLastRowNum()+1;
		int cell = sheet.getRow(0).getLastCellNum();
		
		System.out.println("Sheet Loaded ---->"+"Rows are -->"+row+ "  Cells are--> " +cell);
		
		fis.close();
	}
	public  static HashMap<String,HashMap<String,String>> getDataMap()throws Exception{
		
		if(sheet==null) {
			loadExcel();
			
		}
		
		HashMap<String,HashMap<String,String>> superMap = new HashMap<String,HashMap<String,String>>();
		HashMap<String,String> myMap = new HashMap<String,String>();
		for(int i=1;i<sheet.getLastRowNum()+1;i++) {

			for(int j =1;j<sheet.getRow(0).getLastCellNum();j++)
			{
				String Key = sheet.getRow(i).getCell(0).toString();
				String Value = sheet.getRow(i).getCell(j).toString();
				myMap.put(Key, Value);
			}
			superMap.put("MasterData",myMap);
			
		}
	
		return superMap;
		
		
	}
	
	public static String getValue(String Key) throws Exception {
		HashMap<String,String> myVal =getDataMap().get("MasterData");
		String Value = myVal.get(Key);
		
		return Value;
		
	}
	
	public static void main(String[] args) throws Exception {
   System.out.println(getValue("BaseUrl"));
   System.out.println(getValue("FirstName"));


		
	}

}
