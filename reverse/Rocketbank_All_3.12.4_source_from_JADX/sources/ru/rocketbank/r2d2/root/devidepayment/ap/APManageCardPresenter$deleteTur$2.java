package ru.rocketbank.r2d2.root.devidepayment.ap;

import rx.functions.Action1;

/* compiled from: APManageCardPresenter.kt */
final class APManageCardPresenter$deleteTur$2<T> implements Action1<Throwable> {
    final /* synthetic */ APManageCardPresenter this$0;

    APManageCardPresenter$deleteTur$2(APManageCardPresenter aPManageCardPresenter) {
        this.this$0 = aPManageCardPresenter;
    }

    public final void call(Throwable th) {
        th = this.this$0.view;
        if (th != null) {
            th.hideProgress();
            th.onDeleteError();
        }
    }
}
