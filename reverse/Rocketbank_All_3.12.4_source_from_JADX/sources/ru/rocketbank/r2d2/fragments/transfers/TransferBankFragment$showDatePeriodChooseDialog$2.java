package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Period;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showDatePeriodChooseDialog$2 extends Lambda implements Function1<Period, Unit> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showDatePeriodChooseDialog$2(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
        super(1);
    }

    public final void invoke(Period period) {
        Intrinsics.checkParameterIsNotNull(period, "it");
        this.this$0.budgetViewModel.setTax_period_date(period);
    }
}
