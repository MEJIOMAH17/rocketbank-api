package com.samsung.android.sdk.samsungpay.v2;

import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;

abstract class BindRetry {
    private long SPAY_BIND_TIMEOUT = 30000;
    private BindRetryTimerTask bindRetryTimerTask;
    protected boolean isScheduled = false;
    private int mBindCounter = 4;
    private final Object scheduleLock = new Object();

    public class BindRetryTimerTask extends TimerTask {
        protected BindRetryTimerTask() {
        }

        public final void run() {
            Log.d("SPAYSDK:BindRetry", "run : BindRetryTimerTask");
            synchronized (BindRetry.this.scheduleLock) {
                BindRetry.this.isScheduled = false;
            }
            BindRetry.this.runTimer();
        }
    }

    abstract void runTimer();

    protected BindRetry() {
    }

    protected final boolean isOverCounter() {
        return getBindCounter() <= 0;
    }

    private int getBindCounter() {
        int i;
        synchronized (this.scheduleLock) {
            i = this.mBindCounter;
        }
        return i;
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("Cannot clone instance of this class");
    }

    protected final boolean isScheduled() {
        boolean z;
        synchronized (this.scheduleLock) {
            z = this.isScheduled;
        }
        return z;
    }

    protected final boolean scheduleBindTimer() {
        Log.d("SPAYSDK:BindRetry", "scheduleBindTimer: scheduling bind timer");
        synchronized (this.scheduleLock) {
            if (getBindCounter() <= 0) {
                releaseBindTimerTask();
                return false;
            }
            this.mBindCounter--;
            StringBuilder stringBuilder = new StringBuilder("scheduleBindTimer: count = ");
            stringBuilder.append(this.mBindCounter);
            Log.d("SPAYSDK:BindRetry", stringBuilder.toString());
            try {
                this.bindRetryTimerTask = new BindRetryTimerTask();
                new Timer().schedule(this.bindRetryTimerTask, this.SPAY_BIND_TIMEOUT);
                this.isScheduled = true;
                return true;
            } catch (Exception e) {
                Log.d("SPAYSDK:BindRetry", "scheduleBindTimer: Exception in scheduling bind timer ");
                e.printStackTrace();
                this.isScheduled = false;
                return false;
            }
        }
    }

    protected final void releaseBindTimerTask() {
        Log.d("SPAYSDK:BindRetry", "releaseBindTimerTask: cleanup binder timer");
        synchronized (this.scheduleLock) {
            try {
                if (this.bindRetryTimerTask.cancel()) {
                    Log.d("SPAYSDK:BindRetry", "releaseBindTimerTask: timerTask cancel return true ");
                } else {
                    Log.d("SPAYSDK:BindRetry", "releaseBindTimerTask: timerTask cancel return false ");
                }
                this.isScheduled = false;
                this.mBindCounter = 4;
            } catch (Exception e) {
                try {
                    Log.d("SPAYSDK:BindRetry", "releaseBindTimerTask: Exception in canceling bind timer ");
                    e.printStackTrace();
                    this.isScheduled = false;
                    this.mBindCounter = 4;
                } catch (Throwable th) {
                    this.isScheduled = false;
                    this.mBindCounter = 4;
                }
            }
        }
    }
}
