package ru.rocketbank.core.manager.security;

import android.annotation.TargetApi;
import android.app.KeyguardManager;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintManager.AuthenticationCallback;
import android.hardware.fingerprint.FingerprintManager.AuthenticationResult;
import android.os.CancellationSignal;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.security.keystore.KeyGenParameterSpec.Builder;
import android.util.Log;
import java.io.File;
import java.lang.ref.WeakReference;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.exceptions.RocketException;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.security.storage.TouchTokenStorage;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.FingerprintDialog;

@TargetApi(23)
/* compiled from: Android23TouchProvider.kt */
public final class Android23TouchProvider implements TouchProvider {
    @Deprecated
    public static final Companion Companion = new Companion();
    public static final String KEY_IS_FILE_STRATEGY = "IS_FILES_STRATEGY";
    public static final String KEY_IS_REALM_STRATEGY = "IS_REALM_STRATEGY";
    public static final String KEY_NAME = "CIPCHER_KEY";
    public static final String KEY_STORE = "AndroidKeyStore";
    public static final String NEW_KEY_NAME = "14e79836-0672-459f-b832-08c74ddec327";
    public static final String TAG = "A23TOUCH";
    private CancellationSignal cancellationSignal;
    private final Cipher cipher;
    private final Context context;
    private final Handler fingerPrintHandler;
    private final FingerprintManager fingerprintManager;
    private boolean isFileStorage;
    private boolean isInitialized;
    private boolean isRealmStorage;
    private final File ivFile;
    private final KeyStore keyStore;
    private final KeyguardManager keyguardManager;
    private TouchTokenStorage tokenStorage;
    private WeakReference<RocketFingerPrintListener> touchListener;

    /* compiled from: Android23TouchProvider.kt */
    static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: Android23TouchProvider.kt */
    public final class FingerPrintListener extends AuthenticationCallback {
        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onAuthenticationError(int r4, java.lang.CharSequence r5) {
            /*
            r3 = this;
            r0 = ru.rocketbank.core.manager.security.Android23TouchProvider.TAG;
            r1 = new java.lang.StringBuilder;
            r2 = "onAuthenticationError: ";
            r1.<init>(r2);
            r1.append(r4);
            r2 = 32;
            r1.append(r2);
            r1.append(r5);
            r1 = r1.toString();
            android.util.Log.e(r0, r1);
            r0 = ru.rocketbank.core.manager.security.Android23TouchProvider.this;
            r0 = r0.getListener();
            if (r0 == 0) goto L_0x0032;
        L_0x0023:
            if (r5 == 0) goto L_0x002b;
        L_0x0025:
            r5 = r5.toString();
            if (r5 != 0) goto L_0x002e;
        L_0x002b:
            r5 = "Что-то пошло не так";
        L_0x002e:
            r0.onAuthenticationError(r4, r5);
            return;
        L_0x0032:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.Android23TouchProvider.FingerPrintListener.onAuthenticationError(int, java.lang.CharSequence):void");
        }

        public final void onAuthenticationHelp(int i, CharSequence charSequence) {
            Intrinsics.checkParameterIsNotNull(charSequence, "helpString");
            String str = Android23TouchProvider.TAG;
            StringBuilder stringBuilder = new StringBuilder("onAuthenticationHelp: ");
            stringBuilder.append(i);
            stringBuilder.append(' ');
            stringBuilder.append(charSequence);
            Log.w(str, stringBuilder.toString());
            RocketFingerPrintListener listener = Android23TouchProvider.this.getListener();
            if (listener != null) {
                listener.onAuthenticationHelp(i, charSequence.toString());
            }
        }

        public final void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
            Intrinsics.checkParameterIsNotNull(authenticationResult, "result");
            Log.v(Android23TouchProvider.TAG, "onAuthenticationSucceeded");
            authenticationResult = authenticationResult.getCryptoObject();
            Intrinsics.checkExpressionValueIsNotNull(authenticationResult, "result.cryptoObject");
            authenticationResult = authenticationResult.getCipher();
            if (Android23TouchProvider.this.gotValidToken()) {
                Android23TouchProvider android23TouchProvider = Android23TouchProvider.this;
                Intrinsics.checkExpressionValueIsNotNull(authenticationResult, "cipher");
                authenticationResult = android23TouchProvider.getToken(authenticationResult);
                RocketFingerPrintListener listener = Android23TouchProvider.this.getListener();
                if (listener != null) {
                    listener.onAuthenticationSucceeded(authenticationResult);
                    return;
                }
                return;
            }
            authenticationResult = Android23TouchProvider.this.getListener();
            if (authenticationResult != null) {
                String string = Android23TouchProvider.this.getContext().getString(C0859R.string.token_need_refresh);
                Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.token_need_refresh)");
                authenticationResult.onAuthenticationHelp(29, string);
            }
        }

        public final void onAuthenticationFailed() {
            Log.e(Android23TouchProvider.TAG, "onAuthenticationFailed");
            RocketFingerPrintListener listener = Android23TouchProvider.this.getListener();
            if (listener != null) {
                listener.onAuthenticationFailed();
            }
        }
    }

    public Android23TouchProvider(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        context = this.context.getSystemService(FingerprintDialog.TAG);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.hardware.fingerprint.FingerprintManager");
        }
        this.fingerprintManager = (FingerprintManager) context;
        context = this.context.getSystemService("keyguard");
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.KeyguardManager");
        }
        this.keyguardManager = (KeyguardManager) context;
        context = KeyStore.getInstance(KEY_STORE);
        Intrinsics.checkExpressionValueIsNotNull(context, "KeyStore.getInstance(KEY_STORE)");
        this.keyStore = context;
        context = Cipher.getInstance("AES/CBC/PKCS7Padding");
        Intrinsics.checkExpressionValueIsNotNull(context, "Cipher.getInstance(\"${Ke…CRYPTION_PADDING_PKCS7}\")");
        this.cipher = context;
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkExpressionValueIsNotNull(filesDir, "context.filesDir");
        this.ivFile = new File(filesDir.getAbsolutePath(), "jumbomode_jet.iv");
        this.keyStore.load(null);
        context = PreferenceManager.getDefaultSharedPreferences(this.context);
        this.isFileStorage = context.getBoolean(KEY_IS_FILE_STRATEGY, true);
        this.isRealmStorage = context.getBoolean(KEY_IS_REALM_STRATEGY, false);
        context = BaseRocketApplication.getRocketComponent();
        if (this.isRealmStorage) {
            context = context.getRealmTouchIdStorage();
        } else if (this.isFileStorage) {
            context = context.getTouchIdFileStorage();
        } else {
            context = context.getSharedPreferencesTouchIdStorage();
        }
        this.tokenStorage = context;
        this.touchListener = new WeakReference(null);
    }

    public final Context getContext() {
        return this.context;
    }

    public final boolean initialize(boolean z) {
        return isReadyTouch() ? initTouch(z) : false;
    }

    public final void close() {
        CancellationSignal cancellationSignal = this.cancellationSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        this.cancellationSignal = null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean initTouch(boolean r8) {
        /*
        r7 = this;
        r0 = 0;
        r1 = 0;
        r7.isInitialized = r0;	 Catch:{ CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, KeyStoreException -> 0x00da, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r2 = r7.keyStore;	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r3 = KEY_NAME;	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r2 = r2.getKey(r3, r1);	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        if (r2 == 0) goto L_0x001c;
    L_0x000e:
        r3 = r7.touchListener;	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r3 = r3.get();	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r3 = (ru.rocketbank.core.manager.security.RocketFingerPrintListener) r3;	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        if (r3 == 0) goto L_0x0044;
    L_0x0018:
        r3.onKeyNeedsForUpdate();	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        goto L_0x0044;
    L_0x001c:
        r2 = r7.keyStore;	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r3 = NEW_KEY_NAME;	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r2 = r2.getKey(r3, r1);	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        if (r2 != 0) goto L_0x0044;
    L_0x0026:
        r2 = initNewKey();	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r2 = (java.security.Key) r2;	 Catch:{ KeyStoreException -> 0x002f, CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        goto L_0x0044;
    L_0x002d:
        r8 = move-exception;
        goto L_0x0095;
    L_0x002f:
        r2 = move-exception;
        r3 = TAG;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r4 = r2.getMessage();	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r2 = (java.lang.Throwable) r2;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        android.util.Log.e(r3, r4, r2);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r7.deleteKey();	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r2 = initNewKey();	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r2 = (java.security.Key) r2;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
    L_0x0044:
        r3 = 1;
        if (r8 == 0) goto L_0x0065;
    L_0x0047:
        r8 = r7.cipher;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r8.init(r3, r2);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r8 = r7.ivFile;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r8 = r8.exists();	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        if (r8 != 0) goto L_0x0059;
    L_0x0054:
        r8 = r7.ivFile;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r8.createNewFile();	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
    L_0x0059:
        r8 = r7.ivFile;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r2 = r7.cipher;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r2 = r2.getIV();	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        org.apache.commons.io.FileUtils.writeByteArrayToFile(r8, r2);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        goto L_0x0080;
    L_0x0065:
        r8 = r7.ivFile;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r8 = r8.exists();	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        if (r8 == 0) goto L_0x008b;
    L_0x006d:
        r8 = r7.ivFile;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r8 = org.apache.commons.io.FileUtils.readFileToByteArray(r8);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r4 = r7.cipher;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r5 = 2;
        r6 = new javax.crypto.spec.IvParameterSpec;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r6.<init>(r8);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r6 = (java.security.spec.AlgorithmParameterSpec) r6;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r4.init(r5, r2, r6);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
    L_0x0080:
        r8 = TAG;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r2 = "old cipher";
        android.util.Log.v(r8, r2);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r7.isInitialized = r3;	 Catch:{ CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, KeyStoreException -> 0x00da, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        goto L_0x012d;
    L_0x008b:
        r8 = new android.security.keystore.KeyPermanentlyInvalidatedException;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r2 = "iv file not exists";
        r8.<init>(r2);	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        r8 = (java.lang.Throwable) r8;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
        throw r8;	 Catch:{ KeyPermanentlyInvalidatedException -> 0x002d }
    L_0x0095:
        r7.invalidateToken();	 Catch:{ CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, KeyStoreException -> 0x00da, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r2 = TAG;	 Catch:{ CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, KeyStoreException -> 0x00da, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        r3 = "key invalid";
        r8 = (java.lang.Throwable) r8;	 Catch:{ CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, KeyStoreException -> 0x00da, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        android.util.Log.e(r2, r3, r8);	 Catch:{ CertificateException -> 0x0120, NoSuchPaddingException -> 0x0112, IOException -> 0x0104, NoSuchAlgorithmException -> 0x00f6, UnrecoverableKeyException -> 0x00e8, KeyStoreException -> 0x00da, InvalidAlgorithmParameterException -> 0x00cc, NoSuchProviderException -> 0x00be, InvalidKeyException -> 0x00af, Throwable -> 0x00a2 }
        return r0;
    L_0x00a2:
        r8 = move-exception;
        r0 = TAG;
        r2 = "Other crypto error: ";
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x00af:
        r8 = move-exception;
        r0 = TAG;
        r2 = "Crypto error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x00be:
        r8 = move-exception;
        r0 = TAG;
        r2 = "Crypto error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x00cc:
        r8 = move-exception;
        r0 = TAG;
        r2 = "Crypto error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x00da:
        r8 = move-exception;
        r0 = TAG;
        r2 = "Crypto error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x00e8:
        r8 = move-exception;
        r0 = TAG;
        r2 = "Crypto error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x00f6:
        r8 = move-exception;
        r0 = TAG;
        r2 = "KeyStore error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x0104:
        r8 = move-exception;
        r0 = TAG;
        r2 = "KeyStore error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x0112:
        r8 = move-exception;
        r0 = TAG;
        r2 = "KeyStore error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        goto L_0x012d;
    L_0x0120:
        r8 = move-exception;
        r0 = TAG;
        r2 = "KeyStore error: ";
        r8 = (java.lang.Throwable) r8;
        android.util.Log.e(r0, r2, r8);
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
    L_0x012d:
        r8 = r7.isInitialized;
        if (r8 == 0) goto L_0x0182;
    L_0x0131:
        r8 = r7.cancellationSignal;
        if (r8 == 0) goto L_0x0144;
    L_0x0135:
        r8 = r8.isCanceled();
        if (r8 != 0) goto L_0x0144;
    L_0x013b:
        r8 = r7.cancellationSignal;
        if (r8 == 0) goto L_0x0142;
    L_0x013f:
        r8.cancel();
    L_0x0142:
        r7.cancellationSignal = r1;
    L_0x0144:
        r8 = new android.os.CancellationSignal;
        r8.<init>();
        r7.cancellationSignal = r8;
        r1 = new android.hardware.fingerprint.FingerprintManager$CryptoObject;
        r8 = r7.cipher;
        r1.<init>(r8);
        r0 = r7.fingerprintManager;	 Catch:{ Throwable -> 0x0165 }
        r2 = r7.cancellationSignal;	 Catch:{ Throwable -> 0x0165 }
        r3 = 0;
        r8 = new ru.rocketbank.core.manager.security.Android23TouchProvider$FingerPrintListener;	 Catch:{ Throwable -> 0x0165 }
        r8.<init>();	 Catch:{ Throwable -> 0x0165 }
        r4 = r8;
        r4 = (android.hardware.fingerprint.FingerprintManager.AuthenticationCallback) r4;	 Catch:{ Throwable -> 0x0165 }
        r5 = r7.fingerPrintHandler;	 Catch:{ Throwable -> 0x0165 }
        r0.authenticate(r1, r2, r3, r4, r5);	 Catch:{ Throwable -> 0x0165 }
        goto L_0x017b;
    L_0x0165:
        r8 = move-exception;
        r0 = "Произошла системная ошибка! Не удалось подготовить сканнер отпечатка пальца.";
        r1 = r7.touchListener;
        r1 = r1.get();
        r1 = (ru.rocketbank.core.manager.security.RocketFingerPrintListener) r1;
        if (r1 == 0) goto L_0x0178;
    L_0x0173:
        r2 = 4012; // 0xfac float:5.622E-42 double:1.982E-320;
        r1.onAuthenticationError(r2, r0);
    L_0x0178:
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8, r0);
    L_0x017b:
        r8 = TAG;
        r0 = "fingerprint init";
        android.util.Log.v(r8, r0);
    L_0x0182:
        r8 = r7.isInitialized;
        return r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.Android23TouchProvider.initTouch(boolean):boolean");
    }

    public final boolean gotValidToken() {
        try {
            return this.tokenStorage.hasValidToken();
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
            return false;
        }
    }

    private final void deleteKey() {
        if (this.keyStore.containsAlias(KEY_NAME)) {
            this.keyStore.deleteEntry(KEY_NAME);
        }
        if (this.keyStore.containsAlias(NEW_KEY_NAME)) {
            this.keyStore.deleteEntry(NEW_KEY_NAME);
        }
    }

    public final void invalidateToken() throws SecurityException {
        try {
            this.tokenStorage.invalidateToken();
            if (this.ivFile.exists()) {
                this.ivFile.delete();
            }
            deleteKey();
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
        }
    }

    private final String getToken(Cipher cipher) {
        try {
            Log.w("KEYS", String.valueOf(this.keyStore.getKey(NEW_KEY_NAME, null).hashCode()));
            return this.tokenStorage.readToken(cipher);
        } catch (Cipher cipher2) {
            handleReadFingerPrint("Необходимо подтвердить отпечаток пальца в разделе \"Профиль и настройки\"", (Throwable) cipher2);
            invalidateToken();
            return null;
        } catch (Cipher cipher22) {
            handleReadFingerPrint("Необходимо подтвердить отпечаток пальца в разделе \"Профиль и настройки\"", (Throwable) cipher22);
            invalidateToken();
            return null;
        } catch (Cipher cipher222) {
            handleReadFingerPrint("Не удалось проверить отпечаток. Попробуйте позже.", cipher222);
            return null;
        }
    }

    public final void setToken(java.lang.String r5) {
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
        r0 = "token";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0);
        r0 = r4.tokenStorage;	 Catch:{ Throwable -> 0x000d }
        r1 = r4.cipher;	 Catch:{ Throwable -> 0x000d }
        r0.saveToken(r5, r1);	 Catch:{ Throwable -> 0x000d }
        return;
    L_0x000d:
        r0 = move-exception;
        r1 = TAG;
        r2 = "Token save error 1 attempt";
        android.util.Log.e(r1, r2, r0);
        r1 = new ru.rocketbank.core.exceptions.RocketException;
        r2 = "Token save error 1 attempt";
        r1.<init>(r2, r0);
        r1 = (java.lang.Throwable) r1;
        ru.rocketbank.core.manager.AnalyticsManager.logException(r1);
        r1 = r4.isFileStorage;
        if (r1 == 0) goto L_0x0049;
    L_0x0025:
        r1 = ru.rocketbank.core.BaseRocketApplication.getRocketComponent();
        r1 = r1.getSharedPreferencesTouchIdStorage();
        r1 = (ru.rocketbank.core.manager.security.storage.TouchTokenStorage) r1;
        r4.tokenStorage = r1;
        r1 = 0;
        r4.isFileStorage = r1;
        r1 = r4.context;
        r1 = android.preference.PreferenceManager.getDefaultSharedPreferences(r1);
        r1 = r1.edit();
        r2 = KEY_IS_FILE_STRATEGY;
        r3 = r4.isFileStorage;
        r1 = r1.putBoolean(r2, r3);
        r1.apply();
    L_0x0049:
        r1 = r4.tokenStorage;	 Catch:{ Throwable -> 0x0051 }
        r2 = r4.cipher;	 Catch:{ Throwable -> 0x0051 }
        r1.saveToken(r5, r2);	 Catch:{ Throwable -> 0x0051 }
        return;
    L_0x0051:
        r1 = TAG;
        r2 = "Token save error 2 attempt";
        android.util.Log.e(r1, r2, r0);
        r1 = new ru.rocketbank.core.exceptions.RocketException;
        r2 = "Token save error 2 attempt";
        r1.<init>(r2, r0);
        r1 = (java.lang.Throwable) r1;
        ru.rocketbank.core.manager.AnalyticsManager.logException(r1);
        r1 = ru.rocketbank.core.BaseRocketApplication.getRocketComponent();
        r1 = r1.getRealmTouchIdStorage();
        r1 = (ru.rocketbank.core.manager.security.storage.TouchTokenStorage) r1;
        r4.tokenStorage = r1;
        r1 = 1;
        r4.isRealmStorage = r1;
        r1 = r4.context;
        r1 = android.preference.PreferenceManager.getDefaultSharedPreferences(r1);
        r1 = r1.edit();
        r2 = KEY_IS_REALM_STRATEGY;
        r3 = r4.isRealmStorage;
        r1 = r1.putBoolean(r2, r3);
        r1.apply();
        r1 = r4.tokenStorage;	 Catch:{ Throwable -> 0x0090 }
        r2 = r4.cipher;	 Catch:{ Throwable -> 0x0090 }
        r1.saveToken(r5, r2);	 Catch:{ Throwable -> 0x0090 }
        return;
    L_0x0090:
        r5 = TAG;
        r1 = "Token save error 3 attempt";
        android.util.Log.e(r5, r1, r0);
        r5 = new ru.rocketbank.core.exceptions.RocketException;
        r1 = "пиздец отпечатку";
        r5.<init>(r1, r0);
        r5 = (java.lang.Throwable) r5;
        ru.rocketbank.core.manager.AnalyticsManager.logException(r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.Android23TouchProvider.setToken(java.lang.String):void");
    }

    public final void setListener(WeakReference<RocketFingerPrintListener> weakReference) {
        Intrinsics.checkParameterIsNotNull(weakReference, "touchListener");
        this.touchListener = weakReference;
    }

    private static SecretKey initNewKey() throws NoSuchAlgorithmException, InvalidAlgorithmParameterException, KeyStoreException, NoSuchProviderException {
        KeyGenerator instance = KeyGenerator.getInstance("AES", KEY_STORE);
        instance.init((AlgorithmParameterSpec) new Builder(NEW_KEY_NAME, 3).setBlockModes(new String[]{"CBC"}).setUserAuthenticationRequired(true).setEncryptionPaddings(new String[]{"PKCS7Padding"}).build());
        SecretKey generateKey = instance.generateKey();
        Log.w(TAG, "new key generated");
        Intrinsics.checkExpressionValueIsNotNull(generateKey, "key");
        return generateKey;
    }

    public final RocketFingerPrintListener getListener() {
        return (RocketFingerPrintListener) this.touchListener.get();
    }

    public final boolean isLockScreenEnabled() {
        return this.keyguardManager.isKeyguardSecure();
    }

    public final boolean hasFingerprints() {
        return this.fingerprintManager.hasEnrolledFingerprints();
    }

    public final boolean hasHardware() {
        return this.fingerprintManager.isHardwareDetected();
    }

    private final void handleReadFingerPrint(String str, Throwable th) {
        RocketFingerPrintListener rocketFingerPrintListener = (RocketFingerPrintListener) this.touchListener.get();
        if (rocketFingerPrintListener != null) {
            rocketFingerPrintListener.onAuthenticationError(64204, str);
        }
        AnalyticsManager.logException((Throwable) new RocketException("cant read token from file", th));
    }

    public final boolean isReadyTouch() {
        try {
            if (this.keyguardManager.isKeyguardSecure() && this.fingerprintManager.isHardwareDetected() && this.fingerprintManager.hasEnrolledFingerprints()) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            AnalyticsManager.logException(new RocketException("check isReadyTouch()", th));
            return false;
        }
    }
}
