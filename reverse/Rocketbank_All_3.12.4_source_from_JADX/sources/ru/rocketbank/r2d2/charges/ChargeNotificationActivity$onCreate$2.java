package ru.rocketbank.r2d2.charges;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ChargeNotificationActivity.kt */
final class ChargeNotificationActivity$onCreate$2 implements OnClickListener {
    final /* synthetic */ ChargeNotificationActivity this$0;

    ChargeNotificationActivity$onCreate$2(ChargeNotificationActivity chargeNotificationActivity) {
        this.this$0 = chargeNotificationActivity;
    }

    public final void onClick(View view) {
        this.this$0.patchProfile();
    }
}
