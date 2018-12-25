package ru.rocketbank.core.manager;

import android.content.Context;
import android.provider.Settings.Secure;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.realm.DeviceInfoData;
import ru.rocketbank.core.user.AppInformationStorage;

/* compiled from: AppInfoManager.kt */
public final class AppInfoManager {
    private final String androidId;
    private final AppInformationStorage appInfoStorage;
    private DeviceInfoData cachedData;

    public AppInfoManager(Context context, AppInformationStorage appInformationStorage) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(appInformationStorage, "appInfoStorage");
        this.appInfoStorage = appInformationStorage;
        context = Secure.getString(context.getContentResolver(), "android_id");
        if (context == null) {
            context = "";
        }
        this.androidId = context;
        this.cachedData = getDeviceData();
    }

    public final void resetDeviceToNew() {
        this.appInfoStorage.writeData(generateDeviceData());
    }

    public final DeviceInfoData getDeviceData() {
        DeviceInfoData deviceInfoData = this.cachedData;
        if (deviceInfoData != null) {
            return deviceInfoData;
        }
        this.cachedData = this.appInfoStorage.readData();
        deviceInfoData = this.cachedData;
        if (deviceInfoData == null) {
            deviceInfoData = new DeviceInfoData();
        }
        return deviceInfoData;
    }

    public final void updateDeviceData(DeviceInfoData deviceInfoData) {
        Intrinsics.checkParameterIsNotNull(deviceInfoData, "deviceInfoData");
        this.cachedData = deviceInfoData;
        this.appInfoStorage.writeData(deviceInfoData);
    }

    public final DeviceInfoData generateDeviceData() {
        DeviceInfoData deviceInfoData = new DeviceInfoData();
        String format = new SimpleDateFormat("yyyy-ww", Locale.US).format(new Date());
        StringBuilder stringBuilder = new StringBuilder("ANDROID_");
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(this.androidId);
        stringBuilder2.append("_");
        stringBuilder2.append(UUID.randomUUID().toString());
        String stringBuilder3 = stringBuilder2.toString();
        if (stringBuilder3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        stringBuilder3 = stringBuilder3.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder3, "(this as java.lang.String).toUpperCase()");
        stringBuilder.append(stringBuilder3);
        String stringBuilder4 = stringBuilder.toString();
        deviceInfoData.realmSet$activation(format);
        deviceInfoData.realmSet$androidId(this.androidId);
        deviceInfoData.realmSet$deviceId(stringBuilder4);
        return deviceInfoData;
    }
}
