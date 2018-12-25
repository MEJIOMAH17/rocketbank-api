package com.bumptech.glide.util;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

public class LruCache<T, Y> {
    private final LinkedHashMap<T, Y> cache = new LinkedHashMap(100, 0.75f, true);
    private int currentSize = 0;
    private final int initialMaxSize;
    private int maxSize;

    protected int getSize(Y y) {
        return 1;
    }

    protected void onItemEvicted(T t, Y y) {
    }

    public LruCache(int i) {
        this.initialMaxSize = i;
        this.maxSize = i;
    }

    public final int getCurrentSize() {
        return this.currentSize;
    }

    public final Y get(T t) {
        return this.cache.get(t);
    }

    public final Y put(T t, Y y) {
        if (getSize(y) >= this.maxSize) {
            onItemEvicted(t, y);
            return null;
        }
        t = this.cache.put(t, y);
        if (y != null) {
            this.currentSize += getSize(y);
        }
        if (t != null) {
            this.currentSize -= getSize(t);
        }
        trimToSize(this.maxSize);
        return t;
    }

    public final Y remove(T t) {
        t = this.cache.remove(t);
        if (t != null) {
            this.currentSize -= getSize(t);
        }
        return t;
    }

    public final void clearMemory() {
        trimToSize(0);
    }

    protected final void trimToSize(int i) {
        while (this.currentSize > i) {
            Entry entry = (Entry) this.cache.entrySet().iterator().next();
            Object value = entry.getValue();
            this.currentSize -= getSize(value);
            Object key = entry.getKey();
            this.cache.remove(key);
            onItemEvicted(key, value);
        }
    }
}
