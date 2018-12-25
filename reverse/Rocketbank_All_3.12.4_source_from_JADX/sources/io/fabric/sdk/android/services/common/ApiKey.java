package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;

public class ApiKey {
    static final String CRASHLYTICS_API_KEY = "com.crashlytics.ApiKey";
    static final String FABRIC_API_KEY = "io.fabric.ApiKey";
    static final String STRING_TWITTER_CONSUMER_SECRET = "@string/twitter_consumer_secret";

    protected String buildApiKeyInstructions() {
        return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
    }

    @Deprecated
    public static String getApiKey(Context context) {
        Fabric.getLogger().mo776w("Fabric", "getApiKey(context) is deprecated, please upgrade kit(s) to the latest version.");
        return new ApiKey().getValue(context);
    }

    @Deprecated
    public static String getApiKey(Context context, boolean z) {
        Fabric.getLogger().mo776w("Fabric", "getApiKey(context, debug) is deprecated, please upgrade kit(s) to the latest version.");
        return new ApiKey().getValue(context);
    }

    public String getValue(Context context) {
        Object apiKeyFromManifest = getApiKeyFromManifest(context);
        if (TextUtils.isEmpty(apiKeyFromManifest)) {
            apiKeyFromManifest = getApiKeyFromStrings(context);
        }
        if (TextUtils.isEmpty(apiKeyFromManifest)) {
            apiKeyFromManifest = getApiKeyFromFirebaseAppId(context);
        }
        if (TextUtils.isEmpty(apiKeyFromManifest)) {
            logErrorOrThrowException(context);
        }
        return apiKeyFromManifest;
    }

    protected String getApiKeyFromFirebaseAppId(Context context) {
        return new FirebaseInfo().getApiKeyFromFirebaseAppId(context);
    }

    protected String getApiKeyFromManifest(Context context) {
        String str = null;
        try {
            context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (context == null) {
                return null;
            }
            String string = context.getString(FABRIC_API_KEY);
            try {
                if (STRING_TWITTER_CONSUMER_SECRET.equals(string)) {
                    Fabric.getLogger().mo768d("Fabric", "Ignoring bad default value for Fabric ApiKey set by FirebaseUI-Auth");
                } else {
                    str = string;
                }
                if (str != null) {
                    return str;
                }
                Fabric.getLogger().mo768d("Fabric", "Falling back to Crashlytics key lookup from Manifest");
                return context.getString(CRASHLYTICS_API_KEY);
            } catch (Exception e) {
                context = e;
                str = string;
                Fabric.getLogger().mo768d("Fabric", "Caught non-fatal exception while retrieving apiKey: ".concat(String.valueOf(context)));
                return str;
            }
        } catch (Exception e2) {
            context = e2;
            Fabric.getLogger().mo768d("Fabric", "Caught non-fatal exception while retrieving apiKey: ".concat(String.valueOf(context)));
            return str;
        }
    }

    protected String getApiKeyFromStrings(Context context) {
        int resourcesIdentifier = CommonUtils.getResourcesIdentifier(context, FABRIC_API_KEY, "string");
        if (resourcesIdentifier == 0) {
            Fabric.getLogger().mo768d("Fabric", "Falling back to Crashlytics key lookup from Strings");
            resourcesIdentifier = CommonUtils.getResourcesIdentifier(context, CRASHLYTICS_API_KEY, "string");
        }
        return resourcesIdentifier != 0 ? context.getResources().getString(resourcesIdentifier) : null;
    }

    protected void logErrorOrThrowException(Context context) {
        Fabric.isDebuggable();
        if (CommonUtils.isAppDebuggable(context) != null) {
            throw new IllegalArgumentException(buildApiKeyInstructions());
        }
        Fabric.getLogger().mo770e("Fabric", buildApiKeyInstructions());
    }
}
