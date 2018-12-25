package com.facebook.appevents.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.FetchedAppSettingsManager;

class AutomaticAnalyticsLogger {
    AutomaticAnalyticsLogger() {
    }

    public static void logActivityTimeSpentEvent(Context context, String str, String str2, long j) {
        context = AppEventsLogger.newLogger(context);
        if (FetchedAppSettingsManager.queryAppSettings(str, false).getAutomaticLoggingEnabled() != null && j > 0) {
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence(Constants.AA_TIME_SPENT_SCREEN_PARAMETER_NAME, str2);
            context.logEvent(Constants.AA_TIME_SPENT_EVENT_NAME, (double) j, bundle);
        }
    }
}
