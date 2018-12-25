package ru.rocketbank.r2d2.widgets;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import de.greenrobot.event.EventBus;
import ru.rocketbank.core.events.ChangeFingerprintSwitchEvent;

/* compiled from: FingerprintDialog.kt */
final class FingerprintDialog$onCreateDialog$1 implements OnClickListener {
    final /* synthetic */ FingerprintDialog this$0;

    FingerprintDialog$onCreateDialog$1(FingerprintDialog fingerprintDialog) {
        this.this$0 = fingerprintDialog;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        FingerprintDialog.access$getPreferences$p(this.this$0).edit().putBoolean(FingerprintDialog.TOUCH_STATE_KEY, this.this$0.scanResult).apply();
        this.this$0.touchManager.clearListener();
        this.this$0.touchManager.close();
        EventBus.getDefault().post(new ChangeFingerprintSwitchEvent(this.this$0.scanResult));
        this.this$0.data.isLoading().set(0);
    }
}
