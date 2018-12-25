package ru.rocketbank.r2d2.fragments.deposit;

import rx.functions.Action1;

/* compiled from: OpenReplenishableDepositFragment.kt */
final class OpenReplenishableDepositFragment$onCreateView$4<T> implements Action1<Boolean> {
    final /* synthetic */ OpenReplenishableDepositFragment this$0;

    OpenReplenishableDepositFragment$onCreateView$4(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        this.this$0 = openReplenishableDepositFragment;
    }

    public final void call(Boolean bool) {
        this.this$0.updateDepositInfo(OpenReplenishableDepositFragment.access$getCardsViewPager$p(this.this$0).getCurrentItem());
    }
}
