package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.android.databinding.library.C0291R;
import com.appsflyer.AdvertisingIdClient;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.common.DeviceIdentifierProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.Settings;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public final class Beta extends Kit<Boolean> implements DeviceIdentifierProvider {
    private final MemoryValueCache<String> deviceTokenCache = new MemoryValueCache();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    public final String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    public final String getVersion() {
        return "1.2.7.19";
    }

    @TargetApi(14)
    protected final boolean onPreExecute() {
        UpdatesController activityLifecycleCheckForUpdatesController;
        getContext().getApplicationContext();
        if (VERSION.SDK_INT >= 14) {
            activityLifecycleCheckForUpdatesController = new ActivityLifecycleCheckForUpdatesController(getFabric().getActivityLifecycleManager(), getFabric().getExecutorService());
        } else {
            activityLifecycleCheckForUpdatesController = new ImmediateCheckForUpdatesController();
        }
        this.updatesController = activityLifecycleCheckForUpdatesController;
        return true;
    }

    public final Map<DeviceIdentifierType, String> getDeviceIdentifiers() {
        getIdManager().getInstallerPackageName();
        CharSequence betaDeviceToken$5b1592bd = getBetaDeviceToken$5b1592bd(getContext());
        Map<DeviceIdentifierType, String> hashMap = new HashMap();
        if (!TextUtils.isEmpty(betaDeviceToken$5b1592bd)) {
            hashMap.put(DeviceIdentifierType.FONT_TOKEN, betaDeviceToken$5b1592bd);
        }
        return hashMap;
    }

    private String getBetaDeviceToken$5b1592bd(Context context) {
        Object obj = null;
        try {
            String str = (String) this.deviceTokenCache.get(context, this.deviceTokenLoader);
            if (!"".equals(str)) {
                obj = str;
            }
        } catch (Context context2) {
            Fabric.getLogger().mo771e("Beta", "Failed to load the Beta device token", context2);
        }
        StringBuilder stringBuilder = new StringBuilder("Beta device token present: ");
        stringBuilder.append(TextUtils.isEmpty(obj) ^ 1);
        Fabric.getLogger().mo768d("Beta", stringBuilder.toString());
        return obj;
    }

    private static BuildProperties loadBuildProperties(Context context) {
        BuildProperties buildProperties;
        Throwable th;
        BuildProperties buildProperties2 = null;
        try {
            context = context.getAssets().open("crashlytics-build.properties");
            if (context != null) {
                try {
                    Properties properties = new Properties();
                    properties.load(context);
                    buildProperties = new BuildProperties(properties.getProperty("version_code"), properties.getProperty("version_name"), properties.getProperty("build_id"), properties.getProperty("package_name"));
                } catch (Throwable e) {
                    buildProperties = null;
                    th = e;
                    try {
                        Fabric.getLogger().mo771e("Beta", "Error reading Beta build properties", th);
                        if (context != null) {
                            try {
                                context.close();
                            } catch (Context context2) {
                                Fabric.getLogger().mo771e("Beta", "Error closing Beta build properties asset", context2);
                            }
                        }
                        return buildProperties;
                    } catch (Throwable th2) {
                        th = th2;
                        if (context2 != null) {
                            try {
                                context2.close();
                            } catch (Context context22) {
                                Fabric.getLogger().mo771e("Beta", "Error closing Beta build properties asset", context22);
                            }
                        }
                        throw th;
                    }
                }
                try {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(buildProperties.packageName);
                    stringBuilder.append(" build properties: ");
                    stringBuilder.append(buildProperties.versionName);
                    stringBuilder.append(" (");
                    stringBuilder.append(buildProperties.versionCode);
                    stringBuilder.append(") - ");
                    stringBuilder.append(buildProperties.buildId);
                    Fabric.getLogger().mo768d("Beta", stringBuilder.toString());
                    buildProperties2 = buildProperties;
                } catch (Exception e2) {
                    th = e2;
                    Fabric.getLogger().mo771e("Beta", "Error reading Beta build properties", th);
                    if (context22 != null) {
                        context22.close();
                    }
                    return buildProperties;
                }
            }
            if (context22 == null) {
                return buildProperties2;
            }
            try {
                context22.close();
                return buildProperties2;
            } catch (Context context222) {
                Fabric.getLogger().mo771e("Beta", "Error closing Beta build properties asset", context222);
                return buildProperties2;
            }
        } catch (Context context2222) {
            buildProperties = null;
            th = context2222;
            context2222 = buildProperties;
            Fabric.getLogger().mo771e("Beta", "Error reading Beta build properties", th);
            if (context2222 != null) {
                context2222.close();
            }
            return buildProperties;
        } catch (Context context22222) {
            th = context22222;
            context22222 = null;
            if (context22222 != null) {
                context22222.close();
            }
            throw th;
        }
    }

    protected final /* bridge */ /* synthetic */ Object doInBackground() {
        Fabric.getLogger().mo768d("Beta", "Beta kit initializing...");
        Context context = getContext();
        IdManager idManager = getIdManager();
        idManager.getInstallerPackageName();
        if (TextUtils.isEmpty(getBetaDeviceToken$5b1592bd(context))) {
            Fabric.getLogger().mo768d("Beta", "A Beta device token was not found for this app");
            return Boolean.FALSE;
        }
        C0291R c0291r;
        Fabric.getLogger().mo768d("Beta", "Beta device token is present, checking for app updates.");
        AdvertisingIdClient awaitSettingsData$694ccaae = Settings.getInstance().awaitSettingsData$694ccaae();
        if (awaitSettingsData$694ccaae != null) {
            c0291r = awaitSettingsData$694ccaae.betaSettingsData$1b8c5181;
        } else {
            c0291r = null;
        }
        C0291R c0291r2 = c0291r;
        BuildProperties loadBuildProperties = loadBuildProperties(context);
        Object obj = (c0291r2 == null || TextUtils.isEmpty(c0291r2.updateUrl) || loadBuildProperties == null) ? null : 1;
        if (obj != null) {
            this.updatesController.initialize$c689b02(context, this, idManager, c0291r2, loadBuildProperties, new PreferenceStoreImpl(this), new SystemCurrentTimeProvider(), new DefaultHttpRequestFactory(Fabric.getLogger()));
        }
        return Boolean.TRUE;
    }
}
