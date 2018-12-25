package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTagOperation;

/* compiled from: AnalyticsTagsFragment.kt */
final class AnalyticsTagsFragment$showData$1 extends Lambda implements Function1<AnalyticsTagOperation, Unit> {
    final /* synthetic */ AnalyticsTagsFragment this$0;

    AnalyticsTagsFragment$showData$1(AnalyticsTagsFragment analyticsTagsFragment) {
        this.this$0 = analyticsTagsFragment;
        super(1);
    }

    public final void invoke(AnalyticsTagOperation analyticsTagOperation) {
        Intrinsics.checkParameterIsNotNull(analyticsTagOperation, "it");
        this.this$0.startTagActivity(analyticsTagOperation);
    }
}
