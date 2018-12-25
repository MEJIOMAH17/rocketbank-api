package ru.rocketbank.r2d2.root.feed;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: FeedFragment.kt */
final class FeedFragment$showProgressExecution$1 implements OnDismissListener {
    final /* synthetic */ FeedFragment this$0;

    FeedFragment$showProgressExecution$1(FeedFragment feedFragment) {
        this.this$0 = feedFragment;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.this$0.progressDialog = null;
    }
}
