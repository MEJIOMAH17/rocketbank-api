package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: AnalyticsBaseFragment.kt */
final class AnalyticsBaseFragment$onChooseDate$1 extends Lambda implements Function2<Integer, Integer, Unit> {
    final /* synthetic */ AnalyticsBaseFragment this$0;

    AnalyticsBaseFragment$onChooseDate$1(AnalyticsBaseFragment analyticsBaseFragment) {
        this.this$0 = analyticsBaseFragment;
        super(2);
    }

    public final void invoke(int i, int i2) {
        this.this$0.getCurrentDateTime().set(2, i);
        this.this$0.getCurrentDateTime().set(1, i2);
        this.this$0.executeRequest(this.this$0.getCurrentDateTime());
    }
}
