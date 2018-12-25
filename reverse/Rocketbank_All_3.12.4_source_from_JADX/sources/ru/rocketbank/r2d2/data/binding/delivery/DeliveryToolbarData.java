package ru.rocketbank.r2d2.data.binding.delivery;

import android.databinding.ObservableBoolean;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;

/* compiled from: DeliveryToolbarData.kt */
public final class DeliveryToolbarData extends ToolbarWithButtonData {
    private final ObservableBoolean isUserLead = new ObservableBoolean(false);

    public DeliveryToolbarData() {
        super(null, null, false, 0, 15, null);
    }

    public final ObservableBoolean isUserLead() {
        return this.isUserLead;
    }
}
