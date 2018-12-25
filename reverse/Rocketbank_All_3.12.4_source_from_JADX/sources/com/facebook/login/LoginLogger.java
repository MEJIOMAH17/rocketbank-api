package com.facebook.login;

import android.os.Bundle;
import com.facebook.appevents.AppEventsLogger;
import java.util.Map;
import org.json.JSONObject;

class LoginLogger {
    static final String EVENT_EXTRAS_DEFAULT_AUDIENCE = "default_audience";
    static final String EVENT_EXTRAS_FACEBOOK_VERSION = "facebookVersion";
    static final String EVENT_EXTRAS_IS_REAUTHORIZE = "isReauthorize";
    static final String EVENT_EXTRAS_LOGIN_BEHAVIOR = "login_behavior";
    static final String EVENT_EXTRAS_MISSING_INTERNET_PERMISSION = "no_internet_permission";
    static final String EVENT_EXTRAS_NEW_PERMISSIONS = "new_permissions";
    static final String EVENT_EXTRAS_NOT_TRIED = "not_tried";
    static final String EVENT_EXTRAS_PERMISSIONS = "permissions";
    static final String EVENT_EXTRAS_REQUEST_CODE = "request_code";
    static final String EVENT_EXTRAS_TRY_LOGIN_ACTIVITY = "try_login_activity";
    static final String EVENT_NAME_LOGIN_COMPLETE = "fb_mobile_login_complete";
    static final String EVENT_NAME_LOGIN_METHOD_COMPLETE = "fb_mobile_login_method_complete";
    static final String EVENT_NAME_LOGIN_METHOD_NOT_TRIED = "fb_mobile_login_method_not_tried";
    static final String EVENT_NAME_LOGIN_METHOD_START = "fb_mobile_login_method_start";
    static final String EVENT_NAME_LOGIN_START = "fb_mobile_login_start";
    static final String EVENT_PARAM_AUTH_LOGGER_ID = "0_auth_logger_id";
    static final String EVENT_PARAM_CHALLENGE = "7_challenge";
    static final String EVENT_PARAM_ERROR_CODE = "4_error_code";
    static final String EVENT_PARAM_ERROR_MESSAGE = "5_error_message";
    static final String EVENT_PARAM_EXTRAS = "6_extras";
    static final String EVENT_PARAM_LOGIN_RESULT = "2_result";
    static final String EVENT_PARAM_METHOD = "3_method";
    static final String EVENT_PARAM_METHOD_RESULT_SKIPPED = "skipped";
    static final String EVENT_PARAM_TIMESTAMP = "1_timestamp_ms";
    static final String FACEBOOK_PACKAGE_NAME = "com.facebook.katana";
    private final AppEventsLogger appEventsLogger;
    private String applicationId;
    private String facebookVersion;

    LoginLogger(android.content.Context r2, java.lang.String r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r1 = this;
        r1.<init>();
        r1.applicationId = r3;
        r3 = com.facebook.appevents.AppEventsLogger.newLogger(r2, r3);
        r1.appEventsLogger = r3;
        r2 = r2.getPackageManager();	 Catch:{ NameNotFoundException -> 0x001f }
        if (r2 == 0) goto L_0x001e;	 Catch:{ NameNotFoundException -> 0x001f }
    L_0x0011:
        r3 = "com.facebook.katana";	 Catch:{ NameNotFoundException -> 0x001f }
        r0 = 0;	 Catch:{ NameNotFoundException -> 0x001f }
        r2 = r2.getPackageInfo(r3, r0);	 Catch:{ NameNotFoundException -> 0x001f }
        if (r2 == 0) goto L_0x001e;	 Catch:{ NameNotFoundException -> 0x001f }
    L_0x001a:
        r2 = r2.versionName;	 Catch:{ NameNotFoundException -> 0x001f }
        r1.facebookVersion = r2;	 Catch:{ NameNotFoundException -> 0x001f }
    L_0x001e:
        return;
    L_0x001f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginLogger.<init>(android.content.Context, java.lang.String):void");
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    static Bundle newAuthorizationLoggingBundle(String str) {
        Bundle bundle = new Bundle();
        bundle.putLong(EVENT_PARAM_TIMESTAMP, System.currentTimeMillis());
        bundle.putString(EVENT_PARAM_AUTH_LOGGER_ID, str);
        bundle.putString(EVENT_PARAM_METHOD, "");
        bundle.putString(EVENT_PARAM_LOGIN_RESULT, "");
        bundle.putString(EVENT_PARAM_ERROR_MESSAGE, "");
        bundle.putString(EVENT_PARAM_ERROR_CODE, "");
        bundle.putString(EVENT_PARAM_EXTRAS, "");
        return bundle;
    }

    public void logStartLogin(com.facebook.login.LoginClient.Request r6) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r5 = this;
        r0 = r6.getAuthId();
        r0 = newAuthorizationLoggingBundle(r0);
        r1 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x005c }
        r1.<init>();	 Catch:{ JSONException -> 0x005c }
        r2 = "login_behavior";	 Catch:{ JSONException -> 0x005c }
        r3 = r6.getLoginBehavior();	 Catch:{ JSONException -> 0x005c }
        r3 = r3.toString();	 Catch:{ JSONException -> 0x005c }
        r1.put(r2, r3);	 Catch:{ JSONException -> 0x005c }
        r2 = "request_code";	 Catch:{ JSONException -> 0x005c }
        r3 = com.facebook.login.LoginClient.getLoginRequestCode();	 Catch:{ JSONException -> 0x005c }
        r1.put(r2, r3);	 Catch:{ JSONException -> 0x005c }
        r2 = "permissions";	 Catch:{ JSONException -> 0x005c }
        r3 = ",";	 Catch:{ JSONException -> 0x005c }
        r4 = r6.getPermissions();	 Catch:{ JSONException -> 0x005c }
        r3 = android.text.TextUtils.join(r3, r4);	 Catch:{ JSONException -> 0x005c }
        r1.put(r2, r3);	 Catch:{ JSONException -> 0x005c }
        r2 = "default_audience";	 Catch:{ JSONException -> 0x005c }
        r3 = r6.getDefaultAudience();	 Catch:{ JSONException -> 0x005c }
        r3 = r3.toString();	 Catch:{ JSONException -> 0x005c }
        r1.put(r2, r3);	 Catch:{ JSONException -> 0x005c }
        r2 = "isReauthorize";	 Catch:{ JSONException -> 0x005c }
        r6 = r6.isRerequest();	 Catch:{ JSONException -> 0x005c }
        r1.put(r2, r6);	 Catch:{ JSONException -> 0x005c }
        r6 = r5.facebookVersion;	 Catch:{ JSONException -> 0x005c }
        if (r6 == 0) goto L_0x0053;	 Catch:{ JSONException -> 0x005c }
    L_0x004c:
        r6 = "facebookVersion";	 Catch:{ JSONException -> 0x005c }
        r2 = r5.facebookVersion;	 Catch:{ JSONException -> 0x005c }
        r1.put(r6, r2);	 Catch:{ JSONException -> 0x005c }
    L_0x0053:
        r6 = "6_extras";	 Catch:{ JSONException -> 0x005c }
        r1 = r1.toString();	 Catch:{ JSONException -> 0x005c }
        r0.putString(r6, r1);	 Catch:{ JSONException -> 0x005c }
    L_0x005c:
        r6 = r5.appEventsLogger;
        r1 = "fb_mobile_login_start";
        r2 = 0;
        r6.logSdkEvent(r1, r2, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginLogger.logStartLogin(com.facebook.login.LoginClient$Request):void");
    }

    public void logCompleteLogin(java.lang.String r2, java.util.Map<java.lang.String, java.lang.String> r3, com.facebook.login.LoginClient.Result.Code r4, java.util.Map<java.lang.String, java.lang.String> r5, java.lang.Exception r6) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r1 = this;
        r2 = newAuthorizationLoggingBundle(r2);
        if (r4 == 0) goto L_0x000f;
    L_0x0006:
        r0 = "2_result";
        r4 = r4.getLoggingValue();
        r2.putString(r0, r4);
    L_0x000f:
        if (r6 == 0) goto L_0x0020;
    L_0x0011:
        r4 = r6.getMessage();
        if (r4 == 0) goto L_0x0020;
    L_0x0017:
        r4 = "5_error_message";
        r6 = r6.getMessage();
        r2.putString(r4, r6);
    L_0x0020:
        r4 = r3.isEmpty();
        r6 = 0;
        if (r4 != 0) goto L_0x002d;
    L_0x0027:
        r4 = new org.json.JSONObject;
        r4.<init>(r3);
        goto L_0x002e;
    L_0x002d:
        r4 = r6;
    L_0x002e:
        if (r5 == 0) goto L_0x005a;
    L_0x0030:
        if (r4 != 0) goto L_0x0038;
    L_0x0032:
        r3 = new org.json.JSONObject;
        r3.<init>();
        r4 = r3;
    L_0x0038:
        r3 = r5.entrySet();	 Catch:{ JSONException -> 0x005a }
        r3 = r3.iterator();	 Catch:{ JSONException -> 0x005a }
    L_0x0040:
        r5 = r3.hasNext();	 Catch:{ JSONException -> 0x005a }
        if (r5 == 0) goto L_0x005a;	 Catch:{ JSONException -> 0x005a }
    L_0x0046:
        r5 = r3.next();	 Catch:{ JSONException -> 0x005a }
        r5 = (java.util.Map.Entry) r5;	 Catch:{ JSONException -> 0x005a }
        r0 = r5.getKey();	 Catch:{ JSONException -> 0x005a }
        r0 = (java.lang.String) r0;	 Catch:{ JSONException -> 0x005a }
        r5 = r5.getValue();	 Catch:{ JSONException -> 0x005a }
        r4.put(r0, r5);	 Catch:{ JSONException -> 0x005a }
        goto L_0x0040;
    L_0x005a:
        if (r4 == 0) goto L_0x0065;
    L_0x005c:
        r3 = "6_extras";
        r4 = r4.toString();
        r2.putString(r3, r4);
    L_0x0065:
        r3 = r1.appEventsLogger;
        r4 = "fb_mobile_login_complete";
        r3.logSdkEvent(r4, r6, r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginLogger.logCompleteLogin(java.lang.String, java.util.Map, com.facebook.login.LoginClient$Result$Code, java.util.Map, java.lang.Exception):void");
    }

    public void logAuthorizationMethodStart(String str, String str2) {
        str = newAuthorizationLoggingBundle(str);
        str.putString(EVENT_PARAM_METHOD, str2);
        this.appEventsLogger.logSdkEvent(EVENT_NAME_LOGIN_METHOD_START, null, str);
    }

    public void logAuthorizationMethodComplete(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        str = newAuthorizationLoggingBundle(str);
        if (str3 != null) {
            str.putString(EVENT_PARAM_LOGIN_RESULT, str3);
        }
        if (str4 != null) {
            str.putString(EVENT_PARAM_ERROR_MESSAGE, str4);
        }
        if (str5 != null) {
            str.putString(EVENT_PARAM_ERROR_CODE, str5);
        }
        if (map != null && map.isEmpty() == null) {
            str.putString(EVENT_PARAM_EXTRAS, new JSONObject(map).toString());
        }
        str.putString(EVENT_PARAM_METHOD, str2);
        this.appEventsLogger.logSdkEvent(EVENT_NAME_LOGIN_METHOD_COMPLETE, null, str);
    }

    public void logAuthorizationMethodNotTried(String str, String str2) {
        str = newAuthorizationLoggingBundle(str);
        str.putString(EVENT_PARAM_METHOD, str2);
        this.appEventsLogger.logSdkEvent(EVENT_NAME_LOGIN_METHOD_NOT_TRIED, null, str);
    }

    public void logUnexpectedError(String str, String str2) {
        logUnexpectedError(str, str2, "");
    }

    public void logUnexpectedError(String str, String str2, String str3) {
        Bundle newAuthorizationLoggingBundle = newAuthorizationLoggingBundle("");
        newAuthorizationLoggingBundle.putString(EVENT_PARAM_LOGIN_RESULT, Code.ERROR.getLoggingValue());
        newAuthorizationLoggingBundle.putString(EVENT_PARAM_ERROR_MESSAGE, str2);
        newAuthorizationLoggingBundle.putString(EVENT_PARAM_METHOD, str3);
        this.appEventsLogger.logSdkEvent(str, null, newAuthorizationLoggingBundle);
    }
}
