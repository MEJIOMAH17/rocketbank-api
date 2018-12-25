package ru.rocketbank.r2d2.activities.safe;

import android.os.Vibrator;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.DepositModel;

/* compiled from: TransferActivity.kt */
public final class TransferActivity$setupViewPagers$2 implements OnPageChangeListener {
    final /* synthetic */ TransferActivity this$0;

    public final void onPageScrollStateChanged(int i) {
    }

    public final void onPageScrolled(int i, float f, int i2) {
    }

    TransferActivity$setupViewPagers$2(TransferActivity transferActivity) {
        this.this$0 = transferActivity;
    }

    public final void onPageSelected(int i) {
        TransferActivity.access$getViewData$p(this.this$0).getButtonEnabled().set(false);
        Vibrator access$getVibrator$p = this.this$0.vibrator;
        if (access$getVibrator$p != null) {
            access$getVibrator$p.vibrate(60);
        }
        String access$getDestinationToken$p = this.this$0.destinationToken;
        this.this$0.destinationToken = TransferActivity.access$getDestinationAdapter$p(this.this$0).getToken(i);
        i = this.this$0.authorization.getProductImmediate(this.this$0.destinationToken);
        if ((Intrinsics.areEqual(access$getDestinationToken$p, this.this$0.destinationToken) ^ 1) != 0) {
            String str = null;
            if (i instanceof DepositModel) {
                TransferActivity transferActivity = this.this$0;
                i = ((DepositModel) i).getRocketDeposit();
                if (i != 0) {
                    str = i.getCurrency();
                }
                transferActivity.refreshSource(str);
            } else {
                this.this$0.refreshSource(null);
            }
        }
        this.this$0.updateScreen();
    }
}
