package util.file;

import java.io.File;
import java.io.IOException;

public interface IFileWriter {

    default File writeByteArrayToFile(String fileName, byte[] content) throws IOException {
        return FileHandler.getInstance().writeByteArrayToFile(fileName, content);
    }

    default boolean zipContainsFiles(File file) {
        return FileHandler.getInstance().zipContainsFiles(file);
    }

    default boolean saveFile(String fileName, String content) throws Exception {
        FileHandler.getInstance().saveFile(fileName, content);
        return true;
    }
}
