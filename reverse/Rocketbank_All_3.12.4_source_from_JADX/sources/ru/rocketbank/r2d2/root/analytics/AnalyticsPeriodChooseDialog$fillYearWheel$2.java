package ru.rocketbank.r2d2.root.analytics;

import rx.functions.Action1;

/* compiled from: AnalyticsPeriodChooseDialog.kt */
final class AnalyticsPeriodChooseDialog$fillYearWheel$2<T> implements Action1<Throwable> {
    final /* synthetic */ AnalyticsPeriodChooseDialog this$0;

    AnalyticsPeriodChooseDialog$fillYearWheel$2(AnalyticsPeriodChooseDialog analyticsPeriodChooseDialog) {
        this.this$0 = analyticsPeriodChooseDialog;
    }

    public final void call(Throwable th) {
        th.printStackTrace();
        this.this$0.onCancelClick();
    }
}
