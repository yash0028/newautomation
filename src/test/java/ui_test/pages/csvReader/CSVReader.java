package ui_test.pages.csvReader;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CSVReader {

    public HashMap readFile(String path) {

        String csvFile = path;
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        List<HashMap> hashList=new ArrayList<HashMap>();
        HashMap<String,String> imap= new HashMap<>();
        List<String> list = new ArrayList<String>();

        try {

            int count=0;
            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null)
            {
                String[] data = line.split(cvsSplitBy);
                if (count==0)
                {
                    for(int i=0;i<data.length;i++)
                    {
                        list.add(data[i]);
                        //System.out.println(list.get(i)+""+i);
                    }
                    count++;

                }
                else
                {
                    //System.out.println("Putting to hash");

                    for(int i=0;i<list.size();i++)
                    {
                        System.out.println("Index is"+i);
                        imap.put(list.get(i),data[i]);


                    }
                    hashList.add(imap);
                    count++;
                }
                //System.out.println(count+" Data recorded in hash");
            }

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


        return imap;
    }

}
