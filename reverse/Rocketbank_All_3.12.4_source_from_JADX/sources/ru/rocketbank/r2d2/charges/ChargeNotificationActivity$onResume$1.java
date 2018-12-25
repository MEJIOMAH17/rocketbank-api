package ru.rocketbank.r2d2.charges;

import rx.functions.Action1;

/* compiled from: ChargeNotificationActivity.kt */
final class ChargeNotificationActivity$onResume$1<T> implements Action1<Boolean> {
    final /* synthetic */ ChargeNotificationActivity this$0;

    ChargeNotificationActivity$onResume$1(ChargeNotificationActivity chargeNotificationActivity) {
        this.this$0 = chargeNotificationActivity;
    }

    public final void call(Boolean bool) {
        this.this$0.updateNextButton();
    }
}
