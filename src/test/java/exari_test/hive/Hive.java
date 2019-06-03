package exari_test.hive;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Collection;
import java.util.PriorityQueue;
import java.util.Queue;

public class Hive {
    private static final Logger log = LoggerFactory.getLogger(Hive.class);
    private static Hive INSTANCE = new Hive();

    private Queue<ContractManager> managerQueue;
    private Collection<ContractManager> activeManagers;

    /*
    CONSTRUCTOR
    */

    private Hive() {
        managerQueue = new PriorityQueue<>();
        activeManagers = new ArrayList<>();
    }
    
    /*
    STATIC METHODS
    */

    public static Hive getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    public void addToQueue(ContractManager manager) {
        managerQueue.offer(manager);
    }

    public void start() {
        while (!managerQueue.isEmpty()) {
            ContractManager next = managerQueue.poll();

            log.info("waiting to add {} to queue", next);

            // Wait until a slot becomes available
            while (activeManagers.size() >= 5) {
                // Remove any terminated mangers
                activeManagers.removeIf(m -> m.getThreadState() == Thread.State.TERMINATED);
            }

            // start next managers
            next.start();

            // add manager to active list
            activeManagers.add(next);
        }

    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
