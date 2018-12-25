package ru.rocketbank.r2d2.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

/* compiled from: OpenSafeAccountFragment.kt */
/* renamed from: ru.rocketbank.r2d2.fragments.OpenSafeAccountFragment$showProgressExecution$$inlined$let$lambda$1 */
final class C1521xc11d93e6 implements OnDismissListener {
    final /* synthetic */ OpenSafeAccountFragment this$0;

    C1521xc11d93e6(OpenSafeAccountFragment openSafeAccountFragment) {
        this.this$0 = openSafeAccountFragment;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.this$0.progressDialog = null;
    }
}
