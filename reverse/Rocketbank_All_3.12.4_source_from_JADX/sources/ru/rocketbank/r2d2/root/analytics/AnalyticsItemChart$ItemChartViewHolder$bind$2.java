package ru.rocketbank.r2d2.root.analytics;

import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemChart$ItemChartViewHolder$bind$2 implements OnGroupSelectedListener {
    final /* synthetic */ AnalyticsItem $analyticsItem;

    AnalyticsItemChart$ItemChartViewHolder$bind$2(AnalyticsItem analyticsItem) {
        this.$analyticsItem = analyticsItem;
    }

    public final void onGroupSelected(String str, int i, String str2, String str3, Integer num) {
        Intrinsics.checkParameterIsNotNull(str, "groupId");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        Intrinsics.checkParameterIsNotNull(str3, "icon");
        Function5 onGroupSelectedListener = ((AnalyticsItemChart) this.$analyticsItem).getOnGroupSelectedListener();
        if (onGroupSelectedListener != null) {
            onGroupSelectedListener.invoke(str, Integer.valueOf(i), str2, str3, num);
        }
    }
}
