package ru.rocketbank.r2d2.activities;

import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.core.events.RetryEvent;

/* compiled from: ChangePhoneActivity.kt */
final class ChangePhoneActivity$showRetryErrorSnackbarMessage$1 implements OnClickListener {
    final /* synthetic */ ChangePhoneActivity this$0;

    ChangePhoneActivity$showRetryErrorSnackbarMessage$1(ChangePhoneActivity changePhoneActivity) {
        this.this$0 = changePhoneActivity;
    }

    public final void onClick(View view) {
        this.this$0.eventBus.post(new RetryEvent());
    }
}
