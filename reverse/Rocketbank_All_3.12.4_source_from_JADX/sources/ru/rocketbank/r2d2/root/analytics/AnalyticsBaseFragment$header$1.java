package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: AnalyticsBaseFragment.kt */
final class AnalyticsBaseFragment$header$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AnalyticsBaseFragment this$0;

    AnalyticsBaseFragment$header$1(AnalyticsBaseFragment analyticsBaseFragment) {
        this.this$0 = analyticsBaseFragment;
        super(0);
    }

    public final void invoke() {
        this.this$0.onPrevPeriod();
    }
}
