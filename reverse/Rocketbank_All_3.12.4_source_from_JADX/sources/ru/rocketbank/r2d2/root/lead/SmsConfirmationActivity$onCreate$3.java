package ru.rocketbank.r2d2.root.lead;

import ru.rocketbank.core.widgets.RocketNumpad;
import ru.rocketbank.core.widgets.RocketNumpad.OnNumberListener;

/* compiled from: SmsConfirmationActivity.kt */
public final class SmsConfirmationActivity$onCreate$3 implements OnNumberListener {
    final /* synthetic */ RocketNumpad $numpad;
    final /* synthetic */ SmsConfirmationActivity this$0;

    public final void onReset() {
    }

    SmsConfirmationActivity$onCreate$3(SmsConfirmationActivity smsConfirmationActivity, RocketNumpad rocketNumpad) {
        this.this$0 = smsConfirmationActivity;
        this.$numpad = rocketNumpad;
    }

    public final void onNumber(int i) {
        SmsConfirmationActivity.access$getSmsInput$p(this.this$0).appendNumber(i);
        this.$numpad.setEraseEnabled(true);
    }

    public final void onClear() {
        SmsConfirmationActivity.access$getSmsInput$p(this.this$0).regroup();
        this.$numpad.setEraseEnabled(false);
    }
}
