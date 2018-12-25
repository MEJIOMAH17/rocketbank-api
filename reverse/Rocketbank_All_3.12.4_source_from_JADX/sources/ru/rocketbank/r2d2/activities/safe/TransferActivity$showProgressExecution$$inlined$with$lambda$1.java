package ru.rocketbank.r2d2.activities.safe;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: TransferActivity.kt */
final class TransferActivity$showProgressExecution$$inlined$with$lambda$1 implements OnDismissListener {
    final /* synthetic */ TransferActivity this$0;

    TransferActivity$showProgressExecution$$inlined$with$lambda$1(TransferActivity transferActivity) {
        this.this$0 = transferActivity;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.this$0.progressDialog = null;
    }
}
