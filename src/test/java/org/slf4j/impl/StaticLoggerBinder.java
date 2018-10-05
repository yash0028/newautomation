package org.slf4j.impl;

import org.slf4j.ILoggerFactory;
import org.slf4j.spi.LoggerFactoryBinder;

public class StaticLoggerBinder implements LoggerFactoryBinder {
    private static final StaticLoggerBinder SINGLETON = new StaticLoggerBinder();
    private static final String LOGGER_FACTORY_CLASS_STRING = GherkinLoggerFactory.class.getName();

    private ILoggerFactory loggerFactory;

    /*
    CONSTRUCTOR
     */

    public StaticLoggerBinder() {
        this.loggerFactory = new GherkinLoggerFactory();
    }

    /*
    STATIC METHODS
     */

    public static final StaticLoggerBinder getSingleton() {
        return SINGLETON;
    }

    /*
    LOGGER FACTORY BINDER METHODS
     */

    @Override
    public ILoggerFactory getLoggerFactory() {
        return this.loggerFactory;
    }

    @Override
    public String getLoggerFactoryClassStr() {
        return LOGGER_FACTORY_CLASS_STRING;
    }

    /*
    CLASS METHODS
     */
}
