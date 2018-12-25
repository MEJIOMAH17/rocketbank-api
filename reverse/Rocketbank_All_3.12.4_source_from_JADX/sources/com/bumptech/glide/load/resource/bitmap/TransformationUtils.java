package com.bumptech.glide.load.resource.bitmap;

public final class TransformationUtils {
    public final String advertisingId;
    public final String androidId;
    public final String apiKey;
    public final String buildVersion;
    public final String deviceModel;
    public final String displayVersion;
    public final String iconHash;
    public final String installationId;
    public final String instanceId;
    public final String osBuildVersion;
    public final String osDisplayVersion;
    public final int source;

    public TransformationUtils(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i, String str11) {
        this.apiKey = str;
        this.deviceModel = str2;
        this.osBuildVersion = str3;
        this.osDisplayVersion = str4;
        this.advertisingId = str5;
        this.installationId = str6;
        this.androidId = str7;
        this.instanceId = str8;
        this.displayVersion = str9;
        this.buildVersion = str10;
        this.source = i;
        this.iconHash = str11;
    }
}
