package org.slf4j.impl;

import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class GherkinLoggerFactory implements ILoggerFactory {

    ConcurrentMap<String, Logger> loggerMap;

    /*
    CONSTRUCTOR
     */

    public GherkinLoggerFactory() {
        loggerMap = new ConcurrentHashMap<>();
        GherkinLogger.lazyInit();
    }

    /*
    LOGGER FACTORY METHODS
     */

    @Override
    public Logger getLogger(String name) {
        if (loggerMap.containsKey(name) && loggerMap.get(name) != null) {
            return loggerMap.get(name);
        } else {
            Logger newInstance = new GherkinLogger(name);
            Logger oldInstance = loggerMap.putIfAbsent(name, newInstance);
            return oldInstance == null ? newInstance : oldInstance;
        }
    }

    /*
    CLASS METHODS
     */

    void reset() {
        loggerMap.clear();
    }
}
