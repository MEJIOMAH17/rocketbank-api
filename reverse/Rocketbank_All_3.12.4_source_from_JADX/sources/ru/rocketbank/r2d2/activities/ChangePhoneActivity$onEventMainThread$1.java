package ru.rocketbank.r2d2.activities;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.events.EventHelper;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.events.RetryEvent;

/* compiled from: ChangePhoneActivity.kt */
final class ChangePhoneActivity$onEventMainThread$1 implements OnClickListener {
    public static final ChangePhoneActivity$onEventMainThread$1 INSTANCE = new ChangePhoneActivity$onEventMainThread$1();

    ChangePhoneActivity$onEventMainThread$1() {
    }

    public final void onClick(View view) {
        view = EventHelper.INSTANCE;
        EventHelper.send((IEvent) new RetryEvent());
    }
}
