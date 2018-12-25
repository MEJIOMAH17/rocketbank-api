package ru.rocketbank.core.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: LimitModel.kt */
public final class LimitModel {
    private final String key;
    private final String value;

    public static /* bridge */ /* synthetic */ LimitModel copy$default(LimitModel limitModel, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = limitModel.key;
        }
        if ((i & 2) != 0) {
            str2 = limitModel.value;
        }
        return limitModel.copy(str, str2);
    }

    public final String component1() {
        return this.key;
    }

    public final String component2() {
        return this.value;
    }

    public final LimitModel copy(String str, String str2) {
        return new LimitModel(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof LimitModel) {
                LimitModel limitModel = (LimitModel) obj;
                if (Intrinsics.areEqual(this.key, limitModel.key) && Intrinsics.areEqual(this.value, limitModel.value)) {
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
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("LimitModel(key=");
        stringBuilder.append(this.key);
        stringBuilder.append(", value=");
        stringBuilder.append(this.value);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public LimitModel(String str, String str2) {
        this.key = str;
        this.value = str2;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getValue() {
        return this.value;
    }
}
