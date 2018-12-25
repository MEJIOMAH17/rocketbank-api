package ru.rocketbank.r2d2.root.analytics;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTagOperation;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemChart$ItemChartViewHolder$bind$3 implements OnTagSelectedListener {
    final /* synthetic */ AnalyticsItem $analyticsItem;

    AnalyticsItemChart$ItemChartViewHolder$bind$3(AnalyticsItem analyticsItem) {
        this.$analyticsItem = analyticsItem;
    }

    public final void onTagSelected(AnalyticsTagOperation analyticsTagOperation) {
        Intrinsics.checkParameterIsNotNull(analyticsTagOperation, "tag");
        Function1 onTagSelectedListener = ((AnalyticsItemChart) this.$analyticsItem).getOnTagSelectedListener();
        if (onTagSelectedListener != null) {
            onTagSelectedListener.invoke(analyticsTagOperation);
        }
    }
}
