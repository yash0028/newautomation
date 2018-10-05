package org.slf4j.impl;

import java.io.PrintStream;

public class Output {

    final Type outputType;
    final PrintStream targetStream;

    /*
    CONSTRUCTOR
     */

    Output(Type outputChoiceType) {
        if (outputChoiceType == Type.FILE) {
            throw new IllegalArgumentException();
        }
        this.outputType = outputChoiceType;
        if (outputChoiceType == Type.CACHED_SYSTEM_OUT) {
            this.targetStream = System.out;
        } else if (outputChoiceType == Type.CACHED_SYSTEM_ERROR) {
            this.targetStream = System.err;
        } else {
            this.targetStream = null;
        }
    }

    Output(PrintStream printStream) {
        this.outputType = Type.FILE;
        this.targetStream = printStream;
    }

    /*
    CLASS METHODS
     */

    PrintStream getTargetStream() {
        switch (outputType) {
            case SYSTEM_OUT:
                return System.out;
            case SYSTEM_ERROR:
                return System.err;
            case CACHED_SYSTEM_OUT:
            case CACHED_SYSTEM_ERROR:
            case FILE:
                return targetStream;
            default:
                throw new IllegalArgumentException();
        }
    }

    /*
    UTILITY CLASS
     */

    enum Type {
        SYSTEM_OUT, CACHED_SYSTEM_OUT, SYSTEM_ERROR, CACHED_SYSTEM_ERROR, FILE;
    }

}
