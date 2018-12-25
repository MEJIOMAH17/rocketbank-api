package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Looper;
import android.support.v7.recyclerview.C0945R.dimen;
import com.appsflyer.AdvertisingIdClient;
import com.crashlytics.android.answers.AnswersEventsHandler.C03051;
import com.crashlytics.android.answers.AnswersEventsHandler.C03062;
import io.fabric.sdk.android.ActivityLifecycleManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.Crash.FatalException;
import io.fabric.sdk.android.services.common.Crash.LoggedException;
import io.fabric.sdk.android.services.common.ExecutorUtils;
import io.fabric.sdk.android.services.common.FirebaseInfo;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.Settings;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

public class Answers extends Kit<Boolean> {
    SessionAnalyticsManager analyticsManager;
    boolean firebaseEnabled = false;

    public final String getIdentifier() {
        return "com.crashlytics.sdk.android:answers";
    }

    public final String getVersion() {
        return "1.4.1.19";
    }

    public static Answers getInstance() {
        return (Answers) Fabric.getKit(Answers.class);
    }

    public final void logCustom(CustomEvent customEvent) {
        if (this.firebaseEnabled) {
            StringBuilder stringBuilder = new StringBuilder("Method ");
            stringBuilder.append("logCustom");
            stringBuilder.append(" is not supported when using Crashlytics through Firebase.");
            Fabric.getLogger().mo776w("Answers", stringBuilder.toString());
            return;
        }
        if (this.analyticsManager != null) {
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            Fabric.getLogger().mo768d("Answers", "Logged custom event: ".concat(String.valueOf(customEvent)));
            AnswersEventsHandler answersEventsHandler = sessionAnalyticsManager.eventsHandler;
            Builder builder = new Builder(Type.CUSTOM);
            builder.customType = customEvent.getCustomType();
            builder.customAttributes = customEvent.customAttributes.attributes;
            answersEventsHandler.processEventAsync(builder);
        }
    }

    public final void logLogin(LoginEvent loginEvent) {
        if (loginEvent == null) {
            throw new NullPointerException("event must not be null");
        } else if (this.firebaseEnabled) {
            StringBuilder stringBuilder = new StringBuilder("Method ");
            stringBuilder.append("logLogin");
            stringBuilder.append(" is not supported when using Crashlytics through Firebase.");
            Fabric.getLogger().mo776w("Answers", stringBuilder.toString());
        } else {
            if (this.analyticsManager != null) {
                SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
                Fabric.getLogger().mo768d("Answers", "Logged predefined event: ".concat(String.valueOf(loginEvent)));
                AnswersEventsHandler answersEventsHandler = sessionAnalyticsManager.eventsHandler;
                Builder builder = new Builder(Type.PREDEFINED);
                builder.predefinedType = loginEvent.getPredefinedType();
                builder.predefinedAttributes = loginEvent.predefinedAttributes.attributes;
                builder.customAttributes = loginEvent.customAttributes.attributes;
                answersEventsHandler.processEventAsync(builder);
            }
        }
    }

    public final void onException(LoggedException loggedException) {
        if (this.analyticsManager != null) {
            loggedException.getSessionId();
        }
    }

    public final void onException(FatalException fatalException) {
        if (this.analyticsManager != null) {
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            String sessionId = fatalException.getSessionId();
            fatalException = fatalException.getExceptionName();
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalStateException("onCrash called from main thread!!!");
            }
            Fabric.getLogger().mo768d("Answers", "Logged crash");
            AnswersEventsHandler answersEventsHandler = sessionAnalyticsManager.eventsHandler;
            Map singletonMap = Collections.singletonMap("sessionId", sessionId);
            Builder builder = new Builder(Type.CRASH);
            builder.details = singletonMap;
            builder.customAttributes = Collections.singletonMap("exceptionName", fatalException);
            try {
                answersEventsHandler.executor.submit(new Runnable(builder, false) {
                    public final void run() {
                        try {
                            AnswersEventsHandler.this.strategy.processEvent(r4);
                            if (false) {
                                AnswersEventsHandler.this.strategy.rollFileOver();
                            }
                        } catch (Throwable e) {
                            Fabric.getLogger().mo771e("Answers", "Failed to process event", e);
                        }
                    }
                }).get();
            } catch (FatalException fatalException2) {
                Fabric.getLogger().mo771e("Answers", "Failed to run events task", fatalException2);
            }
        }
    }

    @SuppressLint({"NewApi"})
    protected final boolean onPreExecute() {
        Kit kit = this;
        try {
            long j;
            Context context = getContext();
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            String num = Integer.toString(packageInfo.versionCode);
            String str = packageInfo.versionName == null ? IdManager.DEFAULT_VERSION_NAME : packageInfo.versionName;
            if (VERSION.SDK_INT >= 9) {
                j = packageInfo.firstInstallTime;
            } else {
                j = new File(packageManager.getApplicationInfo(packageName, 0).sourceDir).lastModified();
            }
            long j2 = j;
            SessionMetadataCollector sessionMetadataCollector = new SessionMetadataCollector(context, getIdManager(), num, str);
            AnswersFilesManagerProvider answersFilesManagerProvider = new AnswersFilesManagerProvider(context, new FileStoreImpl(kit));
            DefaultHttpRequestFactory defaultHttpRequestFactory = new DefaultHttpRequestFactory(Fabric.getLogger());
            ActivityLifecycleManager activityLifecycleManager = new ActivityLifecycleManager(context);
            ScheduledExecutorService buildSingleThreadScheduledExecutorService = ExecutorUtils.buildSingleThreadScheduledExecutorService("Answers Events Handler");
            kit.analyticsManager = new SessionAnalyticsManager(new AnswersEventsHandler(kit, context, answersFilesManagerProvider, sessionMetadataCollector, defaultHttpRequestFactory, buildSingleThreadScheduledExecutorService, new FirebaseAnalyticsApiAdapter(context)), activityLifecycleManager, new BackgroundManager(buildSingleThreadScheduledExecutorService), new AnswersPreferenceManager(new PreferenceStoreImpl(context, "settings")), j2);
            kit.analyticsManager.enable();
            kit.firebaseEnabled = new FirebaseInfo().isFirebaseCrashlyticsEnabled(context);
            return true;
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("Answers", "Error retrieving app properties", e);
            return false;
        }
    }

    private Boolean doInBackground() {
        try {
            AdvertisingIdClient awaitSettingsData$694ccaae = Settings.getInstance().awaitSettingsData$694ccaae();
            if (awaitSettingsData$694ccaae == null) {
                Fabric.getLogger().mo770e("Answers", "Failed to retrieve settings");
                return Boolean.FALSE;
            } else if (awaitSettingsData$694ccaae.featuresData$60521ed4.collectAnalytics) {
                Fabric.getLogger().mo768d("Answers", "Analytics collection enabled");
                SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
                dimen dimen = awaitSettingsData$694ccaae.analyticsSettingsData$e9546bb;
                String stringsFileValue = CommonUtils.getStringsFileValue(getContext(), "com.crashlytics.ApiEndpoint");
                sessionAnalyticsManager.backgroundManager.setFlushOnBackground(dimen.flushOnBackground);
                AnswersEventsHandler answersEventsHandler = sessionAnalyticsManager.eventsHandler;
                try {
                    answersEventsHandler.executor.submit(new C03051(dimen, stringsFileValue));
                } catch (Throwable e) {
                    Fabric.getLogger().mo771e("Answers", "Failed to submit events task", e);
                }
                return Boolean.TRUE;
            } else {
                Fabric.getLogger().mo768d("Answers", "Analytics collection disabled");
                SessionAnalyticsManager sessionAnalyticsManager2 = this.analyticsManager;
                sessionAnalyticsManager2.lifecycleManager.resetCallbacks();
                AnswersEventsHandler answersEventsHandler2 = sessionAnalyticsManager2.eventsHandler;
                try {
                    answersEventsHandler2.executor.submit(new C03062());
                } catch (Throwable e2) {
                    Fabric.getLogger().mo771e("Answers", "Failed to submit events task", e2);
                }
                return Boolean.FALSE;
            }
        } catch (Throwable e22) {
            Fabric.getLogger().mo771e("Answers", "Error dealing with settings", e22);
            return Boolean.FALSE;
        }
    }
}
