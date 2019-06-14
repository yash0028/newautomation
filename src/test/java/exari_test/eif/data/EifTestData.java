package exari_test.eif.data;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.HashMap;
import java.util.Map;

public class EifTestData extends HashMap<String, String> implements IConfigurable, IFileReader {
    private static final Logger log = LoggerFactory.getLogger(EifTestData.class);

    private EifReport report;

    /*
    CONSTRUCTOR
    */

    public EifTestData() {
        report = new EifReport();
    }

    public EifTestData(Map<String, String> m) {
        this.putAll(m);
        report = new EifReport();
    }

    /*
    CLASS METHODS
    */

    public String getCommonName() {
        return this.getOrDefault(Key.COMMON_NAME, "");
    }

    public String getEifFile() {
        return this.getOrDefault(Key.EIF_FILE, "");
    }

    public String getMPIN() {
        return this.getOrDefault(Key.MPIN, "");
    }

    public Map<String, String> getDriverParam() {
        // Load file name
        String fileName = this.getOrDefault(Key.DRIVER_PARAMFile, "default").replaceAll(" ", "_");
        if (!fileName.endsWith(".properties")) {
            fileName += ".properties";
        }

        // Load path to file
        String path = configGetOptionalString("hive.data.location").orElse("/support/hive/");
        if (!path.endsWith("/")) {
            path += "/";
        }
        if (!path.startsWith("/")) {
            path = "/" + path;
        }

        // Add folder for driver param
        path += "driverParam/";

        Map<String, String> map = getPropertiesMap(path + fileName);
        log.trace(map.toString());

        return map;
    }

    public EifReport getReport() {
        return report;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();

        builder.append(this.getCommonName()).append("::").append(this.getEifFile());

        if (!this.getMPIN().isEmpty()) {
            builder.append("->").append(this.getMPIN());
        }

        return builder.toString();
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    static class Key {
        public static final String COMMON_NAME = "commonName";
        public static final String EIF_FILE = "eifFile";
        public static final String MPIN = "MPIN";
        public static final String DRIVER_PARAMFile = "driverParamFile";
    }
}
