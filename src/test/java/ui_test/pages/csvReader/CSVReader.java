package ui_test.pages.csvReader;

import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import util.TimeKeeper;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CSVReader {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    private int maxKeyLength = 0;
    private int maxValueLength = 0;

    public HashMap readFile(String path, String testName) {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();
        String csvFile = path;
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        List<HashMap> hashList = new ArrayList<HashMap>();
        HashMap<String, String> imap = new HashMap<>();
        List<String> list = new ArrayList<String>();

        try {
            int count = 0;
            br = new BufferedReader(new FileReader(csvFile));
            log.info("Reading Test Data From {}", csvFile);
            while ((line = br.readLine()) != null) {
                String[] data = line.split(cvsSplitBy);
                //System.out.println("Size of Data Array is " + data.length);
                if (count == 0) {
                    for (int i = 0; i < data.length; i++) {

                        list.add(data[i]);
                        //System.out.println(list.get(i) + "" + i);
                    }
                    //System.out.println("List Size is" + list.size());
                    count++;

                } else {

                    //System.out.println("Putting to hash");
                    //System.out.println("data of 0 is " + data[0]);
                    //System.out.println("test name is " + testName);


                    //System.out.println("I am HERE  Key is "+list.get(24)+" Data is"+data[24]);

                    if (data[0].equalsIgnoreCase(testName)) {
                        for (int i = 0; i < data.length; i++) {
                            //System.out.println("Index is" + i);
                            if (!data[i].isEmpty()) {
                                //System.out.println("Hashmap is Key is " + list.get(i) + " Data is" + data[i]);
                                imap.put(list.get(i), data[i]);
                                maxKeyLength = Math.max(maxKeyLength, list.get(i).length());
                                maxValueLength = Math.max(maxValueLength, data[i].length());
                            }

                        }
                        hashList.add(imap);
                    }


                    count++;
                }
                //System.out.println(count + " Data recorded in hash");
            }

            Assert.assertNotNull("Test Data for this case not present", imap);


        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }

        System.out.println(displayImap(imap));
        return imap;
    }

    public String displayImap(HashMap<String, String> imap){

        StringBuilder returnString = new StringBuilder();
        int rowLength = 0;
        returnString.append("|\t").append("KEY");
        for(int count = 0;count<this.maxKeyLength-"KEY".length();count++){
            returnString.append(" ");
        }
        returnString.append("\t|\t").append("VALUE");
        for(int count = 0;count<this.maxValueLength-"VALUE".length();count++){
            returnString.append(" ");
        }
        returnString.append("\t|").append("\r\n");
        rowLength = returnString.toString().length();
        for(int count = 0; count<rowLength ; count++){
            returnString.append("=");
        }
        returnString.append("====\r\n");
        for (HashMap.Entry<String, String> entry : imap.entrySet()) {
            returnString.append("|\t").append(entry.getKey());
            for(int count = 0;count<this.maxKeyLength-entry.getKey().length();count++){
                returnString.append(" ");
            }
            returnString.append("\t|\t").append(entry.getValue());
            for(int count = 0;count<this.maxValueLength-entry.getValue().length();count++){
                returnString.append(" ");
            }
            returnString.append("\t|").append("\r\n");
        }
        for(int count = 0; count<rowLength ; count++){
            returnString.append("=");
        }
        returnString.append("====\r\n");
        return returnString.toString();
    }
}
