package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: Interval.kt */
public final class Interval {
    private final String key;
    private final String text;

    public static /* bridge */ /* synthetic */ Interval copy$default(Interval interval, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = interval.key;
        }
        if ((i & 2) != 0) {
            str2 = interval.text;
        }
        return interval.copy(str, str2);
    }

    public final String component1() {
        return this.key;
    }

    public final String component2() {
        return this.text;
    }

    public final Interval copy(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "key");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.TEXT);
        return new Interval(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Interval) {
                Interval interval = (Interval) obj;
                if (Intrinsics.areEqual(this.key, interval.key) && Intrinsics.areEqual(this.text, interval.text)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.text;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Interval(key=");
        stringBuilder.append(this.key);
        stringBuilder.append(", text=");
        stringBuilder.append(this.text);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Interval(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "key");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.TEXT);
        this.key = str;
        this.text = str2;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getText() {
        return this.text;
    }
}
