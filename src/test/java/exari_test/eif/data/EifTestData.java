package exari_test.eif.data;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;

public class EifTestData extends HashMap<String, String> {
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
        return this.getOrDefault("commonName", "");
    }

    public String getEifFile() {
        return this.getOrDefault("eifFile", "");
    }

    public String getMPIN() {
        return this.getOrDefault("MPIN", "");
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
}
