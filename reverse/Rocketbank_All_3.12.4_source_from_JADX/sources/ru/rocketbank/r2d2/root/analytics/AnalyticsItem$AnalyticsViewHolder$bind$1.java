package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
final class AnalyticsItem$AnalyticsViewHolder$bind$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AnalyticsItem $analyticsItem;
    final /* synthetic */ AnalyticsViewHolder this$0;

    AnalyticsItem$AnalyticsViewHolder$bind$1(AnalyticsViewHolder analyticsViewHolder, AnalyticsItem analyticsItem) {
        this.this$0 = analyticsViewHolder;
        this.$analyticsItem = analyticsItem;
        super(0);
    }

    public final void invoke() {
        this.this$0.bind(this.$analyticsItem);
    }
}
