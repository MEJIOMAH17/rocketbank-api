package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeliveryResponse.kt */
public final class DeliveryResponse {
    private final City city;
    private final DeliveryModel delivery;
    private final String status;

    public DeliveryResponse(String str, City city, DeliveryModel deliveryModel) {
        Intrinsics.checkParameterIsNotNull(str, "status");
        Intrinsics.checkParameterIsNotNull(city, "city");
        this.status = str;
        this.city = city;
        this.delivery = deliveryModel;
    }

    public final String getStatus() {
        return this.status;
    }

    public final City getCity() {
        return this.city;
    }

    public final DeliveryModel getDelivery() {
        return this.delivery;
    }
}
