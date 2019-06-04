package exari_test.hive;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;
import java.util.stream.Collectors;

public class Hive {
    private static final Logger log = LoggerFactory.getLogger(Hive.class);
    private static Hive INSTANCE = new Hive();
    private static final int QUEUE_SIZE = 5;

    private Queue<ContractThread> threadQueue;
    private Collection<ContractThread> threads;

    /*
    CONSTRUCTOR
    */

    private Hive() {
        threadQueue = new ArrayDeque<>();
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

    public Hive addToQueue(ContractThread contractThread) {
        threadQueue.offer(contractThread);
        return this;
    }

    public Hive start() {
        while (!threadQueue.isEmpty()) {
            ContractThread nextThread = threadQueue.poll();

            log.info("waiting to add {} to queue", nextThread);

            // Wait until a slot becomes available
            while (threads.size() >= QUEUE_SIZE) {
                // Remove any terminated mangers
//                log.info("thread states: {}", threads.stream().map(Thread::getState).collect(Collectors.toList()));
                threads.removeIf(m -> m.getState() == Thread.State.TERMINATED);
            }

            // start next managers
            nextThread.start();

            // add manager to active list
            threads.add(nextThread);
        }

        return this;
    }

    public Hive waitTillComplete() {
        log.info("waiting until ");
        while (threads.size() > 0) {
            // Remove any terminated mangers
//            log.info("thread states: {}", threads.stream().map(Thread::getState).collect(Collectors.toList()));
            threads.removeIf(m -> m.getState() == Thread.State.TERMINATED);
        }

        return this;
    }

    public List<String> getQueueNames() {
        return this.threadQueue.stream().map(Thread::getName).collect(Collectors.toList());
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
