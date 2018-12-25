package ru.rocketbank.core.widgets;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import me.philio.pinentry.PinEntryView;
import ru.rocketbank.core.manager.AnalyticsManager;

public class RocketPinEntryView extends PinEntryView {
    public RocketPinEntryView(Context context) {
        super(context);
    }

    public RocketPinEntryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RocketPinEntryView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        try {
            super.onRestoreInstanceState(parcelable);
        } catch (Parcelable parcelable2) {
            AnalyticsManager.logException(parcelable2);
        }
    }
}
