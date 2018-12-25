package ru.rocketbank.core.manager.security;

import android.net.http.SslCertificate;
import rx.Observable;

/* compiled from: CertificateManager.kt */
public interface CertificateManager {
    Observable<Boolean> checkCertificate(SslCertificate sslCertificate);
}
