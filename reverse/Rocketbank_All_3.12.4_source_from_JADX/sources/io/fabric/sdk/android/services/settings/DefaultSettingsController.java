package io.fabric.sdk.android.services.settings;

import android.content.SharedPreferences.Editor;
import com.appsflyer.AdvertisingIdClient;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import org.json.JSONObject;

final class DefaultSettingsController implements SettingsController {
    private final CachedSettingsIo cachedSettingsIo;
    private final CurrentTimeProvider currentTimeProvider;
    private final Kit kit;
    private final PreferenceStore preferenceStore = new PreferenceStoreImpl(this.kit);
    private final SettingsJsonTransform settingsJsonTransform;
    private final TransformationUtils settingsRequest$7042c24c;
    private final SettingsSpiCall settingsSpiCall;

    public DefaultSettingsController(Kit kit, TransformationUtils transformationUtils, CurrentTimeProvider currentTimeProvider, SettingsJsonTransform settingsJsonTransform, CachedSettingsIo cachedSettingsIo, SettingsSpiCall settingsSpiCall) {
        this.kit = kit;
        this.settingsRequest$7042c24c = transformationUtils;
        this.currentTimeProvider = currentTimeProvider;
        this.settingsJsonTransform = settingsJsonTransform;
        this.cachedSettingsIo = cachedSettingsIo;
        this.settingsSpiCall = settingsSpiCall;
    }

    public final AdvertisingIdClient loadSettingsData$694ccaae() {
        return loadSettingsData$177dbb3b(SettingsCacheBehavior.USE_CACHE);
    }

    public final AdvertisingIdClient loadSettingsData$177dbb3b(SettingsCacheBehavior settingsCacheBehavior) {
        SettingsCacheBehavior settingsCacheBehavior2 = null;
        AdvertisingIdClient buildFromJson$2b2c1559;
        try {
            Fabric.isDebuggable();
            if ((this.preferenceStore.get().getString("existing_instance_identifier", "").equals(CommonUtils.createInstanceIdFrom(CommonUtils.resolveBuildId(this.kit.getContext()))) ^ 1) == 0) {
                settingsCacheBehavior2 = getCachedSettingsData$177dbb3b(settingsCacheBehavior);
            }
            if (settingsCacheBehavior2 == null) {
                settingsCacheBehavior = this.settingsSpiCall.invoke$4f9b8621(this.settingsRequest$7042c24c);
                if (settingsCacheBehavior != null) {
                    buildFromJson$2b2c1559 = this.settingsJsonTransform.buildFromJson$2b2c1559(this.currentTimeProvider, settingsCacheBehavior);
                    try {
                        this.cachedSettingsIo.writeCachedSettings(buildFromJson$2b2c1559.expiresAtMillis, settingsCacheBehavior);
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Loaded settings: ");
                        stringBuilder.append(settingsCacheBehavior.toString());
                        Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
                        settingsCacheBehavior = CommonUtils.createInstanceIdFrom(new String[]{CommonUtils.resolveBuildId(this.kit.getContext())});
                        Editor edit = this.preferenceStore.edit();
                        edit.putString("existing_instance_identifier", settingsCacheBehavior);
                        this.preferenceStore.save(edit);
                        settingsCacheBehavior2 = buildFromJson$2b2c1559;
                    } catch (Exception e) {
                        settingsCacheBehavior = e;
                        Fabric.getLogger().mo771e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", settingsCacheBehavior);
                        return buildFromJson$2b2c1559;
                    }
                }
            }
            return settingsCacheBehavior2 == null ? getCachedSettingsData$177dbb3b(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION) : settingsCacheBehavior2;
        } catch (Exception e2) {
            settingsCacheBehavior = e2;
            buildFromJson$2b2c1559 = settingsCacheBehavior2;
            Fabric.getLogger().mo771e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", settingsCacheBehavior);
            return buildFromJson$2b2c1559;
        }
    }

    private AdvertisingIdClient getCachedSettingsData$177dbb3b(SettingsCacheBehavior settingsCacheBehavior) {
        AdvertisingIdClient advertisingIdClient = null;
        try {
            if (SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                return null;
            }
            JSONObject readCachedSettings = this.cachedSettingsIo.readCachedSettings();
            if (readCachedSettings != null) {
                AdvertisingIdClient buildFromJson$2b2c1559 = this.settingsJsonTransform.buildFromJson$2b2c1559(this.currentTimeProvider, readCachedSettings);
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Loaded cached settings: ");
                stringBuilder.append(readCachedSettings.toString());
                Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
                long currentTimeMillis = this.currentTimeProvider.getCurrentTimeMillis();
                if (SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) == null) {
                    if ((buildFromJson$2b2c1559.expiresAtMillis < currentTimeMillis ? true : null) != null) {
                        Fabric.getLogger().mo768d("Fabric", "Cached settings have expired.");
                        return null;
                    }
                }
                try {
                    Fabric.getLogger().mo768d("Fabric", "Returning cached settings.");
                    return buildFromJson$2b2c1559;
                } catch (Exception e) {
                    settingsCacheBehavior = e;
                    advertisingIdClient = buildFromJson$2b2c1559;
                    Fabric.getLogger().mo771e("Fabric", "Failed to get cached settings", settingsCacheBehavior);
                    return advertisingIdClient;
                }
            }
            Fabric.getLogger().mo768d("Fabric", "No cached settings data found.");
            return null;
        } catch (Exception e2) {
            settingsCacheBehavior = e2;
            Fabric.getLogger().mo771e("Fabric", "Failed to get cached settings", settingsCacheBehavior);
            return advertisingIdClient;
        }
    }
}
