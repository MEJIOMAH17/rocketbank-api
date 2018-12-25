package com.appsflyer;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class DebugLogQueue {
    private static DebugLogQueue ourInstance = new DebugLogQueue();
    List<Item> queue = new ArrayList();

    public static class Item {
        private String msg;
        private long timestamp = new Date().getTime();

        public Item(String str) {
            this.msg = str;
        }
    }

    public static DebugLogQueue getInstance() {
        return ourInstance;
    }

    private DebugLogQueue() {
    }
}
