package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeliveryBody.kt */
public final class DeliveryBody<T> {
    private final T delivery;

    public static /* bridge */ /* synthetic */ DeliveryBody copy$default(DeliveryBody deliveryBody, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = deliveryBody.delivery;
        }
        return deliveryBody.copy(obj);
    }

    public final T component1() {
        return this.delivery;
    }

    public final DeliveryBody<T> copy(T t) {
        return new DeliveryBody(t);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeliveryBody) {
                if (Intrinsics.areEqual(this.delivery, ((DeliveryBody) obj).delivery)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Object obj = this.delivery;
        return obj != null ? obj.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("DeliveryBody(delivery=");
        stringBuilder.append(this.delivery);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public DeliveryBody(T t) {
        this.delivery = t;
    }

    public final T getDelivery() {
        return this.delivery;
    }
}
