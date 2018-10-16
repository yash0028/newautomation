package util.file;

import com.google.gson.JsonElement;

import java.util.List;

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
}
