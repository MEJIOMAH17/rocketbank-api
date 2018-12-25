package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: AnalyticsGroupFragment.kt */
final class AnalyticsGroupFragment$showData$onCategorySelectedListener$1 extends Lambda implements Function4<Long, Integer, String, String, Unit> {
    final /* synthetic */ AnalyticsGroupFragment this$0;

    AnalyticsGroupFragment$showData$onCategorySelectedListener$1(AnalyticsGroupFragment analyticsGroupFragment) {
        this.this$0 = analyticsGroupFragment;
        super(4);
    }

    public final void invoke(long j, int i, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "icon");
        this.this$0.onCategorySelected(j, i, str, str2);
    }
}
