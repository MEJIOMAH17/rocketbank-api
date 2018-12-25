package ru.rocketbank.core.user.impl;

import io.realm.RealmConfiguration;
import io.realm.RealmConfiguration.Builder;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.realm.DeviceInfoData;
import ru.rocketbank.core.realm.module.AppInfoModule;
import ru.rocketbank.core.user.AppInformationStorage;

/* compiled from: RealmAppInformationStorage.kt */
public final class RealmAppInformationStorage implements AppInformationStorage {
    private final KeyManager keyManager;
    private final RealmConfiguration realmConfiguration;

    public RealmAppInformationStorage(KeyManager keyManager) {
        Intrinsics.checkParameterIsNotNull(keyManager, "keyManager");
        this.keyManager = keyManager;
        keyManager = new Builder().name("dvc.realm");
        Object encoded = this.keyManager.getOrCreateKey("device-key").getEncoded();
        Intrinsics.checkExpressionValueIsNotNull(encoded, "keyManager.getOrCreateKey(\"device-key\").encoded");
        keyManager = keyManager.encryptionKey(encoded).schemaVersion(0).deleteRealmIfMigrationNeeded().modules(new AppInfoModule(), new Object[0]).build();
        Intrinsics.checkExpressionValueIsNotNull(keyManager, "RealmConfiguration.Build…\n                .build()");
        this.realmConfiguration = keyManager;
    }

    public final io.realm.Realm getRealm() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = r2.realmConfiguration;	 Catch:{ Throwable -> 0x000c }
        r0 = io.realm.Realm.getInstance(r0);	 Catch:{ Throwable -> 0x000c }
        r1 = "Realm.getInstance(realmConfiguration)";	 Catch:{ Throwable -> 0x000c }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);	 Catch:{ Throwable -> 0x000c }
        goto L_0x001c;
    L_0x000c:
        r0 = r2.realmConfiguration;
        io.realm.Realm.deleteRealm(r0);
        r0 = r2.realmConfiguration;
        r0 = io.realm.Realm.getInstance(r0);
        r1 = "Realm.getInstance(realmConfiguration)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
    L_0x001c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.impl.RealmAppInformationStorage.getRealm():io.realm.Realm");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final ru.rocketbank.core.realm.DeviceInfoData readData() {
        /*
        r4 = this;
        r0 = 0;
        r1 = r4.getRealm();	 Catch:{ Throwable -> 0x002a }
        r2 = ru.rocketbank.core.realm.DeviceInfoData.class;
        r1 = r1.where(r2);	 Catch:{ Throwable -> 0x002a }
        r1 = r1.findFirst();	 Catch:{ Throwable -> 0x002a }
        r1 = (ru.rocketbank.core.realm.DeviceInfoData) r1;	 Catch:{ Throwable -> 0x002a }
        if (r1 == 0) goto L_0x0020;
    L_0x0013:
        r2 = r4.getRealm();	 Catch:{ Throwable -> 0x002a }
        r1 = (io.realm.RealmModel) r1;	 Catch:{ Throwable -> 0x002a }
        r1 = r2.copyFromRealm(r1);	 Catch:{ Throwable -> 0x002a }
        r1 = (ru.rocketbank.core.realm.DeviceInfoData) r1;	 Catch:{ Throwable -> 0x002a }
        r0 = r1;
    L_0x0020:
        r1 = r4.getRealm();
        r1.close();
        return r0;
    L_0x0028:
        r0 = move-exception;
        goto L_0x003e;
    L_0x002a:
        r1 = move-exception;
        r2 = ru.rocketbank.core.user.impl.RealmWidgetStorage.Companion;	 Catch:{ all -> 0x0028 }
        r2 = ru.rocketbank.core.user.impl.RealmWidgetStorage.TAG;	 Catch:{ all -> 0x0028 }
        r3 = "failed to read storage";
        android.util.Log.e(r2, r3, r1);	 Catch:{ all -> 0x0028 }
        r1 = r4.getRealm();
        r1.close();
        return r0;
    L_0x003e:
        r1 = r4.getRealm();
        r1.close();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.impl.RealmAppInformationStorage.readData():ru.rocketbank.core.realm.DeviceInfoData");
    }

    public final void writeData(DeviceInfoData deviceInfoData) {
        Intrinsics.checkParameterIsNotNull(deviceInfoData, "deviceData");
        try {
            getRealm().executeTransaction(new RealmAppInformationStorage$writeData$1(this, deviceInfoData));
        } catch (Throwable th) {
            getRealm().close();
        }
        getRealm().close();
    }
}
