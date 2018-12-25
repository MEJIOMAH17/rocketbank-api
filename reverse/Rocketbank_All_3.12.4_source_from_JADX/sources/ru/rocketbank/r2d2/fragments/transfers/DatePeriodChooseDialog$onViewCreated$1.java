package ru.rocketbank.r2d2.fragments.transfers;

import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.Tab;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Period;

/* compiled from: DatePeriodChooseDialog.kt */
final class DatePeriodChooseDialog$onViewCreated$1 implements Runnable {
    final /* synthetic */ Period $selectedDatePeriod;
    final /* synthetic */ View $view;
    final /* synthetic */ DatePeriodChooseDialog this$0;

    DatePeriodChooseDialog$onViewCreated$1(DatePeriodChooseDialog datePeriodChooseDialog, Period period, View view) {
        this.this$0 = datePeriodChooseDialog;
        this.$selectedDatePeriod = period;
        this.$view = view;
    }

    public final void run() {
        Tab tabAt;
        if (this.$selectedDatePeriod != null) {
            if (this.$selectedDatePeriod.getMonth() != null) {
                DatePeriodChooseDialog.access$getTabMonth$p(this.this$0).select();
            } else if (this.$selectedDatePeriod.getQuarter() != null) {
                DatePeriodChooseDialog.access$getTabQuarter$p(this.this$0).select();
            } else if (this.$selectedDatePeriod.getHalf() != null) {
                DatePeriodChooseDialog.access$getTabHalf$p(this.this$0).select();
            } else {
                DatePeriodChooseDialog.access$getTabYear$p(this.this$0).select();
            }
        }
        DatePeriodChooseDialog datePeriodChooseDialog = this.this$0;
        TabLayout tabLayout = (TabLayout) this.$view.findViewById(C0859R.id.tabLayout);
        if (tabLayout != null) {
            TabLayout tabLayout2 = (TabLayout) this.$view.findViewById(C0859R.id.tabLayout);
            Intrinsics.checkExpressionValueIsNotNull(tabLayout2, "view.tabLayout");
            tabAt = tabLayout.getTabAt(tabLayout2.getSelectedTabPosition());
        } else {
            tabAt = null;
        }
        datePeriodChooseDialog.updateTab(tabAt);
    }
}
