package io.fabric.sdk.android.services.concurrency.internal;

import android.support.v7.gridlayout.C0222R;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

public final class RetryThreadPoolExecutor extends ScheduledThreadPoolExecutor {
    private final Backoff backoff;
    private final C0222R retryPolicy$245149d8;

    public RetryThreadPoolExecutor(int i, ThreadFactory threadFactory, C0222R c0222r, Backoff backoff) {
        super(i, threadFactory);
        if (c0222r == null) {
            throw new NullPointerException("retry policy must not be null");
        } else if (backoff == null) {
            throw new NullPointerException("backoff must not be null");
        } else {
            this.retryPolicy$245149d8 = c0222r;
            this.backoff = backoff;
        }
    }
}
