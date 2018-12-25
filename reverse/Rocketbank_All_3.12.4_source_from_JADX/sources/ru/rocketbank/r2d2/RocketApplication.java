package ru.rocketbank.r2d2;

import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v7.app.AppCompatDelegate;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.security.ProviderInstaller;
import com.google.android.gms.tapandpay.TapAndPay;
import com.google.firebase.analytics.FirebaseAnalytics;
import de.greenrobot.event.EventBus;
import java.io.IOException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.dagger.AndroidModule;
import ru.rocketbank.core.dagger.component.DaggerRocketComponent;
import ru.rocketbank.core.dagger.component.DaggerRocketComponent.Builder;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.event.LockEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.AtmsManager;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.RocketShortcutManager;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.network.image.ImageLoading;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.user.impl.MigrationToRealm;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.widget.RocketWidgetProvider;

/* compiled from: RocketApplication.kt */
public class RocketApplication extends BaseRocketApplication {
    public static final Companion Companion = new Companion();
    private static String TAG_APP = "TAG_APP";
    public static FirebaseAnalytics firebaseAnalytics;
    private final RocketApplication$activityLifecycleCallbacks$1 activityLifecycleCallbacks = new RocketApplication$activityLifecycleCallbacks$1(this);
    private AnalyticsManager analyticsManager;
    private Activity currentActivity;
    private DataManager dataManager;
    private RocketShortcutManager rocketShortcutManager;

    /* compiled from: RocketApplication.kt */
    public static final class Companion {
        public static /* synthetic */ void injector$annotations() {
        }

        private Companion() {
        }

        public final String getTAG_APP() {
            return RocketApplication.TAG_APP;
        }

        public final void setTAG_APP(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            RocketApplication.TAG_APP = str;
        }

        public final FirebaseAnalytics getFirebaseAnalytics() {
            return RocketApplication.access$getFirebaseAnalytics$cp();
        }

        public final void setFirebaseAnalytics(FirebaseAnalytics firebaseAnalytics) {
            Intrinsics.checkParameterIsNotNull(firebaseAnalytics, "<set-?>");
            RocketApplication.firebaseAnalytics = firebaseAnalytics;
        }

        public final RocketComponent getInjector() {
            RocketComponent rocketComponent = BaseRocketApplication.getRocketComponent();
            Intrinsics.checkExpressionValueIsNotNull(rocketComponent, "BaseRocketApplication.getRocketComponent()");
            return rocketComponent;
        }

        public final Context getContext() {
            BaseRocketApplication context = BaseRocketApplication.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "BaseRocketApplication.getContext()");
            return context;
        }
    }

    public static final RocketComponent getInjector() {
        return Companion.getInjector();
    }

    public static final /* synthetic */ AnalyticsManager access$getAnalyticsManager$p(RocketApplication rocketApplication) {
        rocketApplication = rocketApplication.analyticsManager;
        if (rocketApplication == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsManager");
        }
        return rocketApplication;
    }

    public static final /* synthetic */ FirebaseAnalytics access$getFirebaseAnalytics$cp() {
        FirebaseAnalytics firebaseAnalytics = firebaseAnalytics;
        if (firebaseAnalytics == null) {
            Intrinsics.throwUninitializedPropertyAccessException("firebaseAnalytics");
        }
        return firebaseAnalytics;
    }

    public void onCreate() {
        super.onCreate();
        initRealm();
        Context context = this;
        FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
        Intrinsics.checkExpressionValueIsNotNull(instance, "FirebaseAnalytics.getInstance(this)");
        firebaseAnalytics = instance;
        Builder builder = DaggerRocketComponent.builder();
        TapAndPay tapAndPay = TapAndPay.TapAndPay;
        Intrinsics.checkExpressionValueIsNotNull(tapAndPay, "TapAndPay.TapAndPay");
        RocketComponent build = builder.androidModule(new AndroidModule(context, tapAndPay)).build();
        setRocketComponent(build);
        MigrationToRealm migrationToRealm = MigrationToRealm.INSTANCE;
        MigrationToRealm.migrate(context, build.getAuthorizationStorage(), build.getAppInfoManager());
        Companion.getInjector().getTouchManager().setPermission("android.permission.USE_FINGERPRINT");
        this.dataManager = build.getDataManager();
        this.analyticsManager = build.getAnalyticsManager();
        this.rocketShortcutManager = build.getRocketShortcutManager();
        RocketShortcutManager rocketShortcutManager = this.rocketShortcutManager;
        if (rocketShortcutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketShortcutManager");
        }
        rocketShortcutManager.setStartupActivity(StartupActivity.class);
        build.getAppConfig().setApplicationId(BuildConfig.APPLICATION_ID);
        build.getWidgetManager().setUpdateListener$4abaf3d4(new RocketApplication$onCreate$1(this));
        ImageLoading.INSTANCE.setHeaderManager(build.getHeaderManager());
        try {
            build.getAtmsManager().onCreate(Companion.getContext());
        } catch (IOException e) {
            Log.e(TAG_APP, "Open file failed", e);
        }
        String realmGet$deviceId = build.getAppInfoManager().getDeviceData().realmGet$deviceId();
        if (this.analyticsManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsManager");
        }
        AnalyticsManager.setDeviceId(realmGet$deviceId);
        registerActivityLifecycleCallbacks(this.activityLifecycleCallbacks);
        AppCompatDelegate.setCompatVectorFromResourcesEnabled$1385ff();
        try {
            CharSequence charSequence = ", ";
            SSLContext sSLContext = SSLContext.getDefault();
            Intrinsics.checkExpressionValueIsNotNull(sSLContext, "SSLContext.getDefault()");
            SSLParameters defaultSSLParameters = sSLContext.getDefaultSSLParameters();
            Intrinsics.checkExpressionValueIsNotNull(defaultSSLParameters, "SSLContext.getDefault().defaultSSLParameters");
            AnalyticsManager.setString("TLS_BEFORE_UPDATE", TextUtils.join(charSequence, defaultSSLParameters.getProtocols()));
            updateAndroidSecurityProvider(this);
            charSequence = ", ";
            sSLContext = SSLContext.getDefault();
            Intrinsics.checkExpressionValueIsNotNull(sSLContext, "SSLContext.getDefault()");
            defaultSSLParameters = sSLContext.getDefaultSSLParameters();
            Intrinsics.checkExpressionValueIsNotNull(defaultSSLParameters, "SSLContext.getDefault().defaultSSLParameters");
            AnalyticsManager.setString("TLS_AFTER_UPDATE", TextUtils.join(charSequence, defaultSSLParameters.getProtocols()));
        } catch (Exception e2) {
            e2.printStackTrace();
            AnalyticsManager.logException(e2);
        }
    }

    private final void updateAndroidSecurityProvider(Context context) {
        try {
            ProviderInstaller.installIfNeeded(context);
        } catch (Context context2) {
            context2.printStackTrace();
            AnalyticsManager.logException((Throwable) context2);
        } catch (Context context22) {
            context22.printStackTrace();
            AnalyticsManager.logException((Throwable) context22);
        }
    }

    protected void lockApplication() {
        Authorization authorization = Companion.getInjector().getAuthorization();
        if (authorization.getStatus() == null || !Intrinsics.areEqual(RegistrationStatus.LeadStatus, authorization.getStatus())) {
            DataManager dataManager = this.dataManager;
            if (dataManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("dataManager");
            }
            if (!dataManager.isResetCodeToken) {
                Companion.getInjector().getAuthorization().setToken(null);
                if (this.currentActivity != null) {
                    EventBus.getDefault().post(new LockEvent());
                } else {
                    Log.e(TAG_APP, "No activity");
                }
            }
        }
    }

    public void onTerminate() {
        Companion.getInjector().getAtmsManager();
        AtmsManager.onDestroy();
        super.onTerminate();
    }

    public final void widgetUpdate() {
        Context context = this;
        Intent intent = new Intent(context, RocketWidgetProvider.class);
        intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
        intent.putExtra("appWidgetIds", AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, RocketWidgetProvider.class)));
        sendBroadcast(intent);
    }

    public final Activity getCurrentActivity() {
        return this.currentActivity;
    }
}
