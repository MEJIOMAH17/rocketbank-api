package ru.rocketbank.r2d2.root.devidepayment.ap;

import kotlin.Unit;
import rx.functions.Action1;

/* compiled from: APManageCardPresenter.kt */
final class APManageCardPresenter$deleteTur$1<T> implements Action1<Unit> {
    final /* synthetic */ APManageCardPresenter this$0;

    APManageCardPresenter$deleteTur$1(APManageCardPresenter aPManageCardPresenter) {
        this.this$0 = aPManageCardPresenter;
    }

    public final void call(Unit unit) {
        unit = this.this$0.view;
        if (unit != null) {
            unit.hideProgress();
            unit.onTurDeleted();
        }
    }
}
