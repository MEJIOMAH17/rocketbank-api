package ru.rocketbank.r2d2.widgets;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentManager;

/* compiled from: FingerprintDialog.kt */
/* renamed from: ru.rocketbank.r2d2.widgets.FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$1 */
final class C1625x50625480 implements OnClickListener {
    final /* synthetic */ FragmentManager $fragmentManager;

    C1625x50625480(FragmentManager fragmentManager) {
        this.$fragmentManager = fragmentManager;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        FingerprintDialog.Companion.showFingerprintDialog(this.$fragmentManager);
    }
}
