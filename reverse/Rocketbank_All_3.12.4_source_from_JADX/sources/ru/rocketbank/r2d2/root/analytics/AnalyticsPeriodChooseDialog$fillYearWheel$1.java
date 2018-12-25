package ru.rocketbank.r2d2.root.analytics;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import ru.rocketbank.core.utils.MonthNames;
import ru.rocketbank.core.widgets.WheelView;
import ru.rocketbank.core.widgets.WheelView.OnWheelViewListener;
import ru.rocketbank.r2d2.utils.CalendarUtils;
import rx.functions.Action1;

/* compiled from: AnalyticsPeriodChooseDialog.kt */
final class AnalyticsPeriodChooseDialog$fillYearWheel$1<T> implements Action1<AnalyticsMonthsManager> {
    final /* synthetic */ WheelView $wheelView;
    final /* synthetic */ AnalyticsPeriodChooseDialog this$0;

    AnalyticsPeriodChooseDialog$fillYearWheel$1(AnalyticsPeriodChooseDialog analyticsPeriodChooseDialog, WheelView wheelView) {
        this.this$0 = analyticsPeriodChooseDialog;
        this.$wheelView = wheelView;
    }

    public final void call(AnalyticsMonthsManager analyticsMonthsManager) {
        if (analyticsMonthsManager == null) {
            this.this$0.onCancelClick();
            return;
        }
        final List arrayList = new ArrayList();
        Calendar periodBegin = analyticsMonthsManager.getPeriodBegin();
        Object copy = CalendarUtils.copy(periodBegin);
        while (periodBegin.compareTo(analyticsMonthsManager.getPeriodEnd()) <= 0) {
            Calendar copy2 = CalendarUtils.copy(periodBegin);
            arrayList.add(copy2);
            if (copy2.get(1) == this.this$0.year && copy2.get(2) == this.this$0.month) {
                copy = copy2;
            }
            periodBegin.add(2, 1);
        }
        analyticsMonthsManager = this.$wheelView;
        Iterable<Calendar> iterable = arrayList;
        Collection arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (Calendar calendar : iterable) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(MonthNames.INSTANCE.getNAMES()[calendar.get(2)]);
            stringBuilder.append(' ');
            stringBuilder.append(calendar.get(1));
            arrayList2.add(stringBuilder.toString());
        }
        analyticsMonthsManager.setItems((List) arrayList2);
        this.$wheelView.setSeletion(arrayList.indexOf(copy));
        this.$wheelView.setOnWheelViewListener(new OnWheelViewListener() {
            public final void onSelected(int i, String str) {
                Calendar calendar = (Calendar) arrayList.get(i - 1);
                this.this$0.year = calendar.get(1);
                this.this$0.month = calendar.get(2);
            }
        });
    }
}
