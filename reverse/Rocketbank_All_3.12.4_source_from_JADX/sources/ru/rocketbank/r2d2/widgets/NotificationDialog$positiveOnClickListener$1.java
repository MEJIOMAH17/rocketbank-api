package ru.rocketbank.r2d2.widgets;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: NotificationDialog.kt */
final class NotificationDialog$positiveOnClickListener$1 implements OnClickListener {
    final /* synthetic */ NotificationDialog this$0;

    NotificationDialog$positiveOnClickListener$1(NotificationDialog notificationDialog) {
        this.this$0 = notificationDialog;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (this.this$0.isActive != this.this$0.checkedIsActive) {
            this.this$0.sendRequest(this.this$0.checkedIsActive);
        }
    }
}
