package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public class zzadb implements Executor {
    private final Handler mHandler;

    public zzadb(Looper looper) {
        this.mHandler = new Handler(looper);
    }

    public void execute(Runnable runnable) {
        this.mHandler.post(runnable);
    }
}
