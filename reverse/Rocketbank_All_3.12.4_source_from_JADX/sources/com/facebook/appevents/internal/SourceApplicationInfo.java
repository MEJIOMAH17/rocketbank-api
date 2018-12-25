package com.facebook.appevents.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.facebook.FacebookSdk;

class SourceApplicationInfo {
    private static final String CALL_APPLICATION_PACKAGE_KEY = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage";
    private static final String OPENED_BY_APP_LINK_KEY = "com.facebook.appevents.SourceApplicationInfo.openedByApplink";
    private static final String SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT = "_fbSourceApplicationHasBeenSet";
    private String callingApplicationPackage;
    private boolean openedByApplink;

    public static class Factory {
        public static SourceApplicationInfo create(Activity activity) {
            ComponentName callingActivity = activity.getCallingActivity();
            if (callingActivity == null) {
                return null;
            }
            String packageName = callingActivity.getPackageName();
            if (packageName.equals(activity.getPackageName())) {
                return null;
            }
            activity = activity.getIntent();
            boolean z = false;
            if (!(activity == null || activity.getBooleanExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, false))) {
                activity.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
                Bundle bundleExtra = activity.getBundleExtra("al_applink_data");
                if (bundleExtra != null) {
                    Bundle bundle = bundleExtra.getBundle("referer_app_link");
                    if (bundle != null) {
                        packageName = bundle.getString("package");
                    }
                    z = true;
                }
            }
            activity.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
            return new SourceApplicationInfo(packageName, z);
        }
    }

    private SourceApplicationInfo(String str, boolean z) {
        this.callingApplicationPackage = str;
        this.openedByApplink = z;
    }

    public static SourceApplicationInfo getStoredSourceApplicatioInfo() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext());
        if (defaultSharedPreferences.contains(CALL_APPLICATION_PACKAGE_KEY)) {
            return new SourceApplicationInfo(defaultSharedPreferences.getString(CALL_APPLICATION_PACKAGE_KEY, null), defaultSharedPreferences.getBoolean(OPENED_BY_APP_LINK_KEY, false));
        }
        return null;
    }

    public static void clearSavedSourceApplicationInfoFromDisk() {
        Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.remove(CALL_APPLICATION_PACKAGE_KEY);
        edit.remove(OPENED_BY_APP_LINK_KEY);
        edit.apply();
    }

    public String getCallingApplicationPackage() {
        return this.callingApplicationPackage;
    }

    public boolean isOpenedByApplink() {
        return this.openedByApplink;
    }

    public String toString() {
        String str = "Unclassified";
        if (this.openedByApplink) {
            str = "Applink";
        }
        if (this.callingApplicationPackage == null) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("(");
        stringBuilder.append(this.callingApplicationPackage);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void writeSourceApplicationInfoToDisk() {
        Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.putString(CALL_APPLICATION_PACKAGE_KEY, this.callingApplicationPackage);
        edit.putBoolean(OPENED_BY_APP_LINK_KEY, this.openedByApplink);
        edit.apply();
    }
}
