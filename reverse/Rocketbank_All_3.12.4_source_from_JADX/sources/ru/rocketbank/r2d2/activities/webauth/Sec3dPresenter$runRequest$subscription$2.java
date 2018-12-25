package ru.rocketbank.r2d2.activities.webauth;

import rx.functions.Action1;

/* compiled from: Sec3dPresenter.kt */
final class Sec3dPresenter$runRequest$subscription$2<T> implements Action1<Throwable> {
    final /* synthetic */ Sec3dPresenter this$0;

    Sec3dPresenter$runRequest$subscription$2(Sec3dPresenter sec3dPresenter) {
        this.this$0 = sec3dPresenter;
    }

    public final void call(Throwable th) {
        th = this.this$0.view;
        if (th != null) {
            th.hideProgress();
            th.showError();
        }
    }
}
