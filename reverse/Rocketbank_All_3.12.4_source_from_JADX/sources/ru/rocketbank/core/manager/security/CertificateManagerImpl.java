package ru.rocketbank.core.manager.security;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.http.SslCertificate;
import android.preference.PreferenceManager;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.schedulers.Schedulers;

/* compiled from: CertificateManagerImpl.kt */
public final class CertificateManagerImpl implements CertificateManager {
    private static final String CERTIFICATES_FILE = "r2d2";
    private static final String CERTIFICATES_FOLDER = "certificates";
    public static final Companion Companion = new Companion();
    private static final String KEY_CERTIFICATES_HASH = "CERTIFICATES_HASH";
    private static final String TAG = "CertificateManagerImpl";
    private static final String X509_CERTIFICATE = "x509-certificate";
    private final CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
    private final Context context;
    private boolean isInit;
    private final File keystoreFile;
    private RocketTrustManager rocketTrustManager;

    /* compiled from: CertificateManagerImpl.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public CertificateManagerImpl(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkExpressionValueIsNotNull(filesDir, "context.filesDir");
        this.keystoreFile = new File(filesDir.getAbsolutePath(), CERTIFICATES_FILE);
    }

    public static final /* synthetic */ RocketTrustManager access$getRocketTrustManager$p(CertificateManagerImpl certificateManagerImpl) {
        certificateManagerImpl = certificateManagerImpl.rocketTrustManager;
        if (certificateManagerImpl == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketTrustManager");
        }
        return certificateManagerImpl;
    }

    public final Context getContext() {
        return this.context;
    }

    public final Observable<Boolean> checkCertificate(SslCertificate sslCertificate) {
        Intrinsics.checkParameterIsNotNull(sslCertificate, "certificate");
        Observable create = Observable.create(new CertificateManagerImpl$getInitObservable$1(this));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create<Any> {…nError(t)\n        }\n    }");
        sslCertificate = create.subscribeOn(Schedulers.io()).flatMap(new CertificateManagerImpl$checkCertificate$1(this, sslCertificate));
        Intrinsics.checkExpressionValueIsNotNull(sslCertificate, "getInitObservable()\n    …Observable(certificate) }");
        return sslCertificate;
    }

    public static final /* synthetic */ void access$createCertificateStorage(CertificateManagerImpl certificateManagerImpl, KeyStore keyStore) {
        AssetManager assets = certificateManagerImpl.context.getAssets();
        Object list = assets.list(CERTIFICATES_FOLDER);
        Intrinsics.checkExpressionValueIsNotNull(list, CERTIFICATES_FOLDER);
        int i = 0;
        if ((1 ^ (list.length == 0 ? 1 : 0)) != 0) {
            certificateManagerImpl.keystoreFile.createNewFile();
            keyStore.load(null);
            int length = list.length;
            int i2 = 0;
            while (i < length) {
                String str = list[i];
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(CERTIFICATES_FOLDER);
                stringBuilder.append(File.separator);
                stringBuilder.append(str);
                Closeable bufferedInputStream = new BufferedInputStream(assets.open(stringBuilder.toString()));
                try {
                    Certificate generateCertificate = certificateManagerImpl.certificateFactory.generateCertificate((BufferedInputStream) bufferedInputStream);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(bufferedInputStream, null);
                    keyStore.setCertificateEntry(str, generateCertificate);
                    i2 += str.hashCode();
                    i++;
                } catch (Throwable th) {
                    CloseableKt.closeFinally(bufferedInputStream, certificateManagerImpl);
                }
            }
            Closeable fileOutputStream = new FileOutputStream(certificateManagerImpl.keystoreFile);
            try {
                OutputStream outputStream = (FileOutputStream) fileOutputStream;
                Object toCharArray = CERTIFICATES_FILE.toCharArray();
                Intrinsics.checkExpressionValueIsNotNull(toCharArray, "(this as java.lang.String).toCharArray()");
                keyStore.store(outputStream, toCharArray);
                keyStore = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                PreferenceManager.getDefaultSharedPreferences(certificateManagerImpl.context).edit().putInt(KEY_CERTIFICATES_HASH, i2).commit();
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileOutputStream, certificateManagerImpl);
            }
        }
    }
}
