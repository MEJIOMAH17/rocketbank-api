package ru.rocketbank.core.manager.security;

import android.net.http.SslCertificate;
import rx.Observable.OnSubscribe;

/* compiled from: CertificateManagerImpl.kt */
final class CertificateManagerImpl$getCheckObservable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ SslCertificate $sslCertificate;
    final /* synthetic */ CertificateManagerImpl this$0;

    CertificateManagerImpl$getCheckObservable$1(CertificateManagerImpl certificateManagerImpl, SslCertificate sslCertificate) {
        this.this$0 = certificateManagerImpl;
        this.$sslCertificate = sslCertificate;
    }

    public final /* bridge */ /* synthetic */ void call(java.lang.Object r5) {
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
        r4 = this;
        r5 = (rx.Subscriber) r5;
        r0 = r4.$sslCertificate;	 Catch:{ Throwable -> 0x004c }
        r0 = android.net.http.SslCertificate.saveState(r0);	 Catch:{ Throwable -> 0x004c }
        r1 = ru.rocketbank.core.manager.security.CertificateManagerImpl.X509_CERTIFICATE;	 Catch:{ Throwable -> 0x004c }
        r0 = r0.getByteArray(r1);	 Catch:{ Throwable -> 0x004c }
        if (r0 == 0) goto L_0x004b;	 Catch:{ Throwable -> 0x004c }
    L_0x0012:
        r1 = r4.this$0;	 Catch:{ Throwable -> 0x004c }
        r1 = r1.certificateFactory;	 Catch:{ Throwable -> 0x004c }
        r2 = new java.io.ByteArrayInputStream;	 Catch:{ Throwable -> 0x004c }
        r2.<init>(r0);	 Catch:{ Throwable -> 0x004c }
        r2 = (java.io.InputStream) r2;	 Catch:{ Throwable -> 0x004c }
        r0 = r1.generateCertificate(r2);	 Catch:{ Throwable -> 0x004c }
        if (r0 != 0) goto L_0x002d;	 Catch:{ Throwable -> 0x004c }
    L_0x0025:
        r0 = new kotlin.TypeCastException;	 Catch:{ Throwable -> 0x004c }
        r1 = "null cannot be cast to non-null type java.security.cert.X509Certificate";	 Catch:{ Throwable -> 0x004c }
        r0.<init>(r1);	 Catch:{ Throwable -> 0x004c }
        throw r0;	 Catch:{ Throwable -> 0x004c }
    L_0x002d:
        r0 = (java.security.cert.X509Certificate) r0;	 Catch:{ Throwable -> 0x004c }
        r1 = r4.this$0;	 Catch:{ CertificateException -> 0x0046 }
        r1 = ru.rocketbank.core.manager.security.CertificateManagerImpl.access$getRocketTrustManager$p(r1);	 Catch:{ CertificateException -> 0x0046 }
        r2 = 1;	 Catch:{ CertificateException -> 0x0046 }
        r2 = new java.security.cert.X509Certificate[r2];	 Catch:{ CertificateException -> 0x0046 }
        r3 = 0;	 Catch:{ CertificateException -> 0x0046 }
        r2[r3] = r0;	 Catch:{ CertificateException -> 0x0046 }
        r0 = "generic";	 Catch:{ CertificateException -> 0x0046 }
        r1.checkServerTrusted(r2, r0);	 Catch:{ CertificateException -> 0x0046 }
        r0 = java.lang.Boolean.TRUE;	 Catch:{ CertificateException -> 0x0046 }
        r5.onNext(r0);	 Catch:{ CertificateException -> 0x0046 }
        return;
    L_0x0046:
        r0 = java.lang.Boolean.FALSE;	 Catch:{ Throwable -> 0x004c }
        r5.onNext(r0);	 Catch:{ Throwable -> 0x004c }
    L_0x004b:
        return;
    L_0x004c:
        r0 = move-exception;
        r5.onError(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.CertificateManagerImpl$getCheckObservable$1.call(java.lang.Object):void");
    }
}
