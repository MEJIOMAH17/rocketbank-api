package com.crashlytics.android.answers;

import android.support.v7.recyclerview.C0945R.dimen;
import java.io.IOException;

final class DisabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    public final void cancelTimeBasedFileRollOver() {
    }

    public final void deleteAllEvents() {
    }

    public final void processEvent(Builder builder) {
    }

    public final boolean rollFileOver() throws IOException {
        return false;
    }

    public final void sendEvents() {
    }

    public final void setAnalyticsSettingsData$61d868c(dimen dimen, String str) {
    }

    DisabledSessionAnalyticsManagerStrategy() {
    }
}
