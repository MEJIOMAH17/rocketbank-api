package ru.rocketbank.core.user.impl;

import android.util.Log;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmConfiguration.Builder;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.realm.module.UserModule;
import ru.rocketbank.core.user.AuthorizationStorage;

/* compiled from: RealmAuthStorage.kt */
public final class RealmAuthStorage implements AuthorizationStorage {
    public static final Companion Companion = new Companion();
    private static final String TAG = "RealmAuthStorage";
    private final KeyManager keyManager;
    private UserData userData = readState();

    /* compiled from: RealmAuthStorage.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RealmAuthStorage(KeyManager keyManager) {
        Intrinsics.checkParameterIsNotNull(keyManager, "keyManager");
        this.keyManager = keyManager;
    }

    private final RealmConfiguration getRealmConfiguration() {
        Builder name = new Builder().name("userxx.realm");
        Object encoded = this.keyManager.getOrCreateKey("auth-key").getEncoded();
        Intrinsics.checkExpressionValueIsNotNull(encoded, "keyManager.getOrCreateKey(\"auth-key\").encoded");
        RealmConfiguration build = name.encryptionKey(encoded).schemaVersion(0).deleteRealmIfMigrationNeeded().modules(new UserModule(), new Object[0]).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "RealmConfiguration.Build…                 .build()");
        return build;
    }

    public final UserData getState() {
        return this.userData;
    }

    public final void removeState() {
        try {
            getRealm().executeTransaction(new RealmAuthStorage$removeState$1(this));
        } catch (Throwable th) {
            Log.e(TAG, "Failed to delete state", th);
        }
    }

    public final Realm getRealm() {
        Realm instance;
        Log.v(TAG, "getting realm");
        try {
            instance = Realm.getInstance(getRealmConfiguration());
            Intrinsics.checkExpressionValueIsNotNull(instance, "Realm.getInstance(realmConfiguration)");
            return instance;
        } catch (Throwable th) {
            Log.e("AuthStore", "Realm? Got... ", th);
            Realm.deleteRealm(getRealmConfiguration());
            instance = Realm.getInstance(getRealmConfiguration());
            Intrinsics.checkExpressionValueIsNotNull(instance, "Realm.getInstance(realmConfiguration)");
            return instance;
        }
    }

    public final void storeState(UserData userData) {
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        this.userData = userData;
        try {
            getRealm().executeTransaction(new RealmAuthStorage$storeState$1(this, userData));
        } catch (Throwable th) {
            getRealm().close();
        }
        getRealm().close();
    }

    private ru.rocketbank.core.realm.UserData readState() {
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
        r1 = this;
        r0 = r1.readStateDirect();	 Catch:{ RealmFileException -> 0x000b, Throwable -> 0x0005 }
        goto L_0x0016;
    L_0x0005:
        r0 = new ru.rocketbank.core.realm.UserData;
        r0.<init>();
        goto L_0x0016;
    L_0x000b:
        r0 = r1.getRealmConfiguration();
        io.realm.Realm.deleteRealm(r0);
        r0 = r1.readStateDirect();
    L_0x0016:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.impl.RealmAuthStorage.readState():ru.rocketbank.core.realm.UserData");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final ru.rocketbank.core.realm.UserData readStateDirect() {
        /*
        r3 = this;
        r0 = r3.getRealm();	 Catch:{ Throwable -> 0x0028 }
        r1 = ru.rocketbank.core.realm.UserData.class;
        r0 = r0.where(r1);	 Catch:{ Throwable -> 0x0028 }
        r0 = r0.findFirst();	 Catch:{ Throwable -> 0x0028 }
        r0 = (ru.rocketbank.core.realm.UserData) r0;	 Catch:{ Throwable -> 0x0028 }
        if (r0 == 0) goto L_0x0020;
    L_0x0012:
        r1 = r3.getRealm();	 Catch:{ Throwable -> 0x0028 }
        r0 = (io.realm.RealmModel) r0;	 Catch:{ Throwable -> 0x0028 }
        r0 = r1.copyFromRealm(r0);	 Catch:{ Throwable -> 0x0028 }
        r0 = (ru.rocketbank.core.realm.UserData) r0;	 Catch:{ Throwable -> 0x0028 }
        if (r0 != 0) goto L_0x0035;
    L_0x0020:
        r0 = new ru.rocketbank.core.realm.UserData;	 Catch:{ Throwable -> 0x0028 }
        r0.<init>();	 Catch:{ Throwable -> 0x0028 }
        goto L_0x0035;
    L_0x0026:
        r0 = move-exception;
        goto L_0x003d;
    L_0x0028:
        r0 = move-exception;
        r1 = TAG;	 Catch:{ all -> 0x0026 }
        r2 = "Read state failed";
        android.util.Log.e(r1, r2, r0);	 Catch:{ all -> 0x0026 }
        r0 = new ru.rocketbank.core.realm.UserData;	 Catch:{ all -> 0x0026 }
        r0.<init>();	 Catch:{ all -> 0x0026 }
    L_0x0035:
        r1 = r3.getRealm();
        r1.close();
        return r0;
    L_0x003d:
        r1 = r3.getRealm();
        r1.close();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.user.impl.RealmAuthStorage.readStateDirect():ru.rocketbank.core.realm.UserData");
    }
}
