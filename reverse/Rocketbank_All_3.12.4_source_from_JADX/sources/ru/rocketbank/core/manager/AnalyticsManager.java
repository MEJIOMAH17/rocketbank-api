package ru.rocketbank.core.manager;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.appsflyer.AppsFlyerLib;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import com.crashlytics.android.answers.LoginEvent;
import com.facebook.appevents.AppEventsLogger;
import com.flurry.android.FlurryAgent;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import java.util.HashMap;
import java.util.Map;
import ru.rocketbank.core.BaseRocketApplication;

public final class AnalyticsManager {
    private final Context context;
    private final AppEventsLogger facebookLogger;
    private final HashMap<String, Object> hashMap = new HashMap();

    /* renamed from: ru.rocketbank.core.manager.AnalyticsManager$1 */
    class C13291 implements AnimatorListener {
        C13291() {
        }

        public final void onInstallConversionDataLoaded(Map<String, String> map) {
            String str = (String) map.get(Param.CAMPAIGN);
            if (str != null) {
                AnalyticsManager.this.hashMap.put(Param.CAMPAIGN, str);
            }
            String str2 = (String) map.get("media_source");
            if (str2 != null) {
                AnalyticsManager.this.hashMap.put("source", str2);
            }
        }
    }

    public AnalyticsManager(Context context, AppInfoManager appInfoManager, AppEventsLogger appEventsLogger) {
        this.context = context;
        this.facebookLogger = appEventsLogger;
        AppsFlyerLib.getInstance().startTracking(BaseRocketApplication.getContext(), "AxLNGenaPftu3fhCNL8y8S");
        AppsFlyerLib.getInstance();
        AppsFlyerLib.setDebugLog$1385ff();
        Fabric.with(context, new Kit[]{new Crashlytics(), new Answers()});
        FlurryAgent.init(context, "FFS86G84SVVC3WXGZPTZ");
        context = appInfoManager.getDeviceData();
        appInfoManager = context.realmGet$deviceId();
        AppsFlyerLib.getInstance();
        AppsFlyerLib.setAndroidIdData(context.realmGet$androidId());
        AppsFlyerLib.getInstance();
        AppsFlyerLib.setCustomerUserId(context.realmGet$deviceId());
        this.hashMap.put("deviceId", appInfoManager);
        this.hashMap.put("week", context.realmGet$activation());
        AppsFlyerLib.getInstance();
        AppsFlyerLib.registerConversionListener$815205$bb56743(new C13291());
    }

    public static void startActivity(Activity activity) {
        FlurryAgent.onStartSession(activity);
    }

    public static void stopActivity(Activity activity) {
        FlurryAgent.onEndSession(activity);
    }

    public static void cardDeletedFromGooglePay() {
        Answers.getInstance().logCustom(new CustomEvent("Google Pay card deleted"));
    }

    public static void cardAddedViaGooglePay() {
        Answers.getInstance().logCustom(new CustomEvent("Google Pay card added"));
    }

    public static void cardDefaultGooglePay() {
        Answers.getInstance().logCustom(new CustomEvent("Google Pay card default"));
    }

    public final void newUserPhoneEnter() {
        PreferenceManager.getDefaultSharedPreferences(this.context).edit().putBoolean("ENTER_PHONE", true).apply();
    }

    public final void newUserPhoneConfirm() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        if (defaultSharedPreferences.getBoolean("ENTER_PHONE", false)) {
            this.facebookLogger.logEvent("Enter phone");
            defaultSharedPreferences.edit().remove("ENTER_PHONE").apply();
        }
    }

    public final void leadFormCompleteFacebook() {
        this.facebookLogger.logEvent("Fill form");
    }

    public final void logStartFirstRefillFacebook() {
        PreferenceManager.getDefaultSharedPreferences(this.context).edit().putBoolean("FIRST_REFILL", true).apply();
    }

    public final void logEndFirstRefillFacebook() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        if (defaultSharedPreferences.getBoolean("FIRST_REFILL", false)) {
            this.facebookLogger.logEvent("Refill plastic card");
            defaultSharedPreferences.edit().remove("FIRST_REFILL").apply();
        }
    }

    public final void phoneConfirm(String str) {
        this.hashMap.put("phone", str);
        AppsFlyerLib.getInstance().trackEvent(this.context, "Confirm phone", this.hashMap);
        this.hashMap.remove("phone");
    }

    public static void logException(Throwable th, String str) {
        if (str != null) {
            Crashlytics.setString("dump", str);
        }
        Crashlytics.logException(th);
    }

    public static void logLastActivity(String str) {
        if (str != null && Fabric.isInitialized()) {
            Crashlytics.setString("last_activity", str);
        }
    }

    public static void logLastFragment(String str) {
        if (str != null && Fabric.isInitialized()) {
            Crashlytics.setString("last_fragment", str);
        }
    }

    public static void logLastActivityPaused(String str) {
        if (str != null && Fabric.isInitialized()) {
            Crashlytics.setString("last_activity", str);
        }
    }

    public static void logException(Throwable th) {
        Crashlytics.logException(th);
    }

    public static void setUserId(long j) {
        Crashlytics.setUserIdentifier(String.valueOf(j));
    }

    public static void setDeviceId(String str) {
        Crashlytics.setUserName(str);
        Crashlytics.setString("DEVICE_ID", str);
    }

    public static void setString(String str, String str2) {
        Crashlytics.setString(str, str2);
    }

    public static void logSignIn(boolean z, boolean z2) {
        Answers.getInstance().logLogin(new LoginEvent().putMethod(z ? "Touch" : "Pin").putSuccess(z2));
    }

    public final void discounts() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Discounts", this.hashMap);
    }

    public final void invites() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Invites", this.hashMap);
    }

    public final void invitesFriend() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Send friend invite", this.hashMap);
    }

    public final void invitesPage() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Share invite page", this.hashMap);
    }

    public final void leadFormComplete() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Complete form", this.hashMap);
    }

    public final void leadFormFill() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Fill form", this.hashMap);
    }

    public final void leadPassportFirst() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "First passport photo", this.hashMap);
    }

    public final void leadPassportSecond() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Second passport photo", this.hashMap);
    }

    public final void loginCode() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Auth by code", this.hashMap);
    }

    public final void noob() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Noob", this.hashMap);
    }

    public final void phoneEnter() {
        AppsFlyerLib.getInstance().trackEvent(this.context, "Enter phone", this.hashMap);
    }
}
