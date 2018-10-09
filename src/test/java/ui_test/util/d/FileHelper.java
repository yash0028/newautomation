package ui_test.util.d;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author ssinha47
 */

public class FileHelper {

    /**
     * This method reads a file content and gives it as String
     *
     * @param fileName: Fully qualified file path
     * @return Contents of file in String format
     * @throws Exception
     */
    public static String readFile(String fileName) throws Exception {
        BufferedReader br = new BufferedReader(new FileReader(fileName));
        try {
            StringBuilder sb = new StringBuilder();
            String line = br.readLine();

            while (line != null) {
                sb.append(line);
                sb.append("\n");
                line = br.readLine();
            }
            return sb.toString();
        } finally {
            br.close();
        }
    }

    /**
     * This method returns the actual path of the file
     * @param path: Relative path of the ifle
     * @return Actual path of the file
     */
/*	public static String getExpectedJSONPath(String path){
		//String currentDir = System.getProperty("user.dir");
		String workingDir = "src/main/resources/references/testdata/expected";
		String expectedJsonPath = workingDir.concat(path);
		return expectedJsonPath;
	}*/

    /**
     * This method saves the file at given loaction
     *
     * @param fileName:    Path where the file to be saved.
     * @param fileContent: Content of the file
     * @throws Exception
     * @modified by: Deepak
     */
    //@SuppressWarnings("resource")
    public static boolean saveFile(String fileName, String fileContent) throws Exception {
        try {
            String outputPath = System.getProperty("cucumberAPIOutputPath");

            if (fileName.isEmpty() || fileName.equals(null)) {
                throw new Exception("Invalid File name or blank");
            }

            if (outputPath != null && !outputPath.isEmpty()) {
                Date date = new Date();
                SimpleDateFormat sdf = new SimpleDateFormat("_MM_dd_yyyy_h_mm_ss_a");
                String formattedDate = sdf.format(date);

                fileName = fileName.replaceAll("[^a-zA-Z0-9]", " ").trim(); // to replace the special characters with whitespace
                fileName = fileName.replaceAll("\\s+", " "); // to replace the multiple white spaces with single space

                String outputfilename = outputPath + fileName + formattedDate + ".json";
                PrintStream out;
                try {
                    out = new PrintStream(new FileOutputStream(outputfilename));
                    out.println(fileContent);
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    return false;
                }
            } else {
                throw new FileNotFoundException("Missing File path");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }


}
