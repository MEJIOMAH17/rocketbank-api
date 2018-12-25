package ru.rocketbank.r2d2.activities.webauth;

import rx.functions.Action0;

/* compiled from: Sec3dPresenter.kt */
final class Sec3dPresenter$cancelClicked$1 implements Action0 {
    final /* synthetic */ Sec3dPresenter this$0;

    Sec3dPresenter$cancelClicked$1(Sec3dPresenter sec3dPresenter) {
        this.this$0 = sec3dPresenter;
    }

    public final void call() {
        Sec3dView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.cancel();
        }
    }
}
