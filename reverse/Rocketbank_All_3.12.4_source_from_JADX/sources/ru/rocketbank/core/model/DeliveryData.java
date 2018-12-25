package ru.rocketbank.core.model;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: DeliveryData.kt */
public final class DeliveryData {
    private String token;

    public DeliveryData() {
        this(null, 1, null);
    }

    public static /* bridge */ /* synthetic */ DeliveryData copy$default(DeliveryData deliveryData, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deliveryData.token;
        }
        return deliveryData.copy(str);
    }

    public final String component1() {
        return this.token;
    }

    public final DeliveryData copy(String str) {
        return new DeliveryData(str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeliveryData) {
                if (Intrinsics.areEqual(this.token, ((DeliveryData) obj).token)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.token;
        return str != null ? str.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("DeliveryData(token=");
        stringBuilder.append(this.token);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public DeliveryData(String str) {
        this.token = str;
    }

    public /* synthetic */ DeliveryData(String str, int i, Ref ref) {
        if ((i & 1) != 0) {
            str = null;
        }
        this(str);
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        this.token = str;
    }
}
