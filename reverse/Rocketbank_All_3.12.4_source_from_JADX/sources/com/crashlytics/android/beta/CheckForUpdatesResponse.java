package com.crashlytics.android.beta;

final class CheckForUpdatesResponse {
    public final String buildVersion;
    public final String displayVersion;
    public final String instanceId;
    public final String packageName;
    public final String url;
    public final String versionString;

    public CheckForUpdatesResponse(String str, String str2, String str3, String str4, String str5, String str6) {
        this.url = str;
        this.versionString = str2;
        this.displayVersion = str3;
        this.buildVersion = str4;
        this.packageName = str5;
        this.instanceId = str6;
    }
}
