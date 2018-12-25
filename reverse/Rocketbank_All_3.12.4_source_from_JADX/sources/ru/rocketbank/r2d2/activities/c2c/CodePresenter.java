package ru.rocketbank.r2d2.activities.c2c;

import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.security.CertificateManager;
import ru.rocketbank.core.model.card.Card2CardStatusResponseData;
import ru.rocketbank.core.network.api.Card2CardApi;
import ru.rocketbank.core.utils.presenter.RxPresenter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: CodePresenter.kt */
public final class CodePresenter extends RxPresenter<Enter3dSecActivity> {
    public static final Companion Companion = new Companion();
    private static final int INSTANCE_ID = 1;
    private Card2CardApi card2CardApi;
    private CertificateManager certificateManager;

    /* compiled from: CodePresenter.kt */
    public static final class Companion {
        private static /* synthetic */ void INSTANCE_ID$annotations() {
        }

        private Companion() {
        }
    }

    public static final /* synthetic */ Card2CardApi access$getCard2CardApi$p(CodePresenter codePresenter) {
        codePresenter = codePresenter.card2CardApi;
        if (codePresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("card2CardApi");
        }
        return codePresenter;
    }

    public static final /* synthetic */ CertificateManager access$getCertificateManager$p(CodePresenter codePresenter) {
        codePresenter = codePresenter.certificateManager;
        if (codePresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("certificateManager");
        }
        return codePresenter;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.card2CardApi = RocketApplication.Companion.getInjector().getCard2CardApi();
        this.certificateManager = RocketApplication.Companion.getInjector().getCertificateManager();
    }

    public final void requestCode(int i, Function2<? super Enter3dSecActivity, ? super Card2CardStatusResponseData, Unit> function2, Function2<? super Enter3dSecActivity, ? super Throwable, Unit> function22) {
        simpleCall(INSTANCE_ID, new CodePresenter$requestCode$1(this, i), function2, function22);
    }

    public final void onSslError(SslErrorHandler sslErrorHandler, SslError sslError, String str, Function2<? super Enter3dSecActivity, ? super Boolean, Unit> function2, Function2<? super Enter3dSecActivity, ? super Throwable, Unit> function22) {
        Intrinsics.checkParameterIsNotNull(sslErrorHandler, "handler");
        Intrinsics.checkParameterIsNotNull(sslError, "error");
        Intrinsics.checkParameterIsNotNull(str, "html");
        simpleCall(INSTANCE_ID, new CodePresenter$onSslError$1(this, sslError, sslErrorHandler, str), function2, function22);
    }

    private final void logSslError(android.net.http.SslError r8, java.lang.String r9) {
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
        r7 = this;
        r0 = r8.getPrimaryError();
        r1 = r8.getCertificate();
        if (r1 == 0) goto L_0x0016;
    L_0x000a:
        r1 = r1.getIssuedTo();
        if (r1 == 0) goto L_0x0016;
    L_0x0010:
        r1 = r1.getCName();
        if (r1 != 0) goto L_0x0018;
    L_0x0016:
        r1 = "";
    L_0x0018:
        r2 = r8.getCertificate();
        if (r2 == 0) goto L_0x002a;
    L_0x001e:
        r2 = r2.getIssuedTo();
        if (r2 == 0) goto L_0x002a;
    L_0x0024:
        r2 = r2.getDName();
        if (r2 != 0) goto L_0x002c;
    L_0x002a:
        r2 = "";
    L_0x002c:
        r3 = r8.getCertificate();
        if (r3 == 0) goto L_0x003e;
    L_0x0032:
        r3 = r3.getIssuedTo();
        if (r3 == 0) goto L_0x003e;
    L_0x0038:
        r3 = r3.getOName();
        if (r3 != 0) goto L_0x0040;
    L_0x003e:
        r3 = "";
    L_0x0040:
        r4 = r8.getCertificate();
        if (r4 == 0) goto L_0x0052;
    L_0x0046:
        r4 = r4.getIssuedTo();
        if (r4 == 0) goto L_0x0052;
    L_0x004c:
        r4 = r4.getUName();
        if (r4 != 0) goto L_0x0054;
    L_0x0052:
        r4 = "";
    L_0x0054:
        r8 = r8.getUrl();	 Catch:{ Throwable -> 0x006a }
        r8 = android.net.Uri.parse(r8);	 Catch:{ Throwable -> 0x006a }
        r5 = "uri";	 Catch:{ Throwable -> 0x006a }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r5);	 Catch:{ Throwable -> 0x006a }
        r8 = r8.getHost();	 Catch:{ Throwable -> 0x006a }
        if (r8 != 0) goto L_0x006c;	 Catch:{ Throwable -> 0x006a }
    L_0x0067:
        r8 = "";	 Catch:{ Throwable -> 0x006a }
        goto L_0x006c;
    L_0x006a:
        r8 = "";
    L_0x006c:
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
        r6 = "Cert error ";	 Catch:{ Throwable -> 0x00b1 }
        r5.<init>(r6);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r8 = 32;	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r0);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r1);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r2);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r3);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r4);	 Catch:{ Throwable -> 0x00b1 }
        r8 = " html:\n ";	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r8 = android.arch.lifecycle.MethodCallsLogger.urlEncode(r9);	 Catch:{ Throwable -> 0x00b1 }
        r5.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r8 = r5.toString();	 Catch:{ Throwable -> 0x00b1 }
        r9 = new ru.rocketbank.core.exceptions.RocketWebViewException;	 Catch:{ Throwable -> 0x00b1 }
        r9.<init>(r8);	 Catch:{ Throwable -> 0x00b1 }
        r9 = (java.lang.Throwable) r9;	 Catch:{ Throwable -> 0x00b1 }
        ru.rocketbank.core.manager.AnalyticsManager.logException(r9, r8);	 Catch:{ Throwable -> 0x00b1 }
        return;
    L_0x00b1:
        r8 = move-exception;
        ru.rocketbank.core.manager.AnalyticsManager.logException(r8);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.c2c.CodePresenter.logSslError(android.net.http.SslError, java.lang.String):void");
    }
}
