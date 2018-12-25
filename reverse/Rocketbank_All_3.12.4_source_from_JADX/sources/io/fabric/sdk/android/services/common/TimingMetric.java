package io.fabric.sdk.android.services.common;

import android.os.SystemClock;
import android.util.Log;

public class TimingMetric {
    private final boolean disabled;
    private long duration;
    private final String eventName;
    private long start;
    private final String tag;

    public TimingMetric(String str, String str2) {
        this.eventName = str;
        this.tag = str2;
        this.disabled = Log.isLoggable(str2, 2) ^ 1;
    }

    public synchronized void startMeasuring() {
        if (!this.disabled) {
            this.start = SystemClock.elapsedRealtime();
            this.duration = 0;
        }
    }

    public synchronized void stopMeasuring() {
        if (!this.disabled) {
            if (this.duration == 0) {
                this.duration = SystemClock.elapsedRealtime() - this.start;
                reportToLog();
            }
        }
    }

    public long getDuration() {
        return this.duration;
    }

    private void reportToLog() {
        String str = this.tag;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.eventName);
        stringBuilder.append(": ");
        stringBuilder.append(this.duration);
        stringBuilder.append("ms");
        Log.v(str, stringBuilder.toString());
    }
}
