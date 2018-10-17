package util.file;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.zip.ZipFile;

/**
 * Created by jwacker on 8/8/2018.
 */
public class FileHandler {
    private static final Logger log = LoggerFactory.getLogger(FileHandler.class);
    private static FileHandler INSTANCE = new FileHandler();

    private Properties properties = null;

    /*
    CONSTRUCTOR
     */

    private FileHandler() {
    }

    /*
    STATIC METHODS
     */

    @Deprecated
    public static FileHandler getInstance_old() {
        return INSTANCE;
    }

    static FileHandler getInstance() {
        return INSTANCE;
    }

    /*
    CLASS METHODS
     */

    public String getResourceFilePath(String fileInResourceFolder) {
        return getClass().getResource(fileInResourceFolder).getFile();

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

    public boolean zipContainsFiles(File file) {
        ZipFile zipFile = null;
        int size = 0;

        try {
            //Create instance of ZipFile with the given file
            zipFile = new ZipFile(file);

            //Get the size of the zip file
            size = zipFile.size();
            zipFile.close();
        } catch (IOException e) {
            System.out.println("Error regarding zip file: " + e.getMessage());
        }

        //Return true if the zip file contains at least one file
        return size > 0;
    }

    public JsonElement getJsonFile(String fileName) {
        JsonParser parser = new JsonParser();
        Reader reader;
        try {
//            String temp = getClass().getResource(fileName).getPath();
//            System.out.println(temp);
            reader = new InputStreamReader(getClass().getResourceAsStream(fileName), "UTF-8");
            return parser.parse(reader);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getFileContents(String fileName, boolean ignoreComments, boolean ignoreEmpty) {
        return String.join("\n", getFileLines(fileName, ignoreComments, ignoreEmpty));
    }

    public List<String> getFileLines(String fileName, boolean ignoreComments, boolean ignoreEmpty) {
        BufferedReader reader;
        String line;

        ArrayList<String> list = new ArrayList<>();

        try {
            String filePath = getClass().getResource(fileName).getFile();
            log.trace("opening file {}", filePath);
            InputStreamReader stream = new InputStreamReader(getClass().getResourceAsStream(fileName), "UTF-8");

            reader = new BufferedReader(stream);
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if ((!line.startsWith("#") || !ignoreComments) && (!line.isEmpty() || !ignoreEmpty)) {
                    list.add(line);
                }
            }

            reader.close();
            stream.close();

        } catch (FileNotFoundException e) {
            log.error("file {} not found", fileName, e);
        } catch (IOException e) {
            log.error("io exception", e);
        }

        return list;
    }

    @Deprecated
    public String getConfigValue(String key) {
        if (properties == null)
            loadPropertiesFile();
        return properties.getProperty(key);
    }

    @Deprecated
    private void loadPropertiesFile() {
        InputStream inputStream = null;
        properties = new Properties();
        try {
            inputStream = getClass().getClassLoader().getResourceAsStream("configurations/ui.properties");
            if (inputStream == null) {
                log.info("Unable to find out the ui.properties file");
            }
            properties.load(inputStream);
        } catch (IOException e) {
            log.error(e.getMessage());
        }
    }
}
