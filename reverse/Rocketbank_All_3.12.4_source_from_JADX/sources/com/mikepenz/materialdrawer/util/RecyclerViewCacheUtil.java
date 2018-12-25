package com.mikepenz.materialdrawer.util;

import android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.HashMap;
import java.util.Stack;

public final class RecyclerViewCacheUtil {
    private static RecyclerViewCacheUtil SINGLETON;
    private HashMap<String, Stack<ViewHolder>> CACHE = new HashMap();
    private int CACHE_SIZE = 3;

    private RecyclerViewCacheUtil() {
    }

    public static RecyclerViewCacheUtil getInstance() {
        if (SINGLETON == null) {
            SINGLETON = new RecyclerViewCacheUtil();
        }
        return SINGLETON;
    }

    public final void clear() {
        this.CACHE.clear();
    }

    public final ViewHolder obtain(String str) {
        return (!this.CACHE.containsKey(str) || ((Stack) this.CACHE.get(str)).size() <= 0) ? null : (ViewHolder) ((Stack) this.CACHE.get(str)).pop();
    }
}
