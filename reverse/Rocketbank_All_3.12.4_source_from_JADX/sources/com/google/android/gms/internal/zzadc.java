package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzac;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class zzadc implements ThreadFactory {
    private final int mPriority;
    private final String zzaIv;
    private final AtomicInteger zzaIw;
    private final ThreadFactory zzaIx;

    public zzadc(String str) {
        this(str, 0);
    }

    public zzadc(String str, int i) {
        this.zzaIw = new AtomicInteger();
        this.zzaIx = Executors.defaultThreadFactory();
        this.zzaIv = (String) zzac.zzb((Object) str, (Object) "Name must not be null");
        this.mPriority = i;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = this.zzaIx.newThread(new zzadd(runnable, this.mPriority));
        String str = this.zzaIv;
        int andIncrement = this.zzaIw.getAndIncrement();
        StringBuilder stringBuilder = new StringBuilder(13 + String.valueOf(str).length());
        stringBuilder.append(str);
        stringBuilder.append("[");
        stringBuilder.append(andIncrement);
        stringBuilder.append("]");
        newThread.setName(stringBuilder.toString());
        return newThread;
    }
}
