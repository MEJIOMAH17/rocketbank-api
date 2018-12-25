package com.crashlytics.android.answers;

import android.support.v7.gridlayout.C0222R.dimen;

final class RetryManager {
    long lastRetry;
    private dimen retryState$253c810b;

    public RetryManager(dimen dimen) {
        this.retryState$253c810b = dimen;
    }

    public final boolean canRetry(long j) {
        return j - this.lastRetry >= 1000000 * this.retryState$253c810b.getRetryDelay() ? 1 : 0;
    }

    public final void recordRetry(long j) {
        this.lastRetry = j;
        this.retryState$253c810b = this.retryState$253c810b.nextRetryState$3053fe0c();
    }

    public final void reset() {
        this.lastRetry = 0;
        this.retryState$253c810b = this.retryState$253c810b.initialRetryState$3053fe0c();
    }
}
