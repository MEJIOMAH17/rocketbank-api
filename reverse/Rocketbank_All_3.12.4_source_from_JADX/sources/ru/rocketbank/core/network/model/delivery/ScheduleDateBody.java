package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: ScheduleDateBody.kt */
public final class ScheduleDateBody {
    private final String date;
    private final String interval;

    public static /* bridge */ /* synthetic */ ScheduleDateBody copy$default(ScheduleDateBody scheduleDateBody, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = scheduleDateBody.interval;
        }
        if ((i & 2) != 0) {
            str2 = scheduleDateBody.date;
        }
        return scheduleDateBody.copy(str, str2);
    }

    public final String component1() {
        return this.interval;
    }

    public final String component2() {
        return this.date;
    }

    public final ScheduleDateBody copy(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "interval");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.DATE);
        return new ScheduleDateBody(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ScheduleDateBody) {
                ScheduleDateBody scheduleDateBody = (ScheduleDateBody) obj;
                if (Intrinsics.areEqual(this.interval, scheduleDateBody.interval) && Intrinsics.areEqual(this.date, scheduleDateBody.date)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.interval;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.date;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ScheduleDateBody(interval=");
        stringBuilder.append(this.interval);
        stringBuilder.append(", date=");
        stringBuilder.append(this.date);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ScheduleDateBody(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "interval");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.DATE);
        this.interval = str;
        this.date = str2;
    }

    public final String getInterval() {
        return this.interval;
    }

    public final String getDate() {
        return this.date;
    }
}
