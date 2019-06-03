package exari_test.hive;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ContractManager {
    private static final Logger log = LoggerFactory.getLogger(ContractManager.class);

    private final String fileName;
    private ContractThread thread;

    /*
    CONSTRUCTOR
    */

    public ContractManager(String eifFileName) {
        this.fileName = eifFileName;
//        this.thread = new ContractThread(eifFileName);
    }
    
    /*
    CLASS METHODS
    */

    public void start() {
        thread.run();
    }

    public Thread.State getThreadState() {
        return thread.getState();
    }

    @Override
    public String toString() {
        return "ContractManager{" +
                "fileName='" + fileName + '\'' +
                '}';
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
