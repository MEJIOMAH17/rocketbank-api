package com.crashlytics.android.answers;

import android.support.v7.recyclerview.C0945R.dimen;
import io.fabric.sdk.android.services.events.FileRollOverManager;

interface SessionAnalyticsManagerStrategy extends FileRollOverManager {
    void deleteAllEvents();

    void processEvent(Builder builder);

    void sendEvents();

    void setAnalyticsSettingsData$61d868c(dimen dimen, String str);
}
