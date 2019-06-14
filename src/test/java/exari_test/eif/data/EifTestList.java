package exari_test.eif.data;

import com.univocity.parsers.common.record.Record;
import com.univocity.parsers.csv.CsvParser;
import com.univocity.parsers.csv.CsvParserSettings;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.file.IFileReader;

import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class EifTestList extends ArrayList<EifTestData> implements IFileReader {
    private static final Logger log = LoggerFactory.getLogger(EifTestList.class);

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public void loadCSV(String fileInSupportExariDataMap) {
        CsvParserSettings settings = new CsvParserSettings();
        CsvParser parser = new CsvParser(settings);
        List<Record> records = parser.parseAllRecords(getCSVReader(fileInSupportExariDataMap));

        if (records.isEmpty()) {
            log.error("found no records for '{}'", fileInSupportExariDataMap);
            return;
        }

        for (int i = 1; i < records.size(); i++) {
            Record r = records.get(i);
            EifTestData data = (EifTestData) r.fillFieldMap(new EifTestData());
            if (!data.isEmpty()) {
                log.trace("loaded record '{}'", data.getOrDefault("commonName", "missing common name"));
                this.add(data);
            } else {
                log.trace("found empty record");
            }
        }
    }
    
    /*
    HELPER METHODS
    */

    private Reader getCSVReader(String fileInSupportExariDataMap) {
        String path = "/support/hive/dataMap/" + fileInSupportExariDataMap;
        try {
            return getReader(path);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    /*
    UTILITY CLASS
    */
}
