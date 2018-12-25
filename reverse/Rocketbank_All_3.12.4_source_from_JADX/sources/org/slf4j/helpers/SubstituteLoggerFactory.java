package org.slf4j.helpers;

import java.util.ArrayList;
import java.util.List;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;

public final class SubstituteLoggerFactory implements ILoggerFactory {
    final List loggerNameList = new ArrayList();

    public final Logger getLogger(String str) {
        synchronized (this.loggerNameList) {
            this.loggerNameList.add(str);
        }
        return NOPLogger.NOP_LOGGER;
    }

    public final List getLoggerNameList() {
        List arrayList = new ArrayList();
        synchronized (this.loggerNameList) {
            arrayList.addAll(this.loggerNameList);
        }
        return arrayList;
    }
}
