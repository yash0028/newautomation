package util.file;

import com.google.gson.JsonElement;

import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

public interface IFileReader {

    default String getResourcePath(String fileInResourceFolder) {
        return FileHandler.getInstance().getResourceFilePath(fileInResourceFolder);
    }

    default JsonElement getJsonElementFromFile(String fileInResourceFolder) {
        return FileHandler.getInstance().getJsonFile(fileInResourceFolder);
    }

    default String getFileContents(String fileInResourceFolder, boolean ignoreComments, boolean ignoreEmpty) {
        return FileHandler.getInstance().getFileContents(fileInResourceFolder, ignoreComments, ignoreEmpty);
    }

    default String getFileContents(String fileInResourceFolder) {
        return this.getFileContents(fileInResourceFolder, true, true);
    }

    default List<String> getFileLines(String fileInResourceFolder, boolean ignoreComments, boolean ignoreEmpty) {
        return FileHandler.getInstance().getFileLines(fileInResourceFolder, ignoreComments, ignoreEmpty);
    }

    default List<String> getFileLines(String fileInResourceFolder) {
        return getFileLines(fileInResourceFolder, true, true);
    }

    default Map<String, String> getPropertiesMap(String fileInResourceFolder) {
        return FileHandler.getInstance().getPropertiesMap(fileInResourceFolder);
    }

    default Reader getReader(String fileInResourceFolder) throws UnsupportedEncodingException {
        return FileHandler.getInstance().getReader(fileInResourceFolder);
    }
}
