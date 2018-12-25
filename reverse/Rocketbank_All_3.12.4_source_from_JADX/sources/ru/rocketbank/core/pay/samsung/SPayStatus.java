package ru.rocketbank.core.pay.samsung;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RxSPay.kt */
public final class SPayStatus {
    private final Bundle bundle;
    private final int status;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SPayStatus) {
            SPayStatus sPayStatus = (SPayStatus) obj;
            return (this.status == sPayStatus.status) && Intrinsics.areEqual(this.bundle, sPayStatus.bundle);
        }
    }

    public final int hashCode() {
        int i = this.status * 31;
        Bundle bundle = this.bundle;
        return i + (bundle != null ? bundle.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("SPayStatus(status=");
        stringBuilder.append(this.status);
        stringBuilder.append(", bundle=");
        stringBuilder.append(this.bundle);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public SPayStatus(int i, Bundle bundle) {
        this.status = i;
        this.bundle = bundle;
    }

    public final int getStatus() {
        return this.status;
    }
}
