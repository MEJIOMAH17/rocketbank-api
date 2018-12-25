package ru.rocketbank.r2d2.widgets;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: NotificationDialog.kt */
final class NotificationDialog$negativeOnClickListener$1 implements OnClickListener {
    public static final NotificationDialog$negativeOnClickListener$1 INSTANCE = new NotificationDialog$negativeOnClickListener$1();

    NotificationDialog$negativeOnClickListener$1() {
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
