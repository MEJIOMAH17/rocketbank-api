package ru.rocketbank.r2d2.root.analytics;

import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemChart$ItemChartViewHolder$bind$1 implements OnCategorySelectedListener {
    final /* synthetic */ AnalyticsItem $analyticsItem;

    AnalyticsItemChart$ItemChartViewHolder$bind$1(AnalyticsItem analyticsItem) {
        this.$analyticsItem = analyticsItem;
    }

    public final void onCategorySelected(long j, int i, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "icon");
        Function4 onCategorySelectedListener = ((AnalyticsItemChart) this.$analyticsItem).getOnCategorySelectedListener();
        if (onCategorySelectedListener != null) {
            onCategorySelectedListener.invoke(Long.valueOf(j), Integer.valueOf(i), str, str2);
        }
    }
}
