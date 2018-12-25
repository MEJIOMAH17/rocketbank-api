package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: DeliveryDateBody.kt */
public final class DeliveryDateBody {
    private final String date;

    public static /* bridge */ /* synthetic */ DeliveryDateBody copy$default(DeliveryDateBody deliveryDateBody, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deliveryDateBody.date;
        }
        return deliveryDateBody.copy(str);
    }

    public final String component1() {
        return this.date;
    }

    public final DeliveryDateBody copy(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.DATE);
        return new DeliveryDateBody(str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeliveryDateBody) {
                if (Intrinsics.areEqual(this.date, ((DeliveryDateBody) obj).date)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.date;
        return str != null ? str.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("DeliveryDateBody(date=");
        stringBuilder.append(this.date);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public DeliveryDateBody(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.DATE);
        this.date = str;
    }

    public final String getDate() {
        return this.date;
    }
}
