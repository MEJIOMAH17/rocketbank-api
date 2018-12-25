package ru.rocketbank.r2d2.activities;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: DownloadActivity.kt */
public final class DownloadActivity$downloadPdf$1 extends Subscriber<String> {
    final /* synthetic */ DownloadActivity this$0;

    public final void onCompleted() {
    }

    DownloadActivity$downloadPdf$1(DownloadActivity downloadActivity) {
        this.this$0 = downloadActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = this.this$0;
        String string = this.this$0.getString(C0859R.string.error_occur);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.error_occur)");
        th.errorText = string;
        DownloadActivity.access$getLoader$p(this.this$0).setError();
    }

    public final void onNext(String str) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        DownloadActivity.access$getData$p(this.this$0).getStatusText().set(this.this$0.getString(C0859R.string.ready));
        this.this$0.canShow = true;
        this.this$0.documentPath = str;
        DownloadActivity.access$getLoader$p(this.this$0).setSuccess();
    }
}
