package ui_test.util;

import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
import java.util.Queue;

/**
 * RobotThread spun up a parellel thread to help perform actions to exit hung conditions.
 * Deprecated since rolled into IWebInteract
 */

@Deprecated
public class RobotThread extends Thread {
    private static final Logger log = LoggerFactory.getLogger(RobotThread.class);

    private Queue<RobotAction> actionQueue;
    private WebDriver driver;

    /*
    CONSTRUCTOR
    */

    public RobotThread(WebDriver driver) {
        this.driver = driver;
        this.actionQueue = new ArrayDeque<>();
    }

    /*
    CLASS METHODS
    */

    @Override
    public void run() {
        while (!actionQueue.isEmpty()) {
            Objects.requireNonNull(actionQueue.poll()).act();
        }
    }


    public RobotThread addClick() {
        this.actionQueue.offer(new RobotAction(driver, RobotAct.CLICK));
        return this;
    }

    public RobotThread addRefreshDelay30Secs() {
        this.actionQueue.offer(new RobotAction(driver, RobotAct.REFRESH));
        return this;
    }

    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    @Deprecated
    enum RobotAct {
        REFRESH,
        CLICK,
        KEY;
    }

    @Deprecated
    private static class RobotAction implements IWebInteract {
        WebDriver driver;
        RobotAct action;
        List<String> options;

        public RobotAction(WebDriver driver, RobotAct action) {
            this.driver = driver;
            this.action = action;
        }

        @Override
        public WebDriver getDriver() {
            return this.driver;
        }

        public boolean act() {
            try {
                switch (action) {
                    case REFRESH:

                        pause(30);
                        refreshPage();
                        log.info("dismissed event after");

                        break;
                    case CLICK:

                    default:
                        break;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }


            return true;
        }
    }


}
