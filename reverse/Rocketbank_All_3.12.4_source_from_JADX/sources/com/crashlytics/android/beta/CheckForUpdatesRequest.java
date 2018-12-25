package com.crashlytics.android.beta;

import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequestFactory;

final class CheckForUpdatesRequest extends AbstractSpiCall {
    private final CheckForUpdatesResponseTransform responseTransform;

    public CheckForUpdatesRequest(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, CheckForUpdatesResponseTransform checkForUpdatesResponseTransform) {
        super(kit, str, str2, httpRequestFactory, HttpMethod.GET);
        this.responseTransform = checkForUpdatesResponseTransform;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.crashlytics.android.beta.CheckForUpdatesResponse invoke(java.lang.String r9, java.lang.String r10, com.crashlytics.android.beta.BuildProperties r11) {
        /*
        r8 = this;
        r0 = 0;
        r1 = new java.util.HashMap;	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r1.<init>();	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r2 = "build_version";
        r3 = r11.versionCode;	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r2 = "display_version";
        r3 = r11.versionName;	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r1.put(r2, r3);	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r2 = "instance";
        r11 = r11.buildId;	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r1.put(r2, r11);	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r11 = "source";
        r2 = "3";
        r1.put(r11, r2);	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r11 = r8.getHttpRequest(r1);	 Catch:{ Exception -> 0x0138, all -> 0x0135 }
        r2 = "Accept";
        r3 = "application/json";
        r2 = r11.header(r2, r3);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r3 = "User-Agent";
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r5 = "Crashlytics Android SDK/";
        r4.<init>(r5);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r5 = r8.kit;	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r5 = r5.getVersion();	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r4.append(r5);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r4 = r4.toString();	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r2 = r2.header(r3, r4);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r3 = "X-CRASHLYTICS-DEVELOPER-TOKEN";
        r4 = "470fa2b4ae81cd56ecbcda9735803434cec591fa";
        r2 = r2.header(r3, r4);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r3 = "X-CRASHLYTICS-API-CLIENT-TYPE";
        r4 = "android";
        r2 = r2.header(r3, r4);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r3 = "X-CRASHLYTICS-API-CLIENT-VERSION";
        r4 = r8.kit;	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r4 = r4.getVersion();	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r2 = r2.header(r3, r4);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r3 = "X-CRASHLYTICS-API-KEY";
        r9 = r2.header(r3, r9);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r2 = "X-CRASHLYTICS-BETA-TOKEN";
        r3 = "3:";
        r10 = java.lang.String.valueOf(r10);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r10 = r3.concat(r10);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r9 = r9.header(r2, r10);	 Catch:{ Exception -> 0x0132, all -> 0x012f }
        r10 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x012d }
        r11 = "Beta";
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x012d }
        r3 = "Checking for updates from ";
        r2.<init>(r3);	 Catch:{ Exception -> 0x012d }
        r3 = r8.getUrl();	 Catch:{ Exception -> 0x012d }
        r2.append(r3);	 Catch:{ Exception -> 0x012d }
        r2 = r2.toString();	 Catch:{ Exception -> 0x012d }
        r10.mo768d(r11, r2);	 Catch:{ Exception -> 0x012d }
        r10 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x012d }
        r11 = "Beta";
        r2 = "Checking for updates query params are: ";
        r1 = java.lang.String.valueOf(r1);	 Catch:{ Exception -> 0x012d }
        r1 = r2.concat(r1);	 Catch:{ Exception -> 0x012d }
        r10.mo768d(r11, r1);	 Catch:{ Exception -> 0x012d }
        r10 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r11 = r9.code();	 Catch:{ Exception -> 0x012d }
        if (r10 != r11) goto L_0x00b2;
    L_0x00b0:
        r10 = 1;
        goto L_0x00b3;
    L_0x00b2:
        r10 = 0;
    L_0x00b3:
        if (r10 == 0) goto L_0x0111;
    L_0x00b5:
        r10 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x012d }
        r11 = "Beta";
        r1 = "Checking for updates was successful";
        r10.mo768d(r11, r1);	 Catch:{ Exception -> 0x012d }
        r10 = new org.json.JSONObject;	 Catch:{ Exception -> 0x012d }
        r11 = r9.charset();	 Catch:{ Exception -> 0x012d }
        r11 = r9.body(r11);	 Catch:{ Exception -> 0x012d }
        r10.<init>(r11);	 Catch:{ Exception -> 0x012d }
        r11 = "url";
        r2 = r10.optString(r11, r0);	 Catch:{ Exception -> 0x012d }
        r11 = "version_string";
        r3 = r10.optString(r11, r0);	 Catch:{ Exception -> 0x012d }
        r11 = "build_version";
        r5 = r10.optString(r11, r0);	 Catch:{ Exception -> 0x012d }
        r11 = "display_version";
        r4 = r10.optString(r11, r0);	 Catch:{ Exception -> 0x012d }
        r11 = "identifier";
        r6 = r10.optString(r11, r0);	 Catch:{ Exception -> 0x012d }
        r11 = "instance_identifier";
        r7 = r10.optString(r11, r0);	 Catch:{ Exception -> 0x012d }
        r10 = new com.crashlytics.android.beta.CheckForUpdatesResponse;	 Catch:{ Exception -> 0x012d }
        r1 = r10;
        r1.<init>(r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x012d }
        r11 = "X-REQUEST-ID";
        r9 = r9.header(r11);
        r11 = io.fabric.sdk.android.Fabric.getLogger();
        r0 = "Fabric";
        r1 = "Checking for updates request ID: ";
        r9 = java.lang.String.valueOf(r9);
        r9 = r1.concat(r9);
        r11.mo768d(r0, r9);
        return r10;
    L_0x0111:
        r10 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x012d }
        r11 = "Beta";
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x012d }
        r2 = "Checking for updates failed. Response code: ";
        r1.<init>(r2);	 Catch:{ Exception -> 0x012d }
        r2 = r9.code();	 Catch:{ Exception -> 0x012d }
        r1.append(r2);	 Catch:{ Exception -> 0x012d }
        r1 = r1.toString();	 Catch:{ Exception -> 0x012d }
        r10.mo770e(r11, r1);	 Catch:{ Exception -> 0x012d }
        goto L_0x0157;
    L_0x012d:
        r10 = move-exception;
        goto L_0x013a;
    L_0x012f:
        r10 = move-exception;
        r9 = r11;
        goto L_0x0172;
    L_0x0132:
        r10 = move-exception;
        r9 = r11;
        goto L_0x013a;
    L_0x0135:
        r10 = move-exception;
        r9 = r0;
        goto L_0x0172;
    L_0x0138:
        r10 = move-exception;
        r9 = r0;
    L_0x013a:
        r11 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ all -> 0x0171 }
        r1 = "Beta";
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0171 }
        r3 = "Error while checking for updates from ";
        r2.<init>(r3);	 Catch:{ all -> 0x0171 }
        r3 = r8.getUrl();	 Catch:{ all -> 0x0171 }
        r2.append(r3);	 Catch:{ all -> 0x0171 }
        r2 = r2.toString();	 Catch:{ all -> 0x0171 }
        r11.mo771e(r1, r2, r10);	 Catch:{ all -> 0x0171 }
        if (r9 == 0) goto L_0x0170;
    L_0x0157:
        r10 = "X-REQUEST-ID";
        r9 = r9.header(r10);
        r10 = io.fabric.sdk.android.Fabric.getLogger();
        r11 = "Fabric";
        r1 = "Checking for updates request ID: ";
        r9 = java.lang.String.valueOf(r9);
        r9 = r1.concat(r9);
        r10.mo768d(r11, r9);
    L_0x0170:
        return r0;
    L_0x0171:
        r10 = move-exception;
    L_0x0172:
        if (r9 == 0) goto L_0x018d;
    L_0x0174:
        r11 = "X-REQUEST-ID";
        r9 = r9.header(r11);
        r11 = io.fabric.sdk.android.Fabric.getLogger();
        r0 = "Fabric";
        r1 = "Checking for updates request ID: ";
        r9 = java.lang.String.valueOf(r9);
        r9 = r1.concat(r9);
        r11.mo768d(r0, r9);
    L_0x018d:
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.beta.CheckForUpdatesRequest.invoke(java.lang.String, java.lang.String, com.crashlytics.android.beta.BuildProperties):com.crashlytics.android.beta.CheckForUpdatesResponse");
    }
}
