package ru.rocketbank.core.manager.security.storage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import javax.crypto.Cipher;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* compiled from: SharedPreferencesTokenStorageImpl.kt */
public final class SharedPreferencesTokenStorageImpl implements TouchTokenStorage {
    public static final Companion Companion = new Companion();
    private static final String KEY_VERSION = "KEY_VERSION";
    private static final String PREFERENCES_NAME = "jumbomode_jet.r34";
    private static final String TAG = "SharedTokenStorageImpl";
    private static final String TOKEN_KEY = "TOKEN_KEY";
    private static final int VERSION = 1;
    private final Context context;
    private final SharedPreferences preferences = this.context.getSharedPreferences(PREFERENCES_NAME, 0);

    /* compiled from: SharedPreferencesTokenStorageImpl.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public SharedPreferencesTokenStorageImpl(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    public final void saveToken(String str, Cipher cipher) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Intrinsics.checkParameterIsNotNull(cipher, "cipher");
        Object bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        this.preferences.edit().putString(TOKEN_KEY, Base64.encodeToString(cipher.doFinal(bytes), 0)).putInt(KEY_VERSION, 1).apply();
        Log.v(TAG, "token saved ".concat(String.valueOf(str)));
    }

    public final java.lang.String readToken(javax.crypto.Cipher r4) {
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
        r3 = this;
        r0 = "cipher";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
        r0 = 0;
        r1 = r3.preferences;	 Catch:{ ClassCastException -> 0x0027 }
        r2 = TOKEN_KEY;	 Catch:{ ClassCastException -> 0x0027 }
        r1 = r1.getString(r2, r0);	 Catch:{ ClassCastException -> 0x0027 }
        if (r1 != 0) goto L_0x0011;
    L_0x0010:
        return r0;
    L_0x0011:
        r0 = 0;
        r0 = android.util.Base64.decode(r1, r0);
        r4 = r4.doFinal(r0);
        r0 = "decrypted";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r0);
        r0 = kotlin.text.Charsets.UTF_8;
        r1 = new java.lang.String;
        r1.<init>(r4, r0);
        return r1;
    L_0x0027:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.storage.SharedPreferencesTokenStorageImpl.readToken(javax.crypto.Cipher):java.lang.String");
    }

    public final boolean hasValidToken() {
        return this.preferences.contains(TOKEN_KEY);
    }

    public final void invalidateToken() {
        this.preferences.edit().remove(TOKEN_KEY).apply();
    }
}
