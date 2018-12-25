package ru.rocketbank.core.manager.security.storage;

import android.content.Context;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmConfiguration.Builder;
import java.io.Closeable;
import java.io.File;
import javax.crypto.Cipher;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.KeyManager;

/* compiled from: RealmTouchTokenStorageImpl.kt */
public final class RealmTouchTokenStorageImpl implements TouchTokenStorage {
    @Deprecated
    public static final Companion Companion = new Companion();
    public static final String FILE = "jumbomode_jet.r";
    public static final String KEY_NAME = "rocket_14e79836-0672-459f-b832-08c74ddec327";
    private final RealmConfiguration config;
    private final Context context;
    private final KeyManager keyManager;

    /* compiled from: RealmTouchTokenStorageImpl.kt */
    static final class Companion {
        private Companion() {
        }
    }

    public RealmTouchTokenStorageImpl(Context context, KeyManager keyManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(keyManager, "keyManager");
        this.context = context;
        this.keyManager = keyManager;
        keyManager = this.context.getFilesDir();
        Intrinsics.checkExpressionValueIsNotNull(keyManager, "context.filesDir");
        context = new Builder().directory(new File(keyManager.getAbsolutePath(), FILE)).deleteRealmIfMigrationNeeded().encryptionKey(this.keyManager.getOrCreateKey(KEY_NAME).getEncoded()).build();
        Intrinsics.checkExpressionValueIsNotNull(context, "RealmConfiguration.Build…\n                .build()");
        this.config = context;
    }

    public final void saveToken(String str, Cipher cipher) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Intrinsics.checkParameterIsNotNull(cipher, "cipher");
        cipher = new TouchIdObject();
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        cipher.realmSet$token(str);
        Closeable instance = Realm.getInstance(this.config);
        try {
            Realm realm = (Realm) instance;
            realm.executeTransaction(new RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1(realm, cipher));
            cipher = Unit.INSTANCE;
            CloseableKt.closeFinally(instance, null);
        } catch (Throwable th) {
            CloseableKt.closeFinally(instance, cipher);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String readToken(javax.crypto.Cipher r4) {
        /*
        r3 = this;
        r0 = "cipher";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
        r4 = r3.config;
        r4 = io.realm.Realm.getInstance(r4);
        r4 = (java.io.Closeable) r4;
        r0 = 0;
        r1 = r4;
        r1 = (io.realm.Realm) r1;	 Catch:{ Throwable -> 0x0035 }
        r2 = ru.rocketbank.core.manager.security.storage.TouchIdObject.class;
        r2 = r1.where(r2);	 Catch:{ Throwable -> 0x0035 }
        r2 = r2.findFirst();	 Catch:{ Throwable -> 0x0035 }
        r2 = (ru.rocketbank.core.manager.security.storage.TouchIdObject) r2;	 Catch:{ Throwable -> 0x0035 }
        if (r2 == 0) goto L_0x002f;
    L_0x001f:
        r2 = (io.realm.RealmModel) r2;	 Catch:{ Throwable -> 0x0035 }
        r1 = r1.copyFromRealm(r2);	 Catch:{ Throwable -> 0x0035 }
        r1 = (ru.rocketbank.core.manager.security.storage.TouchIdObject) r1;	 Catch:{ Throwable -> 0x0035 }
        r1 = r1.realmGet$token();	 Catch:{ Throwable -> 0x0035 }
        kotlin.io.CloseableKt.closeFinally(r4, r0);
        return r1;
    L_0x002f:
        kotlin.io.CloseableKt.closeFinally(r4, r0);
        return r0;
    L_0x0033:
        r1 = move-exception;
        goto L_0x0037;
    L_0x0035:
        r0 = move-exception;
        throw r0;	 Catch:{ all -> 0x0033 }
    L_0x0037:
        kotlin.io.CloseableKt.closeFinally(r4, r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.storage.RealmTouchTokenStorageImpl.readToken(javax.crypto.Cipher):java.lang.String");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean hasValidToken() {
        /*
        r4 = this;
        r0 = r4.config;
        r0 = io.realm.Realm.getInstance(r0);
        r0 = (java.io.Closeable) r0;
        r1 = 0;
        r2 = r0;
        r2 = (io.realm.Realm) r2;	 Catch:{ Throwable -> 0x0021 }
        r3 = ru.rocketbank.core.manager.security.storage.TouchIdObject.class;
        r2 = r2.where(r3);	 Catch:{ Throwable -> 0x0021 }
        r2 = r2.findFirst();	 Catch:{ Throwable -> 0x0021 }
        if (r2 == 0) goto L_0x001a;
    L_0x0018:
        r2 = 1;
        goto L_0x001b;
    L_0x001a:
        r2 = 0;
    L_0x001b:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        return r2;
    L_0x001f:
        r2 = move-exception;
        goto L_0x0023;
    L_0x0021:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x001f }
    L_0x0023:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.storage.RealmTouchTokenStorageImpl.hasValidToken():boolean");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void invalidateToken() {
        /*
        r4 = this;
        r0 = r4.config;
        r0 = io.realm.Realm.getInstance(r0);
        r0 = (java.io.Closeable) r0;
        r1 = 0;
        r2 = r0;
        r2 = (io.realm.Realm) r2;	 Catch:{ Throwable -> 0x001e }
        r3 = new ru.rocketbank.core.manager.security.storage.RealmTouchTokenStorageImpl$invalidateToken$1$1;	 Catch:{ Throwable -> 0x001e }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x001e }
        r3 = (io.realm.Realm.Transaction) r3;	 Catch:{ Throwable -> 0x001e }
        r2.executeTransaction(r3);	 Catch:{ Throwable -> 0x001e }
        r2 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x001e }
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        return;
    L_0x001c:
        r2 = move-exception;
        goto L_0x0020;
    L_0x001e:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x001c }
    L_0x0020:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.storage.RealmTouchTokenStorageImpl.invalidateToken():void");
    }
}
