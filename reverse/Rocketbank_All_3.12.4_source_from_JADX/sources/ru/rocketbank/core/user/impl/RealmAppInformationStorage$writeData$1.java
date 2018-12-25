package ru.rocketbank.core.user.impl;

import io.realm.Realm;
import io.realm.Realm.Transaction;
import ru.rocketbank.core.realm.DeviceInfoData;

/* compiled from: RealmAppInformationStorage.kt */
final class RealmAppInformationStorage$writeData$1 implements Transaction {
    final /* synthetic */ DeviceInfoData $deviceData;
    final /* synthetic */ RealmAppInformationStorage this$0;

    RealmAppInformationStorage$writeData$1(RealmAppInformationStorage realmAppInformationStorage, DeviceInfoData deviceInfoData) {
        this.this$0 = realmAppInformationStorage;
        this.$deviceData = deviceInfoData;
    }

    public final void execute(Realm realm) {
        this.this$0.getRealm().copyToRealmOrUpdate(this.$deviceData);
    }
}
