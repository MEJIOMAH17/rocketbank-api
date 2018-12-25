package ru.rocketbank.r2d2.root.chat;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: RatingDialogFragment.kt */
/* renamed from: ru.rocketbank.r2d2.root.chat.RatingDialogFragment$showProgressExecution$$inlined$with$lambda$1 */
final class C1616x605faffa implements OnDismissListener {
    final /* synthetic */ RatingDialogFragment this$0;

    C1616x605faffa(RatingDialogFragment ratingDialogFragment) {
        this.this$0 = ratingDialogFragment;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.this$0.progressDialog = null;
    }
}
