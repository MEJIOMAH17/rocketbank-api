package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient.Request;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

abstract class LoginMethodHandler implements Parcelable {
    protected LoginClient loginClient;
    Map<String, String> methodLoggingExtras;

    void cancel() {
    }

    abstract String getNameForLogging();

    boolean needsInternetPermission() {
        return false;
    }

    boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    void putChallengeParam(JSONObject jSONObject) throws JSONException {
    }

    abstract boolean tryAuthorize(Request request);

    LoginMethodHandler(LoginClient loginClient) {
        this.loginClient = loginClient;
    }

    LoginMethodHandler(Parcel parcel) {
        this.methodLoggingExtras = Utility.readStringMapFromParcel(parcel);
    }

    void setLoginClient(LoginClient loginClient) {
        if (this.loginClient != null) {
            throw new FacebookException("Can't set LoginClient if it is already set.");
        }
        this.loginClient = loginClient;
    }

    protected String getClientState(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", getNameForLogging());
            putChallengeParam(jSONObject);
        } catch (String str2) {
            StringBuilder stringBuilder = new StringBuilder("Error creating client state json: ");
            stringBuilder.append(str2.getMessage());
            Log.w("LoginMethodHandler", stringBuilder.toString());
        }
        return jSONObject.toString();
    }

    protected void addLoggingExtra(String str, Object obj) {
        if (this.methodLoggingExtras == null) {
            this.methodLoggingExtras = new HashMap();
        }
        this.methodLoggingExtras.put(str, obj == null ? null : obj.toString());
    }

    protected void logWebLoginCompleted(String str) {
        String applicationId = this.loginClient.getPendingRequest().getApplicationId();
        AppEventsLogger newLogger = AppEventsLogger.newLogger(this.loginClient.getActivity(), applicationId);
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_WEB_LOGIN_E2E, str);
        bundle.putLong(AnalyticsEvents.PARAMETER_WEB_LOGIN_SWITCHBACK_TIME, System.currentTimeMillis());
        bundle.putString("app_id", applicationId);
        newLogger.logSdkEvent(AnalyticsEvents.EVENT_WEB_LOGIN_COMPLETE, null, bundle);
    }

    static AccessToken createAccessTokenFromNativeLogin(Bundle bundle, AccessTokenSource accessTokenSource, String str) {
        Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_EXPIRES_SECONDS_SINCE_EPOCH, new Date(0));
        Collection stringArrayList = bundle.getStringArrayList(NativeProtocol.EXTRA_PERMISSIONS);
        String string = bundle.getString(NativeProtocol.EXTRA_ACCESS_TOKEN);
        if (Utility.isNullOrEmpty(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString(NativeProtocol.EXTRA_USER_ID), stringArrayList, null, accessTokenSource, bundleLongAsDate, new Date());
    }

    public static AccessToken createAccessTokenFromWebBundle(Collection<String> collection, Bundle bundle, AccessTokenSource accessTokenSource, String str) throws FacebookException {
        Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, AccessToken.EXPIRES_IN_KEY, new Date());
        String string = bundle.getString("access_token");
        String string2 = bundle.getString("granted_scopes");
        if (!Utility.isNullOrEmpty(string2)) {
            collection = new ArrayList(Arrays.asList(string2.split(",")));
        }
        Collection<String> collection2 = collection;
        String string3 = bundle.getString("denied_scopes");
        Collection arrayList = !Utility.isNullOrEmpty(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        if (Utility.isNullOrEmpty(string) != null) {
            return null;
        }
        return new AccessToken(string, str, getUserIDFromSignedRequest(bundle.getString("signed_request")), collection2, arrayList, accessTokenSource, bundleLongAsDate, new Date());
    }

    private static java.lang.String getUserIDFromSignedRequest(java.lang.String r2) throws com.facebook.FacebookException {
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
        if (r2 == 0) goto L_0x0036;
    L_0x0002:
        r0 = r2.isEmpty();
        if (r0 == 0) goto L_0x0009;
    L_0x0008:
        goto L_0x0036;
    L_0x0009:
        r0 = "\\.";	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r2 = r2.split(r0);	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r0 = r2.length;	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r1 = 2;	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        if (r0 != r1) goto L_0x002e;	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
    L_0x0013:
        r0 = 1;	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r2 = r2[r0];	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r0 = 0;	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r2 = android.util.Base64.decode(r2, r0);	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r0 = new java.lang.String;	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r1 = "UTF-8";	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r0.<init>(r2, r1);	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r2 = new org.json.JSONObject;	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r2.<init>(r0);	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r0 = "user_id";	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        r2 = r2.getString(r0);	 Catch:{ UnsupportedEncodingException -> 0x002e, UnsupportedEncodingException -> 0x002e }
        return r2;
    L_0x002e:
        r2 = new com.facebook.FacebookException;
        r0 = "Failed to retrieve user_id from signed_request";
        r2.<init>(r0);
        throw r2;
    L_0x0036:
        r2 = new com.facebook.FacebookException;
        r0 = "Authorization response does not contain the signed_request";
        r2.<init>(r0);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginMethodHandler.getUserIDFromSignedRequest(java.lang.String):java.lang.String");
    }

    public void writeToParcel(Parcel parcel, int i) {
        Utility.writeStringMapToParcel(parcel, this.methodLoggingExtras);
    }
}
