package util;

public interface IFileInteract {

    default String getResourcePath(String filePathWithinResource) {
        return getClass().getResource(filePathWithinResource).getFile();
    }
}
