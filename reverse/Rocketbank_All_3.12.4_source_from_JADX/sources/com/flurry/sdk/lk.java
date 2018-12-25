package com.flurry.sdk;

import java.util.concurrent.ThreadFactory;

public final class lk implements ThreadFactory {
    /* renamed from: a */
    private final ThreadGroup f414a;
    /* renamed from: b */
    private final int f415b = 1;

    public lk(String str) {
        this.f414a = new ThreadGroup(str);
    }

    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f414a, runnable);
        runnable = new StringBuilder();
        runnable.append(this.f414a.getName());
        runnable.append(":");
        runnable.append(thread.getId());
        thread.setName(runnable.toString());
        thread.setPriority(this.f415b);
        return thread;
    }
}
