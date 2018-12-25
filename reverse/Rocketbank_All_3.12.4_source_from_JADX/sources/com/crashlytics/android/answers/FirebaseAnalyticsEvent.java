package com.crashlytics.android.answers;

import android.os.Bundle;

public final class FirebaseAnalyticsEvent {
    private final String eventName;
    private final Bundle eventParams;

    FirebaseAnalyticsEvent(String str, Bundle bundle) {
        this.eventName = str;
        this.eventParams = bundle;
    }

    public final String getEventName() {
        return this.eventName;
    }

    public final Bundle getEventParams() {
        return this.eventParams;
    }
}
