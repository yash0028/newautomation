package module9.TestCase;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.ss.util.CellUtil;

import com.google.common.collect.Table.Cell;

public class HashMapMulCol2 {
	
	
	
	public static final String File = "C:\\Users\\yashwanth\\git\\newautomation\\Ed\\src\\module9\\TestData\\TestData3.xlsx";
	private static FileInputStream fis;
	private static  Workbook workbook;
	private static Sheet sheet;
	private static Row row;
	private static Cell cell;
	
	public static void loadExcelMul()throws Exception {
		File file = new File(File);
		fis = new FileInputStream(file);
		workbook=WorkbookFactory.create(file);
		sheet=workbook.getSheet("Sheet1");
		int row=sheet.getLastRowNum()+1;
		int cell = sheet.getRow(0).getLastCellNum();
		
		System.out.println("Sheet Loaded ---->"+"Rows are -->"+row+ "  Cells are--> " +cell);
		
		fis.close();
	}
	
	public static List<Map<String,String>> readAllData() throws Exception{
		if(sheet == null) {
			loadExcelMul();
		}
		
		List<Map<String,String>> mapLists = new ArrayList<>();
		for(int i=1; i< sheet.getLastRowNum()+1; i++)
		{
			Map<String, String> myMap = new HashMap<String,String>();
			for(int j=1; j< sheet.getRow(0).getLastCellNum() ; j++)
			{
				String Key = sheet.getRow(0).getCell(j).toString();
				String Value = sheet.getRow(i).getCell(j).toString();
				myMap.put(Key, Value);
				
			}
			mapLists.add(myMap);
			
			
		}
	
		
		return mapLists;
		
	}
	
	
	

	public static void main(String[] args) throws Exception {
		System.out.println(readAllData());	
		for(Map<String,String> value : readAllData()) {
			System.out.println(value.get("City"));
		}

}
}