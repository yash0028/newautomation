package util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Singleton to get a consistent start time that can be used to name builds
 */
public class TimeKeeper {
    private static final Logger log = LoggerFactory.getLogger(TimeKeeper.class);
    private static TimeKeeper INSTANCE = new TimeKeeper();

    private DateTimeFormatter iso = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mmZ");
    private DateTimeFormatter hourminute = DateTimeFormatter.ofPattern("HH:mm:ss");
    private DateTimeFormatter exariSim = DateTimeFormatter.ofPattern("MMMM d, yyyy");

    private ZonedDateTime startTime = ZonedDateTime.now();

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
        return startTime.format(iso);
    }

    /**
     * get the hour minute second format from local start time
     *
     * @return local hour minute second date
     */
    public String getStartTimeHMS() {
        return startTime.format(hourminute);
    }

    public String getCurrentTimeISO() {
        return ZonedDateTime.now().format(iso);
    }

    public String getCurrentTimeHMS() {
        return ZonedDateTime.now().format(hourminute);
    }

    public String getExariFutureDate(long addDays) {
        return ZonedDateTime.now().plusDays(addDays).format(exariSim);
    }


}
