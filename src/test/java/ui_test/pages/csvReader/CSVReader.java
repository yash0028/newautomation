package ui_test.pages.csvReader;

import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import ui_test.util.IWebInteract;
import util.TimeKeeper;

import java.io.*;
import java.util.*;

public class CSVReader {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    private int maxKeyLength = 0;
    private int maxValueLength = 0;

    public HashMap readFile(String path, String testName) {
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
                if (count == 0) {
                    for (int i = 0; i < data.length; i++) {

                        list.add(data[i]);
                    }
                    count++;

                } else {

                    if (data[0].equalsIgnoreCase(testName)) {
                        for (int i = 0; i < data.length; i++) {
                            if (!data[i].isEmpty()) {
                                imap.put(list.get(i), data[i]);
                                maxKeyLength = Math.max(maxKeyLength, list.get(i).length());
                                maxValueLength = Math.max(maxValueLength, data[i].length());
                            }

                        }
                        hashList.add(imap);
                    }
                    count++;
                }
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
        IWebInteract.log.info("[TEST DATA]\r\n{}", displayImap(imap));
        return imap;
    }

    public String displayImap(HashMap<String, String> imap) {

        StringBuilder body = new StringBuilder();
        StringBuilder header = new StringBuilder();
        int rowLength = 0;
        header.append("|\t").append("KEY");
        for (int count = 0; count < this.maxKeyLength - "KEY".length(); count++) {
            header.append(" ");
        }
        header.append("\t|\t").append("VALUE");
        for (int count = 0; count < this.maxValueLength - "VALUE".length(); count++) {
            header.append(" ");
        }
        header.append("\t|").append("\r\n");
        rowLength = header.toString().length();
        for (int count = 0; count < rowLength; count++) {
            body.append("=");
        }
        body.append("====\r\n");
        body.append(header.toString());
        for (int count = 0; count < rowLength; count++) {
            body.append("=");
        }
        body.append("====\r\n");
        for (HashMap.Entry<String, String> entry : imap.entrySet()) {
            body.append("|\t").append(entry.getKey());
            for (int count = 0; count < this.maxKeyLength - entry.getKey().length(); count++) {
                body.append(" ");
            }
            body.append("\t|\t").append(entry.getValue());
            for (int count = 0; count < this.maxValueLength - entry.getValue().length(); count++) {
                body.append(" ");
            }
            body.append("\t|").append("\r\n");
        }
        for (int count = 0; count < rowLength; count++) {
            body.append("=");
        }
        body.append("====\r\n");
        return body.toString();
    }

    public HashMap readContractDetails(String path, String testName){
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
                if (count == 0) {
                    for (int i = 0; i < data.length; i++) {

                        list.add(data[i]);
                    }
                    count++;

                } else {

                    if (data[0].equalsIgnoreCase(testName)) {
                        for (int i = 0; i < data.length; i++) {
                            if (!data[i].isEmpty()) {
                                imap.put(list.get(i), data[i]);
                                maxKeyLength = Math.max(maxKeyLength, list.get(i).length());
                                maxValueLength = Math.max(maxValueLength, data[i].length());
                            }

                        }
                        hashList.add(imap);
                    }
                    count++;
                }
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
        IWebInteract.log.info("[TEST DATA]\r\n{}", displayImap(imap));
        return imap;
    }

    public void putDataInHmap(HashMap hmap,Map dataMap){
        Iterator item = dataMap.entrySet().iterator();
        while (item.hasNext()) {
            Map.Entry mapElement = (Map.Entry)item.next();
            if(mapElement.getValue()!=null){
                hmap.put(mapElement.getKey(),mapElement.getValue());
            }
        }
    }
}
