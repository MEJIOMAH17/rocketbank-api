package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: AnalyticsSummaryFragment.kt */
final class AnalyticsSummaryFragment$showData$chart$1 extends Lambda implements Function5<String, Integer, String, String, Integer, Unit> {
    final /* synthetic */ AnalyticsSummaryFragment this$0;

    AnalyticsSummaryFragment$showData$chart$1(AnalyticsSummaryFragment analyticsSummaryFragment) {
        this.this$0 = analyticsSummaryFragment;
        super(5);
    }

    public final void invoke(String str, int i, String str2, String str3, Integer num) {
        Intrinsics.checkParameterIsNotNull(str, "groupId");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        Intrinsics.checkParameterIsNotNull(str3, "icon");
        this.this$0.onGroupSelected(str, i, str2, str3, num);
    }
}
