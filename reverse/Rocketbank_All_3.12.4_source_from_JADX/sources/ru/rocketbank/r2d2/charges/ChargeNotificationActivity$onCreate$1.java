package ru.rocketbank.r2d2.charges;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: ChargeNotificationActivity.kt */
final class ChargeNotificationActivity$onCreate$1 implements OnCheckedChangeListener {
    final /* synthetic */ ChargeNotificationActivity this$0;

    ChargeNotificationActivity$onCreate$1(ChargeNotificationActivity chargeNotificationActivity) {
        this.this$0 = chargeNotificationActivity;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.this$0.penaltyTaxNotificationEnabled = z;
        this.this$0.updateNextButton();
    }
}
