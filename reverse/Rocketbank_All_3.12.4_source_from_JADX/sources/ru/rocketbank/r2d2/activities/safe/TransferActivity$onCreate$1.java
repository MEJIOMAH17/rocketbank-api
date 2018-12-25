package ru.rocketbank.r2d2.activities.safe;

import android.os.Vibrator;
import android.support.v4.view.ViewPager.OnPageChangeListener;

/* compiled from: TransferActivity.kt */
public final class TransferActivity$onCreate$1 implements OnPageChangeListener {
    final /* synthetic */ TransferActivity this$0;

    public final void onPageScrollStateChanged(int i) {
    }

    public final void onPageScrolled(int i, float f, int i2) {
    }

    TransferActivity$onCreate$1(TransferActivity transferActivity) {
        this.this$0 = transferActivity;
    }

    public final void onPageSelected(int i) {
        Vibrator access$getVibrator$p = this.this$0.vibrator;
        if (access$getVibrator$p != null) {
            access$getVibrator$p.vibrate(60);
        }
        this.this$0.selectedCurrency = this.this$0.getCurrencyAdapter().getCurrencyAtPosition(i);
        this.this$0.refreshTextInfo();
        TransferActivity transferActivity = this.this$0;
        transferActivity.refreshDrawableState(i, transferActivity.getCurrencyAdapter().getCount());
    }
}
