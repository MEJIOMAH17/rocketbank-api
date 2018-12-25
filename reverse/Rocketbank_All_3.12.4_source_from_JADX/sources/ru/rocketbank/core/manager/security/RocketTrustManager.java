package ru.rocketbank.core.manager.security;

import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: RocketTrustManager.kt */
public final class RocketTrustManager implements X509TrustManager {
    private final X509TrustManager x509TrustManager;

    public RocketTrustManager(KeyStore keyStore) {
        Intrinsics.checkParameterIsNotNull(keyStore, "keyStore");
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            instance.init(keyStore);
            Intrinsics.checkExpressionValueIsNotNull(instance, "factory");
            this.x509TrustManager = findX509TrustManager(instance);
            if (this.x509TrustManager == null) {
                throw ((Throwable) new IllegalStateException("Couldn't find X509TrustManager"));
            }
        } catch (KeyStore keyStore2) {
            throw new RuntimeException((Throwable) keyStore2);
        }
    }

    private static X509TrustManager findX509TrustManager(TrustManagerFactory trustManagerFactory) {
        trustManagerFactory = trustManagerFactory.getTrustManagers();
        Intrinsics.checkExpressionValueIsNotNull(trustManagerFactory, "tms");
        Intrinsics.checkParameterIsNotNull(trustManagerFactory, "$receiver");
        Intrinsics.checkParameterIsNotNull(trustManagerFactory, "$receiver");
        for (Object next : new IntRange(0, trustManagerFactory.length - 1)) {
            if (trustManagerFactory[((Number) next).intValue()] instanceof X509TrustManager) {
                break;
            }
        }
        Object next2 = null;
        Integer num = (Integer) next2;
        if (num == null) {
            return null;
        }
        trustManagerFactory = trustManagerFactory[num.intValue()];
        if (trustManagerFactory != null) {
            return (X509TrustManager) trustManagerFactory;
        }
        throw new TypeCastException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
    }

    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        Intrinsics.checkParameterIsNotNull(x509CertificateArr, "chain");
        Intrinsics.checkParameterIsNotNull(str, "authType");
        X509TrustManager x509TrustManager = this.x509TrustManager;
        if (x509TrustManager != null) {
            x509TrustManager.checkServerTrusted(x509CertificateArr, str);
        }
    }

    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        Intrinsics.checkParameterIsNotNull(x509CertificateArr, "chain");
        Intrinsics.checkParameterIsNotNull(str, "authType");
        X509TrustManager x509TrustManager = this.x509TrustManager;
        if (x509TrustManager != null) {
            x509TrustManager.checkServerTrusted(x509CertificateArr, str);
        }
    }

    public final X509Certificate[] getAcceptedIssuers() {
        X509TrustManager x509TrustManager = this.x509TrustManager;
        return x509TrustManager != null ? x509TrustManager.getAcceptedIssuers() : null;
    }
}
