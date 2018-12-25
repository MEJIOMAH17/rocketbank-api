package ru.rocketbank.r2d2.activities;

import ru.rocketbank.core.model.references.ReferenceResponse;
import ru.rocketbank.r2d2.C0859R;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: DownloadActivity.kt */
final class DownloadActivity$loadReference$$inlined$let$lambda$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ DownloadActivity this$0;

    DownloadActivity$loadReference$$inlined$let$lambda$1(DownloadActivity downloadActivity) {
        this.this$0 = downloadActivity;
    }

    public final Observable<String> call(ReferenceResponse referenceResponse) {
        DownloadActivity.access$getData$p(this.this$0).getStatusText().set(this.this$0.getString(C0859R.string.loading));
        return this.this$0.processDownloadPdf(referenceResponse.getExtract().getUrl());
    }
}
