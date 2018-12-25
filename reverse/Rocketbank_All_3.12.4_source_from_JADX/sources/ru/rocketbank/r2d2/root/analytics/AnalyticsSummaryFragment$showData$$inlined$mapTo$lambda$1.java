package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.analytics.AnalyticsGroup;

/* compiled from: AnalyticsSummaryFragment.kt */
final class AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AnalyticsGroup $it;
    final /* synthetic */ AnalyticsSummaryFragment this$0;

    AnalyticsSummaryFragment$showData$$inlined$mapTo$lambda$1(AnalyticsGroup analyticsGroup, AnalyticsSummaryFragment analyticsSummaryFragment) {
        this.$it = analyticsGroup;
        this.this$0 = analyticsSummaryFragment;
        super(0);
    }

    public final void invoke() {
        AnalyticsSummaryFragment analyticsSummaryFragment = this.this$0;
        AnalyticsGroup analyticsGroup = this.$it;
        Intrinsics.checkExpressionValueIsNotNull(analyticsGroup, "it");
        String id = analyticsGroup.getId();
        Intrinsics.checkExpressionValueIsNotNull(id, "it.id");
        AnalyticsGroup analyticsGroup2 = this.$it;
        Intrinsics.checkExpressionValueIsNotNull(analyticsGroup2, "it");
        String name = analyticsGroup2.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "it.name");
        analyticsGroup2 = this.$it;
        Intrinsics.checkExpressionValueIsNotNull(analyticsGroup2, "it");
        String icon = analyticsGroup2.getIcon();
        Intrinsics.checkExpressionValueIsNotNull(icon, "it.icon");
        analyticsGroup2 = this.$it;
        Intrinsics.checkExpressionValueIsNotNull(analyticsGroup2, "it");
        analyticsSummaryFragment.onGroupSelected(id, 0, name, icon, analyticsGroup2.getColor());
    }
}
