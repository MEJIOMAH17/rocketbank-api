package com.facebook.applinks;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AppLinkData {
    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_EXTRAS_KEY = "extras";
    public static final String ARGUMENTS_NATIVE_CLASS_KEY = "com.facebook.platform.APPLINK_NATIVE_CLASS";
    public static final String ARGUMENTS_NATIVE_URL = "com.facebook.platform.APPLINK_NATIVE_URL";
    public static final String ARGUMENTS_REFERER_DATA_KEY = "referer_data";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_AL_APPLINK_DATA_KEY = "al_applink_data";
    static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String DEFERRED_APP_LINK_ARGS_FIELD = "applink_args";
    private static final String DEFERRED_APP_LINK_CLASS_FIELD = "applink_class";
    private static final String DEFERRED_APP_LINK_CLICK_TIME_FIELD = "click_time";
    private static final String DEFERRED_APP_LINK_EVENT = "DEFERRED_APP_LINK";
    private static final String DEFERRED_APP_LINK_PATH = "%s/activities";
    private static final String DEFERRED_APP_LINK_URL_FIELD = "applink_url";
    private static final String EXTRAS_DEEPLINK_CONTEXT_KEY = "deeplink_context";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String PROMOTION_CODE_KEY = "promo_code";
    private static final String REFERER_DATA_REF_KEY = "fb_ref";
    private static final String TAG = AppLinkData.class.getCanonicalName();
    private Bundle argumentBundle;
    private JSONObject arguments;
    private String promotionCode;
    private String ref;
    private Uri targetUri;

    public interface CompletionHandler {
        void onDeferredAppLinkDataFetched(AppLinkData appLinkData);
    }

    public static void fetchDeferredAppLinkData(Context context, CompletionHandler completionHandler) {
        fetchDeferredAppLinkData(context, null, completionHandler);
    }

    public static void fetchDeferredAppLinkData(Context context, String str, final CompletionHandler completionHandler) {
        Validate.notNull(context, "context");
        Validate.notNull(completionHandler, "completionHandler");
        if (str == null) {
            str = Utility.getMetadataApplicationId(context);
        }
        Validate.notNull(str, "applicationId");
        context = context.getApplicationContext();
        FacebookSdk.getExecutor().execute(new Runnable() {
            public final void run() {
                AppLinkData.fetchDeferredAppLinkFromServer(context, str, completionHandler);
            }
        });
    }

    private static void fetchDeferredAppLinkFromServer(android.content.Context r7, java.lang.String r8, com.facebook.applinks.AppLinkData.CompletionHandler r9) {
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
        r0 = new org.json.JSONObject;
        r0.<init>();
        r1 = "event";	 Catch:{ JSONException -> 0x00d8 }
        r2 = "DEFERRED_APP_LINK";	 Catch:{ JSONException -> 0x00d8 }
        r0.put(r1, r2);	 Catch:{ JSONException -> 0x00d8 }
        r1 = com.facebook.internal.AttributionIdentifiers.getAttributionIdentifiers(r7);	 Catch:{ JSONException -> 0x00d8 }
        r2 = com.facebook.appevents.AppEventsLogger.getAnonymousAppDeviceGUID(r7);	 Catch:{ JSONException -> 0x00d8 }
        r3 = com.facebook.FacebookSdk.getLimitEventAndDataUsage(r7);	 Catch:{ JSONException -> 0x00d8 }
        com.facebook.internal.Utility.setAppEventAttributionParameters(r0, r1, r2, r3);	 Catch:{ JSONException -> 0x00d8 }
        r1 = "application_package_name";	 Catch:{ JSONException -> 0x00d8 }
        r7 = r7.getPackageName();	 Catch:{ JSONException -> 0x00d8 }
        r0.put(r1, r7);	 Catch:{ JSONException -> 0x00d8 }
        r7 = "%s/activities";
        r1 = 1;
        r1 = new java.lang.Object[r1];
        r2 = 0;
        r1[r2] = r8;
        r7 = java.lang.String.format(r7, r1);
        r8 = 0;
        r7 = com.facebook.GraphRequest.newPostRequest(r8, r7, r0, r8);	 Catch:{ Exception -> 0x00cc }
        r7 = r7.executeAndWait();	 Catch:{ Exception -> 0x00cc }
        r7 = r7.getJSONObject();	 Catch:{ Exception -> 0x00cc }
        if (r7 == 0) goto L_0x00ca;	 Catch:{ Exception -> 0x00cc }
    L_0x003f:
        r0 = "applink_args";	 Catch:{ Exception -> 0x00cc }
        r0 = r7.optString(r0);	 Catch:{ Exception -> 0x00cc }
        r1 = "click_time";	 Catch:{ Exception -> 0x00cc }
        r2 = -1;	 Catch:{ Exception -> 0x00cc }
        r4 = r7.optLong(r1, r2);	 Catch:{ Exception -> 0x00cc }
        r1 = "applink_class";	 Catch:{ Exception -> 0x00cc }
        r1 = r7.optString(r1);	 Catch:{ Exception -> 0x00cc }
        r6 = "applink_url";	 Catch:{ Exception -> 0x00cc }
        r7 = r7.optString(r6);	 Catch:{ Exception -> 0x00cc }
        r6 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Exception -> 0x00cc }
        if (r6 != 0) goto L_0x00ca;	 Catch:{ Exception -> 0x00cc }
    L_0x005f:
        r0 = createFromJson(r0);	 Catch:{ Exception -> 0x00cc }
        r8 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r8 == 0) goto L_0x0089;
    L_0x0067:
        r8 = r0.arguments;	 Catch:{ JSONException -> 0x0082 }
        if (r8 == 0) goto L_0x0072;	 Catch:{ JSONException -> 0x0082 }
    L_0x006b:
        r8 = r0.arguments;	 Catch:{ JSONException -> 0x0082 }
        r2 = "com.facebook.platform.APPLINK_TAP_TIME_UTC";	 Catch:{ JSONException -> 0x0082 }
        r8.put(r2, r4);	 Catch:{ JSONException -> 0x0082 }
    L_0x0072:
        r8 = r0.argumentBundle;	 Catch:{ JSONException -> 0x0082 }
        if (r8 == 0) goto L_0x0089;	 Catch:{ JSONException -> 0x0082 }
    L_0x0076:
        r8 = r0.argumentBundle;	 Catch:{ JSONException -> 0x0082 }
        r2 = "com.facebook.platform.APPLINK_TAP_TIME_UTC";	 Catch:{ JSONException -> 0x0082 }
        r3 = java.lang.Long.toString(r4);	 Catch:{ JSONException -> 0x0082 }
        r8.putString(r2, r3);	 Catch:{ JSONException -> 0x0082 }
        goto L_0x0089;
    L_0x0082:
        r8 = TAG;	 Catch:{ Exception -> 0x00cd }
        r2 = "Unable to put tap time in AppLinkData.arguments";	 Catch:{ Exception -> 0x00cd }
        android.util.Log.d(r8, r2);	 Catch:{ Exception -> 0x00cd }
    L_0x0089:
        if (r1 == 0) goto L_0x00a9;
    L_0x008b:
        r8 = r0.arguments;	 Catch:{ JSONException -> 0x00a2 }
        if (r8 == 0) goto L_0x0096;	 Catch:{ JSONException -> 0x00a2 }
    L_0x008f:
        r8 = r0.arguments;	 Catch:{ JSONException -> 0x00a2 }
        r2 = "com.facebook.platform.APPLINK_NATIVE_CLASS";	 Catch:{ JSONException -> 0x00a2 }
        r8.put(r2, r1);	 Catch:{ JSONException -> 0x00a2 }
    L_0x0096:
        r8 = r0.argumentBundle;	 Catch:{ JSONException -> 0x00a2 }
        if (r8 == 0) goto L_0x00a9;	 Catch:{ JSONException -> 0x00a2 }
    L_0x009a:
        r8 = r0.argumentBundle;	 Catch:{ JSONException -> 0x00a2 }
        r2 = "com.facebook.platform.APPLINK_NATIVE_CLASS";	 Catch:{ JSONException -> 0x00a2 }
        r8.putString(r2, r1);	 Catch:{ JSONException -> 0x00a2 }
        goto L_0x00a9;
    L_0x00a2:
        r8 = TAG;	 Catch:{ Exception -> 0x00cd }
        r1 = "Unable to put tap time in AppLinkData.arguments";	 Catch:{ Exception -> 0x00cd }
        android.util.Log.d(r8, r1);	 Catch:{ Exception -> 0x00cd }
    L_0x00a9:
        if (r7 == 0) goto L_0x00d4;
    L_0x00ab:
        r8 = r0.arguments;	 Catch:{ JSONException -> 0x00c2 }
        if (r8 == 0) goto L_0x00b6;	 Catch:{ JSONException -> 0x00c2 }
    L_0x00af:
        r8 = r0.arguments;	 Catch:{ JSONException -> 0x00c2 }
        r1 = "com.facebook.platform.APPLINK_NATIVE_URL";	 Catch:{ JSONException -> 0x00c2 }
        r8.put(r1, r7);	 Catch:{ JSONException -> 0x00c2 }
    L_0x00b6:
        r8 = r0.argumentBundle;	 Catch:{ JSONException -> 0x00c2 }
        if (r8 == 0) goto L_0x00d4;	 Catch:{ JSONException -> 0x00c2 }
    L_0x00ba:
        r8 = r0.argumentBundle;	 Catch:{ JSONException -> 0x00c2 }
        r1 = "com.facebook.platform.APPLINK_NATIVE_URL";	 Catch:{ JSONException -> 0x00c2 }
        r8.putString(r1, r7);	 Catch:{ JSONException -> 0x00c2 }
        goto L_0x00d4;
    L_0x00c2:
        r7 = TAG;	 Catch:{ Exception -> 0x00cd }
        r8 = "Unable to put tap time in AppLinkData.arguments";	 Catch:{ Exception -> 0x00cd }
        android.util.Log.d(r7, r8);	 Catch:{ Exception -> 0x00cd }
        goto L_0x00d4;
    L_0x00ca:
        r0 = r8;
        goto L_0x00d4;
    L_0x00cc:
        r0 = r8;
    L_0x00cd:
        r7 = TAG;
        r8 = "Unable to fetch deferred applink from server";
        com.facebook.internal.Utility.logd(r7, r8);
    L_0x00d4:
        r9.onDeferredAppLinkDataFetched(r0);
        return;
    L_0x00d8:
        r7 = move-exception;
        r8 = new com.facebook.FacebookException;
        r9 = "An error occurred while preparing deferred app link";
        r8.<init>(r9, r7);
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.applinks.AppLinkData.fetchDeferredAppLinkFromServer(android.content.Context, java.lang.String, com.facebook.applinks.AppLinkData$CompletionHandler):void");
    }

    public static AppLinkData createFromActivity(Activity activity) {
        Validate.notNull(activity, "activity");
        activity = activity.getIntent();
        if (activity == null) {
            return null;
        }
        AppLinkData createFromAlApplinkData = createFromAlApplinkData(activity);
        if (createFromAlApplinkData == null) {
            createFromAlApplinkData = createFromJson(activity.getStringExtra(BUNDLE_APPLINK_ARGS_KEY));
        }
        if (createFromAlApplinkData == null) {
            createFromAlApplinkData = createFromUri(activity.getData());
        }
        return createFromAlApplinkData;
    }

    public static AppLinkData createFromAlApplinkData(Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle bundleExtra = intent.getBundleExtra(BUNDLE_AL_APPLINK_DATA_KEY);
        if (bundleExtra == null) {
            return null;
        }
        AppLinkData appLinkData = new AppLinkData();
        appLinkData.targetUri = intent.getData();
        if (appLinkData.targetUri == null) {
            intent = bundleExtra.getString(METHOD_ARGS_TARGET_URL_KEY);
            if (intent != null) {
                appLinkData.targetUri = Uri.parse(intent);
            }
        }
        appLinkData.argumentBundle = bundleExtra;
        appLinkData.arguments = null;
        intent = bundleExtra.getBundle(ARGUMENTS_REFERER_DATA_KEY);
        if (intent != null) {
            appLinkData.ref = intent.getString(REFERER_DATA_REF_KEY);
        }
        intent = bundleExtra.getBundle(ARGUMENTS_EXTRAS_KEY);
        if (intent != null) {
            intent = intent.getString("deeplink_context");
            if (intent != null) {
                try {
                    JSONObject jSONObject = new JSONObject(intent);
                    if (jSONObject.has("promo_code") != null) {
                        appLinkData.promotionCode = jSONObject.getString("promo_code");
                    }
                } catch (Intent intent2) {
                    Log.d(TAG, "Unable to parse deeplink_context JSON", intent2);
                }
            }
        }
        return appLinkData;
    }

    private static AppLinkData createFromJson(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            str = jSONObject.getString("version");
            if (jSONObject.getJSONObject("bridge_args").getString(BRIDGE_ARGS_METHOD_KEY).equals("applink") && str.equals("2") != null) {
                str = new AppLinkData();
                str.arguments = jSONObject.getJSONObject("method_args");
                if (str.arguments.has(METHOD_ARGS_REF_KEY)) {
                    str.ref = str.arguments.getString(METHOD_ARGS_REF_KEY);
                } else if (str.arguments.has(ARGUMENTS_REFERER_DATA_KEY)) {
                    jSONObject = str.arguments.getJSONObject(ARGUMENTS_REFERER_DATA_KEY);
                    if (jSONObject.has(REFERER_DATA_REF_KEY)) {
                        str.ref = jSONObject.getString(REFERER_DATA_REF_KEY);
                    }
                }
                if (str.arguments.has(METHOD_ARGS_TARGET_URL_KEY)) {
                    str.targetUri = Uri.parse(str.arguments.getString(METHOD_ARGS_TARGET_URL_KEY));
                }
                if (str.arguments.has(ARGUMENTS_EXTRAS_KEY)) {
                    jSONObject = str.arguments.getJSONObject(ARGUMENTS_EXTRAS_KEY);
                    if (jSONObject.has("deeplink_context")) {
                        jSONObject = jSONObject.getJSONObject("deeplink_context");
                        if (jSONObject.has("promo_code")) {
                            str.promotionCode = jSONObject.getString("promo_code");
                        }
                    }
                }
                str.argumentBundle = toBundle(str.arguments);
                return str;
            }
        } catch (String str2) {
            Log.d(TAG, "Unable to parse AppLink JSON", str2);
        } catch (String str22) {
            Log.d(TAG, "Unable to parse AppLink JSON", str22);
        }
        return null;
    }

    private static AppLinkData createFromUri(Uri uri) {
        if (uri == null) {
            return null;
        }
        AppLinkData appLinkData = new AppLinkData();
        appLinkData.targetUri = uri;
        return appLinkData;
    }

    private static Bundle toBundle(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            Object obj = jSONObject.get(str);
            if (obj instanceof JSONObject) {
                bundle.putBundle(str, toBundle((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                int i = 0;
                if (jSONArray.length() == 0) {
                    bundle.putStringArray(str, new String[0]);
                } else {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        Parcelable[] parcelableArr = new Bundle[jSONArray.length()];
                        while (i < jSONArray.length()) {
                            parcelableArr[i] = toBundle(jSONArray.getJSONObject(i));
                            i++;
                        }
                        bundle.putParcelableArray(str, parcelableArr);
                    } else if (obj2 instanceof JSONArray) {
                        throw new FacebookException("Nested arrays are not supported.");
                    } else {
                        String[] strArr = new String[jSONArray.length()];
                        while (i < jSONArray.length()) {
                            strArr[i] = jSONArray.get(i).toString();
                            i++;
                        }
                        bundle.putStringArray(str, strArr);
                    }
                }
            } else {
                bundle.putString(str, obj.toString());
            }
        }
        return bundle;
    }

    private AppLinkData() {
    }

    public Uri getTargetUri() {
        return this.targetUri;
    }

    public String getRef() {
        return this.ref;
    }

    public String getPromotionCode() {
        return this.promotionCode;
    }

    public Bundle getArgumentBundle() {
        return this.argumentBundle;
    }

    public Bundle getRefererData() {
        return this.argumentBundle != null ? this.argumentBundle.getBundle(ARGUMENTS_REFERER_DATA_KEY) : null;
    }
}
