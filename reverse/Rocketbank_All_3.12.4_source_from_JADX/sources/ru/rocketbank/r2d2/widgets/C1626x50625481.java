package ru.rocketbank.r2d2.widgets;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.PreferenceManager;
import ru.rocketbank.core.manager.TouchManager;

/* compiled from: FingerprintDialog.kt */
/* renamed from: ru.rocketbank.r2d2.widgets.FingerprintDialog$Companion$showConfirmFingerPrintDialog$dialog$2 */
final class C1626x50625481 implements OnClickListener {
    final /* synthetic */ Context $context;
    final /* synthetic */ TouchManager $touchManager;

    C1626x50625481(TouchManager touchManager, Context context) {
        this.$touchManager = touchManager;
        this.$context = context;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.$touchManager.invalidateToken();
        PreferenceManager.getDefaultSharedPreferences(this.$context).edit().putBoolean(FingerprintDialog.TOUCH_STATE_KEY, false).apply();
    }
}
