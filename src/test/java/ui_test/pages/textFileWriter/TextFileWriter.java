package ui_test.pages.textFileWriter;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;

public class TextFileWriter {
    public void writeInFile(String filename, HashMap<String, String> hmap) {
        System.out.println("Filename is: " + filename);
        try {
            File statText = new File(filename);
            BufferedWriter out = new BufferedWriter(new FileWriter(statText, true));
            out.append(hmap.get("commonName") + " -" + hmap.get("Contract Number") + "\n");
            out.close();
        } catch (IOException e) {
            System.err.println("Problem writing to the file statsTest.txt");
        }
    }

    public void writeInCSVFile(String filename, HashMap<String, String> hmap) {
        System.out.println("Filename is: " + filename);
        try {
            File statText = new File(filename);
            BufferedWriter out = new BufferedWriter(new FileWriter(statText, true));
            out.append(hmap.get("commonName") + "," + hmap.get("Contract Number").replaceAll("\\s+", "") + "," + hmap.get("Contract Link") + "," +hmap.get("Tier")+ "\n");
            out.close();
        } catch (IOException e) {
            System.err.println("Problem writing to the file");
        }
    }

}
