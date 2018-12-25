package io.fabric.sdk.android;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.v7.cardview.C0943R.dimen;
import android.support.v7.recyclerview.C0945R.id;
import bolts.AppLinkNavigation;
import com.appsflyer.AdvertisingIdClient;
import com.facebook.appevents.AppEventsConstants;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.settings.CreateAppSpiCall;
import io.fabric.sdk.android.services.settings.IconRequest;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.UpdateAppSpiCall;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

final class Onboarding extends Kit<Boolean> {
    private String applicationLabel;
    private String installerPackageName;
    private final Future<Map<String, dimen>> kitsFinder;
    private PackageInfo packageInfo;
    private PackageManager packageManager;
    private String packageName;
    private final Collection<Kit> providedKits;
    private final HttpRequestFactory requestFactory = new DefaultHttpRequestFactory();
    private String targetAndroidSdkVersion;
    private String versionCode;
    private String versionName;

    public final String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    public final String getVersion() {
        return "1.4.2.22";
    }

    public Onboarding(Future<Map<String, dimen>> future, Collection<Kit> collection) {
        this.kitsFinder = future;
        this.providedKits = collection;
    }

    private AdvertisingIdClient retrieveSettingsData$694ccaae() {
        try {
            Settings.getInstance().initialize(this, this.idManager, this.requestFactory, this.versionCode, this.versionName, CommonUtils.getStringsFileValue(this.context, "com.crashlytics.ApiEndpoint")).loadSettingsData();
            return Settings.getInstance().awaitSettingsData$694ccaae();
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("Fabric", "Error dealing with settings", e);
            return null;
        }
    }

    private static Map<String, dimen> mergeKits(Map<String, dimen> map, Collection<Kit> collection) {
        for (Kit kit : collection) {
            if (!map.containsKey(kit.getIdentifier())) {
                map.put(kit.getIdentifier(), new dimen(kit.getIdentifier(), kit.getVersion(), "binary"));
            }
        }
        return map;
    }

    protected final boolean onPreExecute() {
        try {
            this.installerPackageName = this.idManager.getInstallerPackageName();
            this.packageManager = this.context.getPackageManager();
            this.packageName = this.context.getPackageName();
            this.packageInfo = this.packageManager.getPackageInfo(this.packageName, 0);
            this.versionCode = Integer.toString(this.packageInfo.versionCode);
            this.versionName = this.packageInfo.versionName == null ? IdManager.DEFAULT_VERSION_NAME : this.packageInfo.versionName;
            this.applicationLabel = this.packageManager.getApplicationLabel(this.context.getApplicationInfo()).toString();
            this.targetAndroidSdkVersion = Integer.toString(this.context.getApplicationInfo().targetSdkVersion);
            return true;
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("Fabric", "Failed init", e);
            return false;
        }
    }

    private Boolean doInBackground() {
        String appIconHashOrNull = CommonUtils.getAppIconHashOrNull(this.context);
        AdvertisingIdClient retrieveSettingsData$694ccaae = retrieveSettingsData$694ccaae();
        boolean z = false;
        if (retrieveSettingsData$694ccaae != null) {
            try {
                Map map;
                boolean loadSettingsSkippingCache;
                if (this.kitsFinder != null) {
                    map = (Map) this.kitsFinder.get();
                } else {
                    map = new HashMap();
                }
                map = mergeKits(map, this.providedKits);
                AppLinkNavigation appLinkNavigation = retrieveSettingsData$694ccaae.appData$13257fb6;
                Collection values = map.values();
                if ("new".equals(appLinkNavigation.status)) {
                    if (new CreateAppSpiCall(this, CommonUtils.getStringsFileValue(this.context, "com.crashlytics.ApiEndpoint"), appLinkNavigation.url, this.requestFactory).invoke$42569de1(buildAppRequest$3a820104(IconRequest.build(this.context, appIconHashOrNull), values))) {
                        loadSettingsSkippingCache = Settings.getInstance().loadSettingsSkippingCache();
                    } else {
                        Fabric.getLogger().mo771e("Fabric", "Failed to create app with Crashlytics service.", null);
                    }
                } else if ("configured".equals(appLinkNavigation.status)) {
                    loadSettingsSkippingCache = Settings.getInstance().loadSettingsSkippingCache();
                } else {
                    if (appLinkNavigation.updateRequired) {
                        Fabric.getLogger().mo768d("Fabric", "Server says an update is required - forcing a full App update.");
                        new UpdateAppSpiCall(this, CommonUtils.getStringsFileValue(this.context, "com.crashlytics.ApiEndpoint"), appLinkNavigation.url, this.requestFactory).invoke$42569de1(buildAppRequest$3a820104(IconRequest.build(this.context, appIconHashOrNull), values));
                    }
                    z = true;
                }
                z = loadSettingsSkippingCache;
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("Fabric", "Error performing auto configuration.", e);
            }
        }
        return Boolean.valueOf(z);
    }

    private id buildAppRequest$3a820104(IconRequest iconRequest, Collection<dimen> collection) {
        return new id(new ApiKey().getValue(this.context), this.idManager.getAppIdentifier(), this.versionName, this.versionCode, CommonUtils.createInstanceIdFrom(CommonUtils.resolveBuildId(r1)), this.applicationLabel, DeliveryMechanism.determineFrom(this.installerPackageName).getId(), this.targetAndroidSdkVersion, AppEventsConstants.EVENT_PARAM_VALUE_NO, iconRequest, collection);
    }
}
