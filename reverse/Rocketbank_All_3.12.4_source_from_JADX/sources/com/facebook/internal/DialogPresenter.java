package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;

public class DialogPresenter {

    public interface ParameterProvider {
        Bundle getLegacyParameters();

        Bundle getParameters();
    }

    public static void setupAppCallForCannotShowError(AppCall appCall) {
        setupAppCallForValidationError(appCall, new FacebookException("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
    }

    public static void setupAppCallForValidationError(AppCall appCall, FacebookException facebookException) {
        setupAppCallForErrorResult(appCall, facebookException);
    }

    public static void present(AppCall appCall, Activity activity) {
        activity.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        appCall.setPending();
    }

    public static void present(AppCall appCall, FragmentWrapper fragmentWrapper) {
        fragmentWrapper.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        appCall.setPending();
    }

    public static boolean canPresentNativeDialogWithFeature(DialogFeature dialogFeature) {
        return getProtocolVersionForNativeDialog(dialogFeature) != -1 ? true : null;
    }

    public static boolean canPresentWebFallbackDialogWithFeature(DialogFeature dialogFeature) {
        return getDialogWebFallbackUri(dialogFeature) != null ? true : null;
    }

    public static void setupAppCallForErrorResult(AppCall appCall, FacebookException facebookException) {
        if (facebookException != null) {
            Validate.hasFacebookActivity(FacebookSdk.getApplicationContext());
            Intent intent = new Intent();
            intent.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
            intent.setAction(FacebookActivity.PASS_THROUGH_CANCEL_ACTION);
            NativeProtocol.setupProtocolRequestIntent(intent, appCall.getCallId().toString(), null, NativeProtocol.getLatestKnownVersion(), NativeProtocol.createBundleForException(facebookException));
            appCall.setRequestIntent(intent);
        }
    }

    public static void setupAppCallForWebDialog(AppCall appCall, String str, Bundle bundle) {
        Validate.hasFacebookActivity(FacebookSdk.getApplicationContext());
        Validate.hasInternetPermissions(FacebookSdk.getApplicationContext());
        Bundle bundle2 = new Bundle();
        bundle2.putString(NativeProtocol.WEB_DIALOG_ACTION, str);
        bundle2.putBundle(NativeProtocol.WEB_DIALOG_PARAMS, bundle);
        bundle = new Intent();
        NativeProtocol.setupProtocolRequestIntent(bundle, appCall.getCallId().toString(), str, NativeProtocol.getLatestKnownVersion(), bundle2);
        bundle.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
        bundle.setAction(FacebookDialogFragment.TAG);
        appCall.setRequestIntent(bundle);
    }

    public static void setupAppCallForWebFallbackDialog(AppCall appCall, Bundle bundle, DialogFeature dialogFeature) {
        Validate.hasFacebookActivity(FacebookSdk.getApplicationContext());
        Validate.hasInternetPermissions(FacebookSdk.getApplicationContext());
        String name = dialogFeature.name();
        Uri dialogWebFallbackUri = getDialogWebFallbackUri(dialogFeature);
        if (dialogWebFallbackUri == null) {
            bundle = new StringBuilder("Unable to fetch the Url for the DialogFeature : '");
            bundle.append(name);
            bundle.append("'");
            throw new FacebookException(bundle.toString());
        }
        bundle = ServerProtocol.getQueryParamsForPlatformActivityIntentWebFallback(appCall.getCallId().toString(), NativeProtocol.getLatestKnownVersion(), bundle);
        if (bundle == null) {
            throw new FacebookException("Unable to fetch the app's key-hash");
        }
        if (dialogWebFallbackUri.isRelative()) {
            bundle = Utility.buildUri(ServerProtocol.getDialogAuthority(), dialogWebFallbackUri.toString(), bundle);
        } else {
            bundle = Utility.buildUri(dialogWebFallbackUri.getAuthority(), dialogWebFallbackUri.getPath(), bundle);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("url", bundle.toString());
        bundle2.putBoolean(NativeProtocol.WEB_DIALOG_IS_FALLBACK, true);
        bundle = new Intent();
        NativeProtocol.setupProtocolRequestIntent(bundle, appCall.getCallId().toString(), dialogFeature.getAction(), NativeProtocol.getLatestKnownVersion(), bundle2);
        bundle.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
        bundle.setAction(FacebookDialogFragment.TAG);
        appCall.setRequestIntent(bundle);
    }

    public static void setupAppCallForNativeDialog(AppCall appCall, ParameterProvider parameterProvider, DialogFeature dialogFeature) {
        Context applicationContext = FacebookSdk.getApplicationContext();
        String action = dialogFeature.getAction();
        dialogFeature = getProtocolVersionForNativeDialog(dialogFeature);
        if (dialogFeature == -1) {
            throw new FacebookException("Cannot present this dialog. This likely means that the Facebook app is not installed.");
        }
        if (NativeProtocol.isVersionCompatibleWithBucketedIntent(dialogFeature)) {
            parameterProvider = parameterProvider.getParameters();
        } else {
            parameterProvider = parameterProvider.getLegacyParameters();
        }
        if (parameterProvider == null) {
            parameterProvider = new Bundle();
        }
        parameterProvider = NativeProtocol.createPlatformActivityIntent(applicationContext, appCall.getCallId().toString(), action, dialogFeature, parameterProvider);
        if (parameterProvider == null) {
            throw new FacebookException("Unable to create Intent; this likely means theFacebook app is not installed.");
        }
        appCall.setRequestIntent(parameterProvider);
    }

    private static Uri getDialogWebFallbackUri(DialogFeature dialogFeature) {
        dialogFeature = FetchedAppSettings.getDialogFeatureConfig(FacebookSdk.getApplicationId(), dialogFeature.getAction(), dialogFeature.name());
        return dialogFeature != null ? dialogFeature.getFallbackUrl() : null;
    }

    public static int getProtocolVersionForNativeDialog(DialogFeature dialogFeature) {
        String applicationId = FacebookSdk.getApplicationId();
        String action = dialogFeature.getAction();
        return NativeProtocol.getLatestAvailableProtocolVersionForAction(action, getVersionSpecForFeature(applicationId, action, dialogFeature));
    }

    private static int[] getVersionSpecForFeature(String str, String str2, DialogFeature dialogFeature) {
        str = FetchedAppSettings.getDialogFeatureConfig(str, str2, dialogFeature.name());
        if (str != null) {
            return str.getVersionSpec();
        }
        return new int[]{dialogFeature.getMinVersion()};
    }

    public static void logDialogActivity(Context context, String str, String str2) {
        context = AppEventsLogger.newLogger(context);
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME, str2);
        context.logSdkEvent(str, null, bundle);
    }
}
