package org.slf4j.impl;

import org.slf4j.helpers.Util;
import util.configuration.IConfigurable;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;

public class GherkinLoggerConfiguration implements IConfigurable {

    /*
    DEFAULT OPTIONS
     */

    static final int DEFAULT_LOG_LEVEL_DEFAULT = GherkinLogger.LOG_LEVEL_INFO;

    static final boolean SHOW_LOG_LEVEL_DEFAULT = true;
    static final boolean SHOW_DATE_TIME_DEFAULT = false;
    static final boolean SHOW_THREAD_NAME_DEFAULT = false;
    static final boolean SHOW_LOG_NAME_DEFAULT = false;
    static final boolean SHOW_SHORT_LOG_NAME_DEFAULT = true;
    static final boolean LEVEL_IN_BRACKETS_DEFAULT = true;
    static final boolean CACHE_OUTPUT_STREAM_DEFAULT = false;
    static final boolean REPORT_TO_SCENARIO_DEFAULT = true;

    static final String DATE_TIME_FORMAT_STRING_DEFAULT = null;
    static final String WARN_LEVEL_STRING_DEFAULT = "WARN";
    static final String LOG_FILE_DEFAULT = "System.out scenario";


    /*
    CONFIGURATION KEYS
     */

    private static final String DEFAULT_LOG_LEVEL_KEY = "defaultLogLevel";
    private static final String SHOW_LOG_LEVEL_KEY = "showLogLevel";
    private static final String SHOW_DATE_TIME_KEY = "showDateTime";
    private static final String SHOW_THREAD_NAME_KEY = "showThread";
    private static final String SHOW_LOG_NAME_KEY = "showLogName";
    private static final String SHOW_SHORT_LOG_NAME_KEY = "showShortLogName";
    private static final String LEVEL_IN_BRACKETS_KEY = "levelInBrackets";
    private static final String CACHE_OUTPUT_STREAM_KEY = "cacheOutputStream";
    private static final String REPORT_TO_SCENARIO_KEY = "reportToScenario";
    private static final String DATE_TIME_FORMAT_STRING_KEY = "dateTimeFormat";
    private static final String WARN_LEVEL_STRING_KEY = "warnLevelString";
    private static final String LOG_FILE_KEY = "logFile";


    /*
    CLASS VARIABLES
     */

    int defaultLogLevel;
    boolean showLogLevel;
    boolean showDateTime;
    boolean showThreadName;
    boolean showLogName;
    boolean showShortLogName;
    boolean levelInBrackets;
    boolean cacheOutputStream;
    boolean reportToScenario;
    String dateTimeFormat;
    String warnLevel;
    String logFile;
    Output output;


    /*
    CONSTRUCTOR
     */

    public GherkinLoggerConfiguration() {
        defaultLogLevel = configGetOptionalString(DEFAULT_LOG_LEVEL_KEY)
                .map(GherkinLoggerConfiguration::string2Level)
                .orElse(DEFAULT_LOG_LEVEL_DEFAULT);
        showLogLevel = configGetOptionalBoolean(SHOW_LOG_LEVEL_KEY).orElse(SHOW_LOG_LEVEL_DEFAULT);
        showDateTime = configGetOptionalBoolean(SHOW_DATE_TIME_KEY).orElse(SHOW_DATE_TIME_DEFAULT);
        showThreadName = configGetOptionalBoolean(SHOW_THREAD_NAME_KEY).orElse(SHOW_THREAD_NAME_DEFAULT);
        showLogName = configGetOptionalBoolean(SHOW_LOG_NAME_KEY).orElse(SHOW_LOG_NAME_DEFAULT);
        showShortLogName = configGetOptionalBoolean(SHOW_SHORT_LOG_NAME_KEY).orElse(SHOW_SHORT_LOG_NAME_DEFAULT);
        levelInBrackets = configGetOptionalBoolean(LEVEL_IN_BRACKETS_KEY).orElse(LEVEL_IN_BRACKETS_DEFAULT);
        cacheOutputStream = configGetOptionalBoolean(CACHE_OUTPUT_STREAM_KEY).orElse(CACHE_OUTPUT_STREAM_DEFAULT);
        reportToScenario = configGetOptionalBoolean(REPORT_TO_SCENARIO_KEY).orElse(REPORT_TO_SCENARIO_DEFAULT);
        dateTimeFormat = configGetOptionalString(DATE_TIME_FORMAT_STRING_KEY).orElse(DATE_TIME_FORMAT_STRING_DEFAULT);
        warnLevel = configGetOptionalString(WARN_LEVEL_STRING_KEY).orElse(WARN_LEVEL_STRING_DEFAULT);
        logFile = configGetOptionalString(LOG_FILE_KEY).orElse(LOG_FILE_DEFAULT);

        output = computeOutputChoice(logFile, cacheOutputStream);
    }

    /*
    STATIC METHODS
     */

    private static int string2Level(String level) {
        if ("trace".equalsIgnoreCase(level)) {
            return GherkinLogger.LOG_LEVEL_TRACE;
        } else if ("debug".equalsIgnoreCase(level)) {
            return GherkinLogger.LOG_LEVEL_DEBUG;
        } else if ("info".equalsIgnoreCase(level)) {
            return GherkinLogger.LOG_LEVEL_INFO;
        } else if ("warn".equalsIgnoreCase(level)) {
            return GherkinLogger.LOG_LEVEL_WARN;
        } else if ("error".equalsIgnoreCase(level)) {
            return GherkinLogger.LOG_LEVEL_ERROR;
        }
        // assume INFO by default
        return GherkinLogger.LOG_LEVEL_INFO;
    }

    private static Output computeOutputChoice(String logFile, boolean cacheOutputStream) {
        if ("System.err".equalsIgnoreCase(logFile))
            if (cacheOutputStream)
                return new Output(Output.Type.CACHED_SYSTEM_ERROR);
            else
                return new Output(Output.Type.SYSTEM_ERROR);
        else if ("System.out".equalsIgnoreCase(logFile)) {
            if (cacheOutputStream)
                return new Output(Output.Type.CACHED_SYSTEM_OUT);
            else
                return new Output(Output.Type.SYSTEM_OUT);
        } else {
            try {
                return new Output(new PrintStream(new FileOutputStream(logFile)));
            } catch (FileNotFoundException e) {
                Util.report("Could not open [" + logFile + "]. Defaulting to System.err", e);
                return new Output(Output.Type.SYSTEM_OUT);
            }
        }
    }
}
