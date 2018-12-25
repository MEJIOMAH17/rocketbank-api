package com.crashlytics.android.answers;

final class SessionEventMetadata {
    public final String advertisingId;
    public final String androidId;
    public final String appBundleId;
    public final String appVersionCode;
    public final String appVersionName;
    public final String betaDeviceToken;
    public final String buildId;
    public final String deviceModel;
    public final String executionId;
    public final String installationId;
    public final Boolean limitAdTrackingEnabled;
    public final String osVersion;
    private String stringRepresentation;

    public SessionEventMetadata(String str, String str2, String str3, String str4, String str5, Boolean bool, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.appBundleId = str;
        this.executionId = str2;
        this.installationId = str3;
        this.androidId = str4;
        this.advertisingId = str5;
        this.limitAdTrackingEnabled = bool;
        this.betaDeviceToken = str6;
        this.buildId = str7;
        this.osVersion = str8;
        this.deviceModel = str9;
        this.appVersionCode = str10;
        this.appVersionName = str11;
    }

    public final String toString() {
        if (this.stringRepresentation == null) {
            StringBuilder stringBuilder = new StringBuilder("appBundleId=");
            stringBuilder.append(this.appBundleId);
            stringBuilder.append(", executionId=");
            stringBuilder.append(this.executionId);
            stringBuilder.append(", installationId=");
            stringBuilder.append(this.installationId);
            stringBuilder.append(", androidId=");
            stringBuilder.append(this.androidId);
            stringBuilder.append(", advertisingId=");
            stringBuilder.append(this.advertisingId);
            stringBuilder.append(", limitAdTrackingEnabled=");
            stringBuilder.append(this.limitAdTrackingEnabled);
            stringBuilder.append(", betaDeviceToken=");
            stringBuilder.append(this.betaDeviceToken);
            stringBuilder.append(", buildId=");
            stringBuilder.append(this.buildId);
            stringBuilder.append(", osVersion=");
            stringBuilder.append(this.osVersion);
            stringBuilder.append(", deviceModel=");
            stringBuilder.append(this.deviceModel);
            stringBuilder.append(", appVersionCode=");
            stringBuilder.append(this.appVersionCode);
            stringBuilder.append(", appVersionName=");
            stringBuilder.append(this.appVersionName);
            this.stringRepresentation = stringBuilder.toString();
        }
        return this.stringRepresentation;
    }
}
