package util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeKeeper {
    private static final Logger log = LoggerFactory.getLogger(TimeKeeper.class);

    private static TimeKeeper INSTANCE = new TimeKeeper();

    private DateFormat iso = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ");
    private DateFormat hourminute = new SimpleDateFormat(("HH:mm:ss"));
    private Date startTime = new Date();

    private TimeKeeper() {
        log.debug("Start time {} {}", this.getStartTimeHMS(), this.getStartTimeISO());
    }

    public static TimeKeeper getInstance() {
        return INSTANCE;
    }

    public String getStartTimeISO() {
        return iso.format(startTime);
    }

    public String getStartTimeHMS() {
        return hourminute.format(startTime);
    }
}
