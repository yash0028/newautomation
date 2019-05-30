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

    private Queue<ContractThread> threadQueue;
    private Collection<ContractThread> threads;

    /*
    CONSTRUCTOR
    */

    private Hive() {
        threadQueue = new PriorityQueue<>();
        threads = new ArrayList<>();
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

    public void addToQueue(ContractThread contractThread) {
        threadQueue.offer(contractThread);
    }

    public void start() {
        while (!threadQueue.isEmpty()) {
            ContractThread nextThread = threadQueue.poll();

            log.info("waiting to add {} to queue", nextThread);

            // Wait until a slot becomes available
            while (threads.size() >= 5) {
                // Remove any terminated mangers
                threads.removeIf(m -> m.getState() == Thread.State.TERMINATED);
            }

            // start next managers
            nextThread.start();

            // add manager to active list
            threads.add(nextThread);
        }

    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
