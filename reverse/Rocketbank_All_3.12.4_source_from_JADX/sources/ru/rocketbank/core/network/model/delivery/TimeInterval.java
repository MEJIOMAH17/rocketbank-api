package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: TimeInterval.kt */
public final class TimeInterval {
    private final String interval;
    private final int intervalNumber;
    private final boolean isEnabled;

    public static /* bridge */ /* synthetic */ TimeInterval copy$default(TimeInterval timeInterval, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = timeInterval.interval;
        }
        if ((i2 & 2) != 0) {
            i = timeInterval.intervalNumber;
        }
        if ((i2 & 4) != 0) {
            z = timeInterval.isEnabled;
        }
        return timeInterval.copy(str, i, z);
    }

    public final String component1() {
        return this.interval;
    }

    public final int component2() {
        return this.intervalNumber;
    }

    public final boolean component3() {
        return this.isEnabled;
    }

    public final TimeInterval copy(String str, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "interval");
        return new TimeInterval(str, i, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TimeInterval) {
            TimeInterval timeInterval = (TimeInterval) obj;
            if (Intrinsics.areEqual(this.interval, timeInterval.interval)) {
                if (this.intervalNumber == timeInterval.intervalNumber) {
                    if (this.isEnabled == timeInterval.isEnabled) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.interval;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.intervalNumber) * 31;
        int i = this.isEnabled;
        if (i != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TimeInterval(interval=");
        stringBuilder.append(this.interval);
        stringBuilder.append(", intervalNumber=");
        stringBuilder.append(this.intervalNumber);
        stringBuilder.append(", isEnabled=");
        stringBuilder.append(this.isEnabled);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public TimeInterval(String str, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "interval");
        this.interval = str;
        this.intervalNumber = i;
        this.isEnabled = z;
    }

    public final String getInterval() {
        return this.interval;
    }

    public final int getIntervalNumber() {
        return this.intervalNumber;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }
}
