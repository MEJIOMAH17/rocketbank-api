package ru.rocketbank.core.network.model.androidpay;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: TurResponse.kt */
public final class TurResponse {
    private final boolean pending;
    private final String tur;

    public static /* bridge */ /* synthetic */ TurResponse copy$default(TurResponse turResponse, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = turResponse.tur;
        }
        if ((i & 2) != 0) {
            z = turResponse.pending;
        }
        return turResponse.copy(str, z);
    }

    public final String component1() {
        return this.tur;
    }

    public final boolean component2() {
        return this.pending;
    }

    public final TurResponse copy(String str, boolean z) {
        return new TurResponse(str, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TurResponse) {
            TurResponse turResponse = (TurResponse) obj;
            if (Intrinsics.areEqual(this.tur, turResponse.tur)) {
                if (this.pending == turResponse.pending) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.tur;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        int i = this.pending;
        if (i != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TurResponse(tur=");
        stringBuilder.append(this.tur);
        stringBuilder.append(", pending=");
        stringBuilder.append(this.pending);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public TurResponse(String str, boolean z) {
        this.tur = str;
        this.pending = z;
    }

    public final String getTur() {
        return this.tur;
    }

    public final boolean getPending() {
        return this.pending;
    }
}
