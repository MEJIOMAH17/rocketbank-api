package ru.rocketbank.r2d2.activities.c2c;

import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import javax.net.ssl.SSLHandshakeException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.security.CertificateManager;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: CodePresenter.kt */
final class CodePresenter$onSslError$1 extends Lambda implements Function0<Observable<Boolean>> {
    final /* synthetic */ SslError $error;
    final /* synthetic */ SslErrorHandler $handler;
    final /* synthetic */ String $html;
    final /* synthetic */ CodePresenter this$0;

    /* compiled from: CodePresenter.kt */
    /* renamed from: ru.rocketbank.r2d2.activities.c2c.CodePresenter$onSslError$1$2 */
    static final class C14732<T> implements Action1<Throwable> {
        public static final C14732 INSTANCE = new C14732();

        C14732() {
        }

        public final void call(Throwable th) {
            AnalyticsManager.logException(th);
        }
    }

    CodePresenter$onSslError$1(CodePresenter codePresenter, SslError sslError, SslErrorHandler sslErrorHandler, String str) {
        this.this$0 = codePresenter;
        this.$error = sslError;
        this.$handler = sslErrorHandler;
        this.$html = str;
        super(0);
    }

    public final Observable<Boolean> invoke() {
        CertificateManager access$getCertificateManager$p = CodePresenter.access$getCertificateManager$p(this.this$0);
        SslCertificate certificate = this.$error.getCertificate();
        Intrinsics.checkExpressionValueIsNotNull(certificate, "error.certificate");
        Observable<Boolean> doOnError = access$getCertificateManager$p.checkCertificate(certificate).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new Action1<Boolean>() {
            public final void call(Boolean bool) {
                Intrinsics.checkExpressionValueIsNotNull(bool, "res");
                if (bool.booleanValue() != null) {
                    this.$handler.proceed();
                    return;
                }
                this.this$0.logSslError(this.$error, this.$html);
                this.$handler.cancel();
                StringBuilder stringBuilder = new StringBuilder("Не удалось проверить сертификат. ");
                stringBuilder.append(this.$html);
                throw ((Throwable) new SSLHandshakeException(stringBuilder.toString()));
            }
        }).doOnError(C14732.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(doOnError, "certificateManager.check…anager.logException(it) }");
        return doOnError;
    }
}
