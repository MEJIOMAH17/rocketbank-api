package com.crashlytics.android.beta;

final class BuildProperties {
    public final String buildId;
    public final String packageName;
    public final String versionCode;
    public final String versionName;

    BuildProperties(String str, String str2, String str3, String str4) {
        this.versionCode = str;
        this.versionName = str2;
        this.buildId = str3;
        this.packageName = str4;
    }
}
