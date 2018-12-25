package ru.rocketbank.r2d2.root.devidepayment.ap;

import kotlin.Unit;
import rx.functions.Action1;

/* compiled from: APManageCardActivity.kt */
final class APManageCardActivity$makeDefaultClicked$1<T> implements Action1<Unit> {
    final /* synthetic */ APManageCardActivity this$0;

    APManageCardActivity$makeDefaultClicked$1(APManageCardActivity aPManageCardActivity) {
        this.this$0 = aPManageCardActivity;
    }

    public final void call(Unit unit) {
        this.this$0.makeDefaultSubscription.unsubscribe();
    }
}
