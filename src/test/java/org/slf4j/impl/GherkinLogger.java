package org.slf4j.impl;

import general_test.util.UtilityGeneralSteps;
import org.slf4j.event.LoggingEvent;
import org.slf4j.helpers.FormattingTuple;
import org.slf4j.helpers.MarkerIgnoringBase;
import org.slf4j.helpers.MessageFormatter;
import org.slf4j.spi.LocationAwareLogger;
import util.TimeKeeper;

import java.io.PrintStream;

public class GherkinLogger extends MarkerIgnoringBase {

    protected static final int LOG_LEVEL_TRACE = LocationAwareLogger.TRACE_INT;
    protected static final int LOG_LEVEL_DEBUG = LocationAwareLogger.DEBUG_INT;
    protected static final int LOG_LEVEL_INFO = LocationAwareLogger.INFO_INT;
    protected static final int LOG_LEVEL_WARN = LocationAwareLogger.WARN_INT;
    protected static final int LOG_LEVEL_ERROR = LocationAwareLogger.ERROR_INT;
    private static boolean INITIALIZED = false;
    private static GherkinLoggerConfiguration CONFIG = null;

    private int currentLogLevel = LOG_LEVEL_INFO;
    private String name;
    private transient String shortLogName = null;

    /*
    CONSTRUCTOR
     */

    GherkinLogger(String name) {
        this.name = name;
        this.currentLogLevel = CONFIG.defaultLogLevel;
    }

    /*
    STATIC METHODS
     */

    static void lazyInit() {
        if (INITIALIZED) {
            return;
        }
        INITIALIZED = true;
        init();
    }

    // external software might be invoking this method directly. Do not rename
    // or change its semantics.
    static void init() {
        CONFIG = new GherkinLoggerConfiguration();
    }

    /*
    Marker Ignoring METHODS
     */

    @Override
    public boolean isTraceEnabled() {
        return isLevelEnabled(LOG_LEVEL_TRACE);
    }

    @Override
    public void trace(String msg) {
        log(LOG_LEVEL_TRACE, msg, null);
    }

    @Override
    public void trace(String format, Object arg) {
        formatAndLog(LOG_LEVEL_TRACE, format, arg);
    }

    @Override
    public void trace(String format, Object arg1, Object arg2) {
        formatAndLog(LOG_LEVEL_TRACE, format, arg1, arg2);
    }

    @Override
    public void trace(String format, Object... arguments) {
        formatAndLog(LOG_LEVEL_TRACE, format, arguments);
    }

    @Override
    public void trace(String msg, Throwable t) {
        log(LOG_LEVEL_TRACE, msg, t);
    }

    @Override
    public boolean isDebugEnabled() {
        return isLevelEnabled(LOG_LEVEL_DEBUG);
    }

    @Override
    public void debug(String msg) {
        log(LOG_LEVEL_DEBUG, msg, null);
    }

    @Override
    public void debug(String format, Object arg) {
        formatAndLog(LOG_LEVEL_DEBUG, format, arg);
    }

    @Override
    public void debug(String format, Object arg1, Object arg2) {
        formatAndLog(LOG_LEVEL_DEBUG, format, arg1, arg2);
    }

    @Override
    public void debug(String format, Object... arguments) {
        formatAndLog(LOG_LEVEL_DEBUG, format, arguments);
    }

    @Override
    public void debug(String msg, Throwable t) {
        log(LOG_LEVEL_DEBUG, msg, t);
    }

    @Override
    public boolean isInfoEnabled() {
        return isLevelEnabled(LOG_LEVEL_INFO);
    }

    @Override
    public void info(String msg) {
        log(LOG_LEVEL_INFO, msg, null);
    }

    @Override
    public void info(String format, Object arg) {
        formatAndLog(LOG_LEVEL_INFO, format, arg);
    }

    @Override
    public void info(String format, Object arg1, Object arg2) {
        formatAndLog(LOG_LEVEL_INFO, format, arg1, arg2);
    }

    @Override
    public void info(String format, Object... arguments) {
        formatAndLog(LOG_LEVEL_INFO, format, arguments);
    }

    @Override
    public void info(String msg, Throwable t) {
        log(LOG_LEVEL_INFO, msg, t);
    }

    @Override
    public boolean isWarnEnabled() {
        return isLevelEnabled(LOG_LEVEL_WARN);
    }

    @Override
    public void warn(String msg) {
        log(LOG_LEVEL_WARN, msg, null);
    }

    @Override
    public void warn(String format, Object arg) {
        formatAndLog(LOG_LEVEL_WARN, format, arg);
    }

    @Override
    public void warn(String format, Object arg1, Object arg2) {
        formatAndLog(LOG_LEVEL_WARN, format, arg1, arg2);
    }

    @Override
    public void warn(String format, Object... arguments) {
        formatAndLog(LOG_LEVEL_WARN, format, arguments);
    }

    @Override
    public void warn(String msg, Throwable t) {
        log(LOG_LEVEL_WARN, msg, t);
    }

    @Override
    public boolean isErrorEnabled() {
        return isLevelEnabled(LOG_LEVEL_ERROR);
    }

    @Override
    public void error(String msg) {
        log(LOG_LEVEL_ERROR, msg, null);
    }

    @Override
    public void error(String format, Object arg) {
        formatAndLog(LOG_LEVEL_ERROR, format, arg);
    }

    @Override
    public void error(String format, Object arg1, Object arg2) {
        formatAndLog(LOG_LEVEL_ERROR, format, arg1, arg2);
    }

    @Override
    public void error(String format, Object... arguments) {
        formatAndLog(LOG_LEVEL_ERROR, format, arguments);
    }

    @Override
    public void error(String msg, Throwable t) {
        log(LOG_LEVEL_ERROR, msg, t);
    }

    /*
    CLASS METHODS
     */

    public void log(LoggingEvent event) {
        int levelInt = event.getLevel().toInt();

        if (!isLevelEnabled(levelInt)) {
            return;
        }
        FormattingTuple tp = MessageFormatter.arrayFormat(event.getMessage(), event.getArgumentArray(), event.getThrowable());
        log(levelInt, tp.getMessage(), event.getThrowable());
    }

    /*
    HELPER METHODS
     */

    private void formatAndLog(int level, String format, Object arg1) {
        if (!isLevelEnabled(level)) {
            return;
        }
        FormattingTuple tp = MessageFormatter.format(format, arg1);
        log(level, tp.getMessage(), tp.getThrowable());
    }

    private void formatAndLog(int level, String format, Object arg1, Object arg2) {
        if (!isLevelEnabled(level)) {
            return;
        }
        FormattingTuple tp = MessageFormatter.format(format, arg1, arg2);
        log(level, tp.getMessage(), tp.getThrowable());
    }

    private void formatAndLog(int level, String format, Object... arguments) {
        if (!isLevelEnabled(level)) {
            return;
        }
        FormattingTuple tp = MessageFormatter.arrayFormat(format, arguments);
        log(level, tp.getMessage(), tp.getThrowable());
    }

    private void log(int level, String message, Throwable t) {
        if (!isLevelEnabled(level)) {
            return;
        }

        StringBuilder buffer = new StringBuilder();

        //Append datetime
        if (CONFIG.showDateTime) {
            buffer.append(TimeKeeper.getInstance().getCurrentTimeISO()).append(" ");
        }

        //Append thread name
        if (CONFIG.showThreadName) {
            buffer.append("[").append(Thread.currentThread().getName()).append("]").append(" ");
        }

        //Append level name
        if (CONFIG.showLogLevel) {
            if (CONFIG.levelInBrackets) {
                buffer.append("[").append(renderLevel(level)).append("]").append(" ");
            } else {
                buffer.append(renderLevel(level)).append(" ");
            }
        }

        //Append log name
        if (CONFIG.showShortLogName) {
            if (shortLogName == null) {
                shortLogName = computeShortName();
            }
            int lineNumber = (new Throwable()).getStackTrace()[2].getLineNumber();
            buffer.append(String.valueOf(shortLogName)).append("[").append(lineNumber).append("] - ");
        } else if (CONFIG.showLogName) {
            buffer.append(String.valueOf(name)).append(" - ");
        }

        //Append message
        buffer.append(message);

        if (CONFIG.reportToScenario && UtilityGeneralSteps.scenario != null) {
            writeScenario(buffer, t);
        } else {
            write(buffer, t);
        }

    }

    private void write(StringBuilder buffer, Throwable t) {
        PrintStream targetStream = CONFIG.output.getTargetStream();

        targetStream.println(buffer.toString());
        writeThrowable(t, targetStream);
        targetStream.flush();
    }

    private void writeThrowable(Throwable t, PrintStream targetStream) {
        if (t != null) {
            t.printStackTrace(targetStream);
        }
    }

    private void writeScenario(StringBuilder buffer, Throwable t) {
        UtilityGeneralSteps.scenario.write(buffer.toString());

        if (t != null) {
//            UtilityGeneralSteps.scenario.write(t.getMessage());
            writeThrowable(t, CONFIG.output.getTargetStream());
        }
    }

    private boolean isLevelEnabled(int logLevel) {
        // log level are numerically ordered so can use simple numeric
        // comparison
        return (logLevel >= currentLogLevel);
    }

    private String renderLevel(int level) {
        switch (level) {
            case LOG_LEVEL_TRACE:
                return "TRACE";
            case LOG_LEVEL_DEBUG:
                return ("DEBUG");
            case LOG_LEVEL_INFO:
                return "INFO";
            case LOG_LEVEL_WARN:
                return CONFIG.warnLevel;
            case LOG_LEVEL_ERROR:
                return "ERROR";
        }
        throw new IllegalStateException("Unrecognized level [" + level + "]");
    }

    private String computeShortName() {
        return name.substring(name.lastIndexOf(".") + 1);
    }

}
