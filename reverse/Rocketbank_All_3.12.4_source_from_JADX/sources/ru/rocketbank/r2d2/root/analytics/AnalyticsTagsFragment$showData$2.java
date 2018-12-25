package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTagOperation;

/* compiled from: AnalyticsTagsFragment.kt */
final class AnalyticsTagsFragment$showData$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AnalyticsTagOperation $tag;
    final /* synthetic */ AnalyticsTagsFragment this$0;

    AnalyticsTagsFragment$showData$2(AnalyticsTagsFragment analyticsTagsFragment, AnalyticsTagOperation analyticsTagOperation) {
        this.this$0 = analyticsTagsFragment;
        this.$tag = analyticsTagOperation;
        super(0);
    }

    public final void invoke() {
        this.this$0.startTagActivity(this.$tag);
    }
}
