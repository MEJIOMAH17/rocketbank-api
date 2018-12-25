package com.crashlytics.android.answers;

import com.facebook.GraphResponse;
import com.google.firebase.analytics.FirebaseAnalytics.Event;

public final class LoginEvent extends PredefinedEvent<LoginEvent> {
    final String getPredefinedType() {
        return Event.LOGIN;
    }

    public final LoginEvent putMethod(String str) {
        this.predefinedAttributes.put("method", str);
        return this;
    }

    public final LoginEvent putSuccess(boolean z) {
        this.predefinedAttributes.put(GraphResponse.SUCCESS_KEY, Boolean.toString(z));
        return this;
    }
}
