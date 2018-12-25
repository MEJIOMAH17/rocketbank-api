package ru.rocketbank.r2d2.root.analytics;

import rx.functions.Action1;

/* compiled from: AnalyticsBaseFragment.kt */
final class AnalyticsBaseFragment$processData$2<T> implements Action1<Throwable> {
    final /* synthetic */ AnalyticsBaseFragment this$0;

    AnalyticsBaseFragment$processData$2(AnalyticsBaseFragment analyticsBaseFragment) {
        this.this$0 = analyticsBaseFragment;
    }

    public final void call(Throwable th) {
        th.printStackTrace();
        this.this$0.hideProgress();
    }
}
