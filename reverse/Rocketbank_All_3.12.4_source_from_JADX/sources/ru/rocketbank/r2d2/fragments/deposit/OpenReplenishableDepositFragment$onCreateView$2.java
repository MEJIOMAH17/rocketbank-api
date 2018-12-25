package ru.rocketbank.r2d2.fragments.deposit;

import android.support.v4.view.ViewPager.OnPageChangeListener;

/* compiled from: OpenReplenishableDepositFragment.kt */
public final class OpenReplenishableDepositFragment$onCreateView$2 implements OnPageChangeListener {
    final /* synthetic */ OpenReplenishableDepositFragment this$0;

    public final void onPageScrollStateChanged(int i) {
    }

    public final void onPageScrolled(int i, float f, int i2) {
    }

    OpenReplenishableDepositFragment$onCreateView$2(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        this.this$0 = openReplenishableDepositFragment;
    }

    public final void onPageSelected(int i) {
        this.this$0.updateDepositInfo(i);
    }
}
