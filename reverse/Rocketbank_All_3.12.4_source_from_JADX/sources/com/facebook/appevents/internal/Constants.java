package com.facebook.appevents.internal;

public class Constants {
    public static final String AA_TIME_SPENT_EVENT_NAME = "fb_aa_time_spent_on_view";
    public static final String AA_TIME_SPENT_SCREEN_PARAMETER_NAME = "fb_aa_time_spent_view_name";
    public static final String EVENT_NAME_EVENT_KEY = "_eventName";
    public static final String LOG_TIME_APP_EVENT_KEY = "_logTime";

    public static int getDefaultAppEventsSessionTimeoutInSeconds() {
        return 60;
    }
}
