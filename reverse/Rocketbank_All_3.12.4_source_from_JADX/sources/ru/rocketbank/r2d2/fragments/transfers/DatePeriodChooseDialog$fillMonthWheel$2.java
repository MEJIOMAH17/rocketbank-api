package ru.rocketbank.r2d2.fragments.transfers;

import ru.rocketbank.core.widgets.WheelView.OnWheelViewListener;

/* compiled from: DatePeriodChooseDialog.kt */
final class DatePeriodChooseDialog$fillMonthWheel$2 implements OnWheelViewListener {
    final /* synthetic */ DatePeriodChooseDialog this$0;

    DatePeriodChooseDialog$fillMonthWheel$2(DatePeriodChooseDialog datePeriodChooseDialog) {
        this.this$0 = datePeriodChooseDialog;
    }

    public final void onSelected(int i, String str) {
        this.this$0.datePeriod.setMonth(Integer.valueOf(i - 1));
    }
}
