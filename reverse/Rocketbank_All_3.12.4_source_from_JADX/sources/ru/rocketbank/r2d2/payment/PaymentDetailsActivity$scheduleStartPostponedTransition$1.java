package ru.rocketbank.r2d2.payment;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: PaymentDetailsActivity.kt */
public final class PaymentDetailsActivity$scheduleStartPostponedTransition$1 implements OnPreDrawListener {
    final /* synthetic */ View $sharedElement;
    final /* synthetic */ PaymentDetailsActivity this$0;

    PaymentDetailsActivity$scheduleStartPostponedTransition$1(PaymentDetailsActivity paymentDetailsActivity, View view) {
        this.this$0 = paymentDetailsActivity;
        this.$sharedElement = view;
    }

    public final boolean onPreDraw() {
        this.$sharedElement.getViewTreeObserver().removeOnPreDrawListener(this);
        if (VERSION.SDK_INT >= 21) {
            this.this$0.startPostponedEnterTransition();
        }
        return true;
    }
}
