package ru.rocketbank.r2d2.fragments.deposit;

import android.widget.ScrollView;
import rx.functions.Action1;

/* compiled from: OpenReplenishableDepositFragment.kt */
final class OpenReplenishableDepositFragment$onCreateView$5<T> implements Action1<Boolean> {
    final /* synthetic */ ScrollView $scroll;
    final /* synthetic */ OpenReplenishableDepositFragment this$0;

    OpenReplenishableDepositFragment$onCreateView$5(OpenReplenishableDepositFragment openReplenishableDepositFragment, ScrollView scrollView) {
        this.this$0 = openReplenishableDepositFragment;
        this.$scroll = scrollView;
    }

    public final void call(Boolean bool) {
        this.$scroll.post(new Runnable() {
            public final void run() {
                this.$scroll.fullScroll(130);
            }
        });
        this.this$0.updateDepositInfo(OpenReplenishableDepositFragment.access$getCardsViewPager$p(this.this$0).getCurrentItem());
    }
}
