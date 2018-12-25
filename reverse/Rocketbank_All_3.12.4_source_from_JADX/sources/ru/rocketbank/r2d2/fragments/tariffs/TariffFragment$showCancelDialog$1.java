package ru.rocketbank.r2d2.fragments.tariffs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: TariffFragment.kt */
final class TariffFragment$showCancelDialog$1 implements OnClickListener {
    final /* synthetic */ TariffFragment this$0;

    TariffFragment$showCancelDialog$1(TariffFragment tariffFragment) {
        this.this$0 = tariffFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.cancelTariff();
    }
}
