package ru.rocketbank.core.manager.security;

import android.net.http.SslCertificate;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: CertificateManagerImpl.kt */
final class CertificateManagerImpl$checkCertificate$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ SslCertificate $certificate;
    final /* synthetic */ CertificateManagerImpl this$0;

    CertificateManagerImpl$checkCertificate$1(CertificateManagerImpl certificateManagerImpl, SslCertificate sslCertificate) {
        this.this$0 = certificateManagerImpl;
        this.$certificate = sslCertificate;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        return Observable.create(new CertificateManagerImpl$getCheckObservable$1(this.this$0, this.$certificate));
    }
}
