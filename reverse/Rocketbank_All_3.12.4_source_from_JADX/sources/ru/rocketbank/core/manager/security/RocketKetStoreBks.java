package ru.rocketbank.core.manager.security;

import android.content.Context;
import android.provider.Settings.Secure;
import java.security.KeyStore;
import java.security.KeyStore.PasswordProtection;
import java.security.KeyStore.SecretKeyEntry;
import javax.crypto.SecretKey;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketKetStoreBks.kt */
public final class RocketKetStoreBks implements RocketKeyStore {
    private final String FILE_NAME = "jumbomode_jetplus.bks";
    private final Context context;
    private final KeyStore keyStore;
    private final PasswordProtection protParam = new PasswordProtection(getPassword());

    public RocketKetStoreBks(android.content.Context r5) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        r0 = "context";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0);
        r4.<init>();
        r4.context = r5;
        r5 = "BKS";
        r5 = java.security.KeyStore.getInstance(r5);
        r0 = "KeyStore.getInstance(\"BKS\")";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r0);
        r4.keyStore = r5;
        r5 = "jumbomode_jetplus.bks";
        r4.FILE_NAME = r5;
        r5 = new java.security.KeyStore$PasswordProtection;
        r0 = r4.getPassword();
        r5.<init>(r0);
        r4.protParam = r5;
        r5 = "KEYS";
        r0 = new java.lang.StringBuilder;
        r1 = "Open keystore : ";
        r0.<init>(r1);
        r1 = new java.io.File;
        r2 = r4.context;
        r2 = r2.getFilesDir();
        r3 = "context.filesDir";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);
        r2 = r2.getAbsolutePath();
        r3 = r4.FILE_NAME;
        r1.<init>(r2, r3);
        r1 = r1.getAbsolutePath();
        r0.append(r1);
        r0 = r0.toString();
        android.util.Log.v(r5, r0);
        r5 = new java.io.File;
        r0 = r4.context;
        r0 = r0.getFilesDir();
        r1 = "context.filesDir";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r0 = r0.getAbsolutePath();
        r1 = r4.FILE_NAME;
        r5.<init>(r0, r1);
        r5 = r5.exists();
        if (r5 == 0) goto L_0x0073;
    L_0x006f:
        r4.loadKeyStore();	 Catch:{ Exception -> 0x0073 }
        return;
    L_0x0073:
        r5 = new java.io.File;
        r0 = r4.context;
        r0 = r0.getFilesDir();
        r1 = "context.filesDir";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r0 = r0.getAbsolutePath();
        r1 = r4.FILE_NAME;
        r5.<init>(r0, r1);
        r5.delete();
        r5 = r4.keyStore;
        r0 = 0;
        r1 = r4.getPassword();
        r5.load(r0, r1);
        r4.saveKeyStore();
        r4.loadKeyStore();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.RocketKetStoreBks.<init>(android.content.Context):void");
    }

    private final char[] getPassword() {
        String string = Secure.getString(this.context.getContentResolver(), "android_id");
        Intrinsics.checkExpressionValueIsNotNull(string, "Settings.Secure.getStrin…ttings.Secure.ANDROID_ID)");
        if (string == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        Object toCharArray = string.toCharArray();
        Intrinsics.checkExpressionValueIsNotNull(toCharArray, "(this as java.lang.String).toCharArray()");
        return toCharArray;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void loadKeyStore() {
        /*
        r5 = this;
        r0 = new java.io.FileInputStream;
        r1 = new java.io.File;
        r2 = r5.context;
        r2 = r2.getFilesDir();
        r3 = "context.filesDir";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);
        r2 = r2.getAbsolutePath();
        r3 = r5.FILE_NAME;
        r1.<init>(r2, r3);
        r0.<init>(r1);
        r0 = (java.io.Closeable) r0;
        r1 = 0;
        r2 = r0;
        r2 = (java.io.FileInputStream) r2;	 Catch:{ Throwable -> 0x0034 }
        r3 = r5.keyStore;	 Catch:{ Throwable -> 0x0034 }
        r2 = (java.io.InputStream) r2;	 Catch:{ Throwable -> 0x0034 }
        r4 = r5.getPassword();	 Catch:{ Throwable -> 0x0034 }
        r3.load(r2, r4);	 Catch:{ Throwable -> 0x0034 }
        r2 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0034 }
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        return;
    L_0x0032:
        r2 = move-exception;
        goto L_0x0036;
    L_0x0034:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x0032 }
    L_0x0036:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.RocketKetStoreBks.loadKeyStore():void");
    }

    public final SecretKey getKey(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        str = this.keyStore.getEntry(str, this.protParam);
        return str instanceof SecretKeyEntry ? ((SecretKeyEntry) str).getSecretKey() : null;
    }

    public final void storeKey(String str, SecretKey secretKey) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(secretKey, "key");
        this.keyStore.setEntry(str, new SecretKeyEntry(secretKey), this.protParam);
        saveKeyStore();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void saveKeyStore() {
        /*
        r5 = this;
        r0 = new java.io.FileOutputStream;
        r1 = new java.io.File;
        r2 = r5.context;
        r2 = r2.getFilesDir();
        r3 = "context.filesDir";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);
        r2 = r2.getAbsolutePath();
        r3 = r5.FILE_NAME;
        r1.<init>(r2, r3);
        r0.<init>(r1);
        r0 = (java.io.Closeable) r0;
        r1 = 0;
        r2 = r0;
        r2 = (java.io.FileOutputStream) r2;	 Catch:{ Throwable -> 0x0034 }
        r3 = r5.keyStore;	 Catch:{ Throwable -> 0x0034 }
        r2 = (java.io.OutputStream) r2;	 Catch:{ Throwable -> 0x0034 }
        r4 = r5.getPassword();	 Catch:{ Throwable -> 0x0034 }
        r3.store(r2, r4);	 Catch:{ Throwable -> 0x0034 }
        r2 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x0034 }
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        return;
    L_0x0032:
        r2 = move-exception;
        goto L_0x0036;
    L_0x0034:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x0032 }
    L_0x0036:
        kotlin.io.CloseableKt.closeFinally(r0, r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.RocketKetStoreBks.saveKeyStore():void");
    }
}
