package ru.rocketbank.r2d2.data.binding.delivery;

import android.databinding.ObservableBoolean;

/* compiled from: DeliveryMapData.kt */
public final class DeliveryMapData {
    private final ObservableBoolean isUserLead = new ObservableBoolean(true);
    private final ObservableBoolean myLocationHidden = new ObservableBoolean(true);

    public final ObservableBoolean isUserLead() {
        return this.isUserLead;
    }

    public final ObservableBoolean getMyLocationHidden() {
        return this.myLocationHidden;
    }
}
