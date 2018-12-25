package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.WheelView.OnWheelViewListener;

/* compiled from: DatePeriodChooseDialog.kt */
final class DatePeriodChooseDialog$onCreateView$3 implements OnWheelViewListener {
    final /* synthetic */ DatePeriodChooseDialog this$0;

    DatePeriodChooseDialog$onCreateView$3(DatePeriodChooseDialog datePeriodChooseDialog) {
        this.this$0 = datePeriodChooseDialog;
    }

    public final void onSelected(int i, String str) {
        i = this.this$0.datePeriod;
        Intrinsics.checkExpressionValueIsNotNull(str, "item");
        i.setYear(Integer.parseInt(str));
    }
}
