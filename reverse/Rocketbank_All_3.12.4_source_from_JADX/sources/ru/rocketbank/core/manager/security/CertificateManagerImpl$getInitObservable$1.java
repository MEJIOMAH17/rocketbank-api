package ru.rocketbank.core.manager.security;

import rx.Observable.OnSubscribe;

/* compiled from: CertificateManagerImpl.kt */
final class CertificateManagerImpl$getInitObservable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ CertificateManagerImpl this$0;

    CertificateManagerImpl$getInitObservable$1(CertificateManagerImpl certificateManagerImpl) {
        this.this$0 = certificateManagerImpl;
    }

    public final /* bridge */ /* synthetic */ void call(java.lang.Object r10) {
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
        r9 = this;
        r10 = (rx.Subscriber) r10;
        r0 = r9.this$0;	 Catch:{ Throwable -> 0x00f8 }
        r0 = r0.isInit;	 Catch:{ Throwable -> 0x00f8 }
        r1 = 0;	 Catch:{ Throwable -> 0x00f8 }
        if (r0 == 0) goto L_0x000f;	 Catch:{ Throwable -> 0x00f8 }
    L_0x000b:
        r10.onNext(r1);	 Catch:{ Throwable -> 0x00f8 }
        return;	 Catch:{ Throwable -> 0x00f8 }
    L_0x000f:
        r0 = java.security.KeyStore.getDefaultType();	 Catch:{ Throwable -> 0x00f8 }
        r0 = java.security.KeyStore.getInstance(r0);	 Catch:{ Throwable -> 0x00f8 }
        r2 = r9.this$0;	 Catch:{ Throwable -> 0x00f8 }
        r2 = r2.keystoreFile;	 Catch:{ Throwable -> 0x00f8 }
        r2 = r2.exists();	 Catch:{ Throwable -> 0x00f8 }
        if (r2 != 0) goto L_0x0038;	 Catch:{ Throwable -> 0x00f8 }
    L_0x0023:
        r2 = r9.this$0;	 Catch:{ Throwable -> 0x00f8 }
        r3 = "keyStore";	 Catch:{ Throwable -> 0x00f8 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r3);	 Catch:{ Throwable -> 0x00f8 }
        ru.rocketbank.core.manager.security.CertificateManagerImpl.access$createCertificateStorage(r2, r0);	 Catch:{ Throwable -> 0x00f8 }
        r2 = ru.rocketbank.core.manager.security.CertificateManagerImpl.TAG;	 Catch:{ Throwable -> 0x00f8 }
        r3 = "CertificateStorage created";	 Catch:{ Throwable -> 0x00f8 }
        android.util.Log.w(r2, r3);	 Catch:{ Throwable -> 0x00f8 }
        goto L_0x00e0;
    L_0x0038:
        r2 = r9.this$0;	 Catch:{ Throwable -> 0x00c4 }
        r2 = r2.getContext();	 Catch:{ Throwable -> 0x00c4 }
        r2 = android.preference.PreferenceManager.getDefaultSharedPreferences(r2);	 Catch:{ Throwable -> 0x00c4 }
        r3 = ru.rocketbank.core.manager.security.CertificateManagerImpl.KEY_CERTIFICATES_HASH;	 Catch:{ Throwable -> 0x00c4 }
        r4 = 0;	 Catch:{ Throwable -> 0x00c4 }
        r2 = r2.getInt(r3, r4);	 Catch:{ Throwable -> 0x00c4 }
        r3 = r9.this$0;	 Catch:{ Throwable -> 0x00c4 }
        r3 = r3.getContext();	 Catch:{ Throwable -> 0x00c4 }
        r3 = r3.getAssets();	 Catch:{ Throwable -> 0x00c4 }
        r5 = ru.rocketbank.core.manager.security.CertificateManagerImpl.CERTIFICATES_FOLDER;	 Catch:{ Throwable -> 0x00c4 }
        r3 = r3.list(r5);	 Catch:{ Throwable -> 0x00c4 }
        r5 = "context.assets.list(CERTIFICATES_FOLDER)";	 Catch:{ Throwable -> 0x00c4 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r5);	 Catch:{ Throwable -> 0x00c4 }
        r5 = r3.length;	 Catch:{ Throwable -> 0x00c4 }
        r6 = r4;	 Catch:{ Throwable -> 0x00c4 }
    L_0x0064:
        if (r4 >= r5) goto L_0x0070;	 Catch:{ Throwable -> 0x00c4 }
    L_0x0066:
        r7 = r3[r4];	 Catch:{ Throwable -> 0x00c4 }
        r7 = r7.hashCode();	 Catch:{ Throwable -> 0x00c4 }
        r6 = r6 + r7;	 Catch:{ Throwable -> 0x00c4 }
        r4 = r4 + 1;	 Catch:{ Throwable -> 0x00c4 }
        goto L_0x0064;	 Catch:{ Throwable -> 0x00c4 }
    L_0x0070:
        if (r6 != r2) goto L_0x00ba;	 Catch:{ Throwable -> 0x00c4 }
    L_0x0072:
        r2 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x00c4 }
        r3 = r9.this$0;	 Catch:{ Throwable -> 0x00c4 }
        r3 = r3.keystoreFile;	 Catch:{ Throwable -> 0x00c4 }
        r2.<init>(r3);	 Catch:{ Throwable -> 0x00c4 }
        r2 = (java.io.Closeable) r2;	 Catch:{ Throwable -> 0x00c4 }
        r3 = r2;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r3 = (java.io.FileInputStream) r3;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r3 = (java.io.InputStream) r3;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r4 = ru.rocketbank.core.manager.security.CertificateManagerImpl.CERTIFICATES_FILE;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        if (r4 != 0) goto L_0x0092;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
    L_0x008a:
        r3 = new kotlin.TypeCastException;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r4 = "null cannot be cast to non-null type java.lang.String";	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        throw r3;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
    L_0x0092:
        r4 = r4.toCharArray();	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r5 = "(this as java.lang.String).toCharArray()";	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r5);	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r0.load(r3, r4);	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        r3 = kotlin.Unit.INSTANCE;	 Catch:{ Throwable -> 0x00b0, all -> 0x00ad }
        kotlin.io.CloseableKt.closeFinally(r2, r1);	 Catch:{ Throwable -> 0x00c4 }
        r2 = ru.rocketbank.core.manager.security.CertificateManagerImpl.TAG;	 Catch:{ Throwable -> 0x00c4 }
        r3 = "CertificatesStorage loaded";	 Catch:{ Throwable -> 0x00c4 }
        android.util.Log.w(r2, r3);	 Catch:{ Throwable -> 0x00c4 }
        goto L_0x00e0;
    L_0x00ad:
        r3 = move-exception;
        r4 = r1;
        goto L_0x00b6;
    L_0x00b0:
        r3 = move-exception;
        throw r3;	 Catch:{ all -> 0x00b2 }
    L_0x00b2:
        r4 = move-exception;
        r8 = r4;
        r4 = r3;
        r3 = r8;
    L_0x00b6:
        kotlin.io.CloseableKt.closeFinally(r2, r4);	 Catch:{ Throwable -> 0x00c4 }
        throw r3;	 Catch:{ Throwable -> 0x00c4 }
    L_0x00ba:
        r2 = new ru.rocketbank.core.exceptions.RocketException;	 Catch:{ Throwable -> 0x00c4 }
        r3 = "Certificates changed";	 Catch:{ Throwable -> 0x00c4 }
        r2.<init>(r3);	 Catch:{ Throwable -> 0x00c4 }
        r2 = (java.lang.Throwable) r2;	 Catch:{ Throwable -> 0x00c4 }
        throw r2;	 Catch:{ Throwable -> 0x00c4 }
    L_0x00c4:
        r2 = r9.this$0;	 Catch:{ Throwable -> 0x00f8 }
        r2 = r2.keystoreFile;	 Catch:{ Throwable -> 0x00f8 }
        r2.delete();	 Catch:{ Throwable -> 0x00f8 }
        r2 = r9.this$0;	 Catch:{ Throwable -> 0x00f8 }
        r3 = "keyStore";	 Catch:{ Throwable -> 0x00f8 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r3);	 Catch:{ Throwable -> 0x00f8 }
        ru.rocketbank.core.manager.security.CertificateManagerImpl.access$createCertificateStorage(r2, r0);	 Catch:{ Throwable -> 0x00f8 }
        r2 = ru.rocketbank.core.manager.security.CertificateManagerImpl.TAG;	 Catch:{ Throwable -> 0x00f8 }
        r3 = "CertificateStorage recreated";	 Catch:{ Throwable -> 0x00f8 }
        android.util.Log.w(r2, r3);	 Catch:{ Throwable -> 0x00f8 }
    L_0x00e0:
        r2 = r9.this$0;	 Catch:{ Throwable -> 0x00f8 }
        r3 = new ru.rocketbank.core.manager.security.RocketTrustManager;	 Catch:{ Throwable -> 0x00f8 }
        r4 = "keyStore";	 Catch:{ Throwable -> 0x00f8 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r4);	 Catch:{ Throwable -> 0x00f8 }
        r3.<init>(r0);	 Catch:{ Throwable -> 0x00f8 }
        r2.rocketTrustManager = r3;	 Catch:{ Throwable -> 0x00f8 }
        r0 = r9.this$0;	 Catch:{ Throwable -> 0x00f8 }
        r0.isInit = true;	 Catch:{ Throwable -> 0x00f8 }
        r10.onNext(r1);	 Catch:{ Throwable -> 0x00f8 }
        return;
    L_0x00f8:
        r0 = move-exception;
        r10.onError(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.security.CertificateManagerImpl$getInitObservable$1.call(java.lang.Object):void");
    }
}
