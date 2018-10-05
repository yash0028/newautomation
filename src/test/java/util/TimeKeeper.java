package util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Singleton to get a consistent start time that can be used to name builds
 */
public class TimeKeeper {
    private static final Logger log = LoggerFactory.getLogger(TimeKeeper.class);
    private static TimeKeeper INSTANCE = new TimeKeeper();

    private DateFormat iso = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ");
    private DateFormat hourminute = new SimpleDateFormat(("HH:mm:ss"));
    private Date startTime = new Date();

    /*
    CONSTRUCTOR
     */

    private TimeKeeper() {
        log.debug("Start time {} {}", this.getStartTimeHMS(), this.getStartTimeISO());
    }

    /*
    STATIC METHODS
     */

    public static TimeKeeper getInstance() {
        return INSTANCE;
    }

    /*
    CLASS METHODS
     */

    /**
     * get the ISO date format from local start time
     *
     * @return local ISO date
     */
    public String getStartTimeISO() {
        return iso.format(startTime);
    }

    /**
     * get the hour minute second format from local start time
     *
     * @return local hour minute second date
     */
    public String getStartTimeHMS() {
        return hourminute.format(startTime);
    }

    public String getCurrentTimeISO() {
        return iso.format(new Date());
    }

    public String getCurrentTimeHMS() {
        return iso.format(new Date());
    }
}
