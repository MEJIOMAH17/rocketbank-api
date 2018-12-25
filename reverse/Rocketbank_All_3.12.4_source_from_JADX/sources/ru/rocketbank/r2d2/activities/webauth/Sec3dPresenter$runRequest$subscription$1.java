package ru.rocketbank.r2d2.activities.webauth;

import rx.functions.Action1;

/* compiled from: Sec3dPresenter.kt */
final class Sec3dPresenter$runRequest$subscription$1<T> implements Action1<Void> {
    final /* synthetic */ Sec3dPresenter this$0;

    Sec3dPresenter$runRequest$subscription$1(Sec3dPresenter sec3dPresenter) {
        this.this$0 = sec3dPresenter;
    }

    public final void call(Void voidR) {
        voidR = this.this$0.view;
        if (voidR != null) {
            voidR.hideProgress();
            voidR.cancel();
        }
    }
}
