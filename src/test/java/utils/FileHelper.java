package utils;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipFile;

/**
 * Created by jwacker on 8/8/2018.
 */
public class FileHelper {
    private static FileHelper ourInstance = new FileHelper();

    public static FileHelper getInstance() {
        return ourInstance;
    }

    private FileHelper() {
    }

    public File writeByteArrayToFile(String fileName, byte[] content) throws IOException {
        //Create the file with the given filename
        File file = new File(fileName);
        BufferedOutputStream writer = new BufferedOutputStream(new FileOutputStream(file));

        //Write the byte[] to the file
        writer.write(content);
        writer.flush();
        writer.close();

        return file;
    }

    public boolean zipContainsFiles(File file){
        ZipFile zipFile = null;
        int size = 0;

        try {
            //Create instance of ZipFile with the given file
            zipFile = new ZipFile(file);

            //Get the size of the zip file
            size = zipFile.size();
            zipFile.close();
        }
        catch(IOException e) {
            System.out.println("Error regarding zip file: " + e.getMessage());
        }

        //Return true if the zip file contains at least one file
        return size > 0;
    }
}
