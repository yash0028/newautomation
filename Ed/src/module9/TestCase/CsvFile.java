package module9.TestCase;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;

public class CsvFile {

	public static final String CsvFilePath = "./src/module9/TestData/New Microsoft Office Excel Worksheet.csv";
	//public static Map<String,Map<String,String>> outerMap = new HashMap<>();

	
	public static  Map<String,Map<String,String>> loadCsv() throws IOException {
		File file = new File(CsvFilePath);
		byte[] bytes=FileUtils.readFileToByteArray(file);
		String data = new String(bytes);
		//System.out.println("After Converting to String ---> " +"\n"+data);
		
		String dataArray[] = data.split("\n");
		//System.out.println("Data Array --> " +" \n" +Arrays.asList(dataArray ));
		String keys = dataArray[0];
		Map<String,Map<String,String>> outerMap = new HashMap<>();
		//System.out.println("Zeroth Index Keys --> "+ "\n"+keys);

		List<String> keysFromFile = new ArrayList<>();
		String []keyArr=keys.split(",");
		keysFromFile.addAll(Arrays.asList(keyArr));
		keysFromFile.remove(0);
		//System.out.println(keysFromFile);
		
		
		for(int d=1; d< dataArray.length; d++) {
			Map<String, String > mymap = new HashMap<>();
			List<String> row = new  ArrayList<>();
			String[] rowArr=dataArray[d].split(",");
			row.addAll(Arrays.asList(rowArr));
			String KeyForTC=row.get(0);
			row.remove(0);
		//	System.out.println("Key For TC --> "+"\n" +KeyForTC);
			
		for(int i=0; i<keysFromFile.size();i++)
		{
			mymap.put(keysFromFile.get(i).trim(), row.get(i).trim());
			
			
		}
		outerMap.put(KeyForTC, mymap);
			
		}
		//System.out.println(outerMap);
		return outerMap;
	
		
	}
	
	public static void main(String[] args) throws IOException {
		loadCsv();
		System.out.println(retrieveData(loadCsv(),"A--05"));

		//System.out.println(outerMap);
		

	}
	
	
	public static Map<String, String> retrieveData(Map<String,Map<String,String>> loadCsv, String CaseId) {
	Map<String, String>value =	loadCsv.get(CaseId);
	return value;
	/*System.out.println(value.get("Currency"));
	System.out.println(value.get("Gender"));*/
		
	}
	}
	
	
	
/*public static void retrieveData(Map<String,Map<String,String>> outerMap) {
for(Map.Entry<String, Map<String,String>>value:outerMap.entrySet()) {
	if (value.getKey().equalsIgnoreCase("A--08")) {
		//System.out.println(value.getValue());
		
	
}
}
}*/
	
	
	
	
	
	
	

