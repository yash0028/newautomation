package ui_test.pages.csvReader;

import exari_test.eif.data.EifReport;
import exari_test.eif.data.EifTestData;
import exari_test.eif.report.Result;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import ui_test.pages.Report;
import util.TimeKeeper;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CSVReader {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    private Report report = Report.getReportInstance();


    public HashMap readFile(String path, String testName) {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();
        String csvFile = path;
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        List<HashMap> hashList=new ArrayList<HashMap>();
        HashMap<String,String> imap= new HashMap<>();
        List<String> list = new ArrayList<String>();

        try {
            if (report.getReport() != null)
                report.getReport().addNote("TestName", testName);
            int count=0;
            br = new BufferedReader(new FileReader(csvFile));
            log.info("Reading Test Data From {}",csvFile);
            while ((line = br.readLine()) != null)
            {
                String[] data = line.split(cvsSplitBy);
                System.out.println("Size of Data Array is "+data.length);
                if (count==0)
                {
                    for(int i=0;i<data.length;i++)
                    {

                        list.add(data[i]);
                        System.out.println(list.get(i)+""+i);
                    }
                    System.out.println("List Size is"+list.size());
                    count++;

                }
                else
                {

                    System.out.println("Putting to hash");
                    System.out.println("data of 0 is "+data[0]);
                    System.out.println("test name is "+testName);


                    if(data[0].equalsIgnoreCase(testName))
                    {
                        for(int i=0;i<data.length;i++)
                        {
                            System.out.println("Index is"+i);
                            if(!data[i].isEmpty())
                            {
                                System.out.println("Hashmap is Key is "+list.get(i)+" Data is"+data[i]);
                                imap.put(list.get(i),data[i]);
                            }

                        }
                        hashList.add(imap);
                    }


                    count++;
                }
                System.out.println(count+" Data recorded in hash");
            }

            Assert.assertNotNull("Test Data for this case not present",imap);


        } catch (FileNotFoundException e) {
            if (report.getReport()!= null) {
                report.getReport().markCSVReader(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }
            e.printStackTrace();
        } catch (IOException e) {
            if (report.getReport()!= null) {
                report.getReport().markCSVReader(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    if (report.getReport()!= null) {
                        report.getReport().markCSVReader(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
                    }
                    e.printStackTrace();
                }
            }
            if (report.getReport()!= null) {
                report.getReport().markCSVReader(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }

        }


        return imap;
    }

}
