package ru.rocketbank.core.user;

import ru.rocketbank.core.realm.DeviceInfoData;

/* compiled from: AppInformationStorage.kt */
public interface AppInformationStorage {
    DeviceInfoData readData();

    void writeData(DeviceInfoData deviceInfoData);
}
