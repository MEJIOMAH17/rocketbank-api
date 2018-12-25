package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

public class IdManager {
    private static final String BAD_ANDROID_ID = "9774d56d682e549c";
    public static final String COLLECT_DEVICE_IDENTIFIERS = "com.crashlytics.CollectDeviceIdentifiers";
    public static final String COLLECT_USER_IDENTIFIERS = "com.crashlytics.CollectUserIdentifiers";
    public static final String DEFAULT_VERSION_NAME = "0.0";
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    static final String PREFKEY_ADVERTISING_ID = "crashlytics.advertising.id";
    private static final String PREFKEY_INSTALLATION_UUID = "crashlytics.installation.id";
    AdvertisingInfo advertisingInfo;
    AdvertisingInfoProvider advertisingInfoProvider;
    private final Context appContext;
    private final String appIdentifier;
    private final String appInstallIdentifier;
    private final boolean collectHardwareIds;
    private final boolean collectUserIds;
    boolean fetchedAdvertisingInfo;
    FirebaseInfo firebaseInfo;
    private final ReentrantLock installationIdLock = new ReentrantLock();
    private final InstallerPackageNameProvider installerPackageNameProvider;
    private final Collection<Kit> kits;

    public enum DeviceIdentifierType {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);
        
        public final int protobufIndex;

        private DeviceIdentifierType(int i) {
            this.protobufIndex = i;
        }
    }

    @Deprecated
    public String createIdHeaderValue(String str, String str2) {
        return "";
    }

    @Deprecated
    public String getBluetoothMacAddress() {
        return null;
    }

    @Deprecated
    public String getSerialNumber() {
        return null;
    }

    @Deprecated
    public String getTelephonyId() {
        return null;
    }

    @Deprecated
    public String getWifiMacAddress() {
        return null;
    }

    public IdManager(Context context, String str, String str2, Collection<Kit> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        } else if (collection == null) {
            throw new IllegalArgumentException("kits must not be null");
        } else {
            this.appContext = context;
            this.appIdentifier = str;
            this.appInstallIdentifier = str2;
            this.kits = collection;
            this.installerPackageNameProvider = new InstallerPackageNameProvider();
            this.advertisingInfoProvider = new AdvertisingInfoProvider(context);
            this.firebaseInfo = new FirebaseInfo();
            this.collectHardwareIds = CommonUtils.getBooleanResourceValue(context, COLLECT_DEVICE_IDENTIFIERS, true);
            if (this.collectHardwareIds == null) {
                StringBuilder stringBuilder = new StringBuilder("Device ID collection disabled for ");
                stringBuilder.append(context.getPackageName());
                Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
            }
            this.collectUserIds = CommonUtils.getBooleanResourceValue(context, COLLECT_USER_IDENTIFIERS, true);
            if (this.collectUserIds == null) {
                collection = new StringBuilder("User information collection disabled for ");
                collection.append(context.getPackageName());
                Fabric.getLogger().mo768d("Fabric", collection.toString());
            }
        }
    }

    public boolean canCollectUserIds() {
        return this.collectUserIds;
    }

    private String formatId(String str) {
        return str == null ? null : ID_PATTERN.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    public String getAppInstallIdentifier() {
        String str = this.appInstallIdentifier;
        if (str != null) {
            return str;
        }
        SharedPreferences sharedPrefs = CommonUtils.getSharedPrefs(this.appContext);
        checkAdvertisingIdRotation(sharedPrefs);
        String string = sharedPrefs.getString(PREFKEY_INSTALLATION_UUID, null);
        return string == null ? createInstallationUUID(sharedPrefs) : string;
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getOsVersionString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getOsDisplayVersionString());
        stringBuilder.append("/");
        stringBuilder.append(getOsBuildVersionString());
        return stringBuilder.toString();
    }

    public String getOsDisplayVersionString() {
        return removeForwardSlashesIn(VERSION.RELEASE);
    }

    public String getOsBuildVersionString() {
        return removeForwardSlashesIn(VERSION.INCREMENTAL);
    }

    public String getModelName() {
        return String.format(Locale.US, "%s/%s", new Object[]{removeForwardSlashesIn(Build.MANUFACTURER), removeForwardSlashesIn(Build.MODEL)});
    }

    private String removeForwardSlashesIn(String str) {
        return str.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    @SuppressLint({"CommitPrefEdits"})
    private String createInstallationUUID(SharedPreferences sharedPreferences) {
        this.installationIdLock.lock();
        try {
            String string = sharedPreferences.getString(PREFKEY_INSTALLATION_UUID, null);
            if (string == null) {
                string = formatId(UUID.randomUUID().toString());
                sharedPreferences.edit().putString(PREFKEY_INSTALLATION_UUID, string).commit();
            }
            this.installationIdLock.unlock();
            return string;
        } catch (Throwable th) {
            this.installationIdLock.unlock();
        }
    }

    private void checkAdvertisingIdRotation(SharedPreferences sharedPreferences) {
        AdvertisingInfo advertisingInfo = getAdvertisingInfo();
        if (advertisingInfo != null) {
            flushInstallationIdIfNecessary(sharedPreferences, advertisingInfo.advertisingId);
        }
    }

    @SuppressLint({"CommitPrefEdits"})
    private void flushInstallationIdIfNecessary(SharedPreferences sharedPreferences, String str) {
        this.installationIdLock.lock();
        try {
            if (!TextUtils.isEmpty(str)) {
                Object string = sharedPreferences.getString(PREFKEY_ADVERTISING_ID, null);
                if (TextUtils.isEmpty(string)) {
                    sharedPreferences.edit().putString(PREFKEY_ADVERTISING_ID, str).commit();
                } else if (!string.equals(str)) {
                    sharedPreferences.edit().remove(PREFKEY_INSTALLATION_UUID).putString(PREFKEY_ADVERTISING_ID, str).commit();
                }
                this.installationIdLock.unlock();
            }
        } finally {
            this.installationIdLock.unlock();
        }
    }

    public Map<DeviceIdentifierType, String> getDeviceIdentifiers() {
        Map hashMap = new HashMap();
        for (Kit kit : this.kits) {
            if (kit instanceof DeviceIdentifierProvider) {
                for (Entry entry : ((DeviceIdentifierProvider) kit).getDeviceIdentifiers().entrySet()) {
                    putNonNullIdInto(hashMap, (DeviceIdentifierType) entry.getKey(), (String) entry.getValue());
                }
            }
        }
        Object advertisingId = getAdvertisingId();
        if (TextUtils.isEmpty(advertisingId)) {
            putNonNullIdInto(hashMap, DeviceIdentifierType.ANDROID_ID, getAndroidId());
        } else {
            putNonNullIdInto(hashMap, DeviceIdentifierType.ANDROID_ADVERTISING_ID, advertisingId);
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public String getInstallerPackageName() {
        return this.installerPackageNameProvider.getInstallerPackageName(this.appContext);
    }

    public Boolean isLimitAdTrackingEnabled() {
        return shouldCollectHardwareIds() ? explicitCheckLimitAdTracking() : null;
    }

    public String getAdvertisingId() {
        if (shouldCollectHardwareIds()) {
            AdvertisingInfo advertisingInfo = getAdvertisingInfo();
            if (!(advertisingInfo == null || advertisingInfo.limitAdTrackingEnabled)) {
                return advertisingInfo.advertisingId;
            }
        }
        return null;
    }

    private void putNonNullIdInto(Map<DeviceIdentifierType, String> map, DeviceIdentifierType deviceIdentifierType, String str) {
        if (str != null) {
            map.put(deviceIdentifierType, str);
        }
    }

    public String getAndroidId() {
        boolean equals = Boolean.TRUE.equals(explicitCheckLimitAdTracking());
        if (shouldCollectHardwareIds() && !equals) {
            String string = Secure.getString(this.appContext.getContentResolver(), "android_id");
            if (!BAD_ANDROID_ID.equals(string)) {
                return formatId(string);
            }
        }
        return null;
    }

    protected boolean shouldCollectHardwareIds() {
        return this.collectHardwareIds && !this.firebaseInfo.isFirebaseCrashlyticsEnabled(this.appContext);
    }

    synchronized AdvertisingInfo getAdvertisingInfo() {
        if (!this.fetchedAdvertisingInfo) {
            this.advertisingInfo = this.advertisingInfoProvider.getAdvertisingInfo();
            this.fetchedAdvertisingInfo = true;
        }
        return this.advertisingInfo;
    }

    private Boolean explicitCheckLimitAdTracking() {
        AdvertisingInfo advertisingInfo = getAdvertisingInfo();
        return advertisingInfo != null ? Boolean.valueOf(advertisingInfo.limitAdTrackingEnabled) : null;
    }
}
