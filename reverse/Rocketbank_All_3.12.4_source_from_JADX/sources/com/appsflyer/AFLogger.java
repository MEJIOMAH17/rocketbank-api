package com.appsflyer;

import android.util.Log;

public final class AFLogger {
    public static final String LOG_TAG;

    static {
        StringBuilder stringBuilder = new StringBuilder("AppsFlyer_");
        stringBuilder.append(AppsFlyerLib.SERVER_BUILD_NUMBER);
        stringBuilder.append(".");
        stringBuilder.append(AppsFlyerLib.SDK_BUILD_NUMBER);
        LOG_TAG = stringBuilder.toString();
    }

    public static void afLog(String str) {
        if (AppsFlyerProperties.getInstance().isEnableLog()) {
            Log.i(LOG_TAG, str);
        }
    }

    public static void afDebugLog(String str) {
        if (AppsFlyerProperties.getInstance().isEnableLog()) {
            Log.d(LOG_TAG, str);
        }
    }

    public static void afLogE(String str, Throwable th) {
        if (AppsFlyerProperties.getInstance().isEnableLog()) {
            Log.e(LOG_TAG, str, th);
        }
    }

    public static void afWarnLog(String str) {
        if (AppsFlyerProperties.getInstance().isEnableLog()) {
            Log.w(LOG_TAG, str);
        }
    }

    public static void afLogM(String str) {
        if (!AppsFlyerProperties.getInstance().getBoolean("disableLogs", false)) {
            Log.d(LOG_TAG, str);
        }
    }
}
