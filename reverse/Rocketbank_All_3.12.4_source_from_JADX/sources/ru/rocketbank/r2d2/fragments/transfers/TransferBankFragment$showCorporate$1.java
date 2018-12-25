package ru.rocketbank.r2d2.fragments.transfers;

import android.support.v4.app.Fragment;
import android.view.View;
import android.view.View.OnClickListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Period;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showCorporate$1 implements OnClickListener {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showCorporate$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onClick(View view) {
        view = DatePeriodChooseDialog.Companion.newInstance(true);
        view.onChooseDate(new Function1<Period, Unit>() {
            public final void invoke(Period period) {
                Intrinsics.checkParameterIsNotNull(period, "it");
                this.this$0.corporateViewModel.setGkhPeriod(period);
                this.this$0.corporateViewModel.getGkh_period().setValue(period.toString());
            }
        });
        this.this$0.getChildFragmentManager().beginTransaction().add((Fragment) view, null).commitAllowingStateLoss();
    }
}
