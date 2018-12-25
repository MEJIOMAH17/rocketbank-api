package ru.rocketbank.core.realm;

import android.os.Build;
import android.os.Build.VERSION;
import io.realm.DeviceInfoDataRealmProxyInterface;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
import ru.rocketbank.r2d2.BuildConfig;

/* compiled from: DeviceInfoData.kt */
public class DeviceInfoData extends RealmObject implements DeviceInfoDataRealmProxyInterface {
    private String activation;
    private String androidId;
    private final String appVersion;
    private String deviceId;
    private final String deviceName;
    private final String deviceOs;
    private long id;

    public String realmGet$activation() {
        return this.activation;
    }

    public String realmGet$androidId() {
        return this.androidId;
    }

    public String realmGet$deviceId() {
        return this.deviceId;
    }

    public long realmGet$id() {
        return this.id;
    }

    public void realmSet$activation(String str) {
        this.activation = str;
    }

    public void realmSet$androidId(String str) {
        this.androidId = str;
    }

    public void realmSet$deviceId(String str) {
        this.deviceId = str;
    }

    public void realmSet$id(long j) {
        this.id = j;
    }

    public DeviceInfoData() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        this.appVersion = BuildConfig.VERSION_NAME;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Build.MANUFACTURER);
        stringBuilder.append(" ");
        stringBuilder.append(Build.MODEL);
        this.deviceName = stringBuilder.toString();
        stringBuilder = new StringBuilder("Android ");
        stringBuilder.append(VERSION.RELEASE);
        this.deviceOs = stringBuilder.toString();
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final String getDeviceOs() {
        return this.deviceOs;
    }
}
