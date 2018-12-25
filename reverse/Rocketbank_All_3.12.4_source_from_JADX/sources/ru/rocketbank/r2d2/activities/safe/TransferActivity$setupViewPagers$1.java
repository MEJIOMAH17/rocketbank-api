package ru.rocketbank.r2d2.activities.safe;

import android.os.Vibrator;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TransferActivity.kt */
public final class TransferActivity$setupViewPagers$1 implements OnPageChangeListener {
    final /* synthetic */ TransferActivity this$0;

    public final void onPageScrollStateChanged(int i) {
    }

    public final void onPageScrolled(int i, float f, int i2) {
    }

    TransferActivity$setupViewPagers$1(TransferActivity transferActivity) {
        this.this$0 = transferActivity;
    }

    public final void onPageSelected(int i) {
        TransferActivity.access$getViewData$p(this.this$0).getButtonEnabled().set(false);
        Vibrator access$getVibrator$p = this.this$0.vibrator;
        if (access$getVibrator$p != null) {
            access$getVibrator$p.vibrate(60);
        }
        this.this$0.fromToken = TransferActivity.access$getSourceAdapter$p(this.this$0).getToken(i);
        if (!(this.this$0.fromToken == 0 || this.this$0.destinationToken == 0)) {
            i = this.this$0;
            String access$getFromToken$p = this.this$0.fromToken;
            if (access$getFromToken$p == null) {
                Intrinsics.throwNpe();
            }
            i.refreshTargetDestination(access$getFromToken$p);
        }
        this.this$0.updateScreen();
    }
}
