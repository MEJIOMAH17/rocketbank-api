package ru.rocketbank.r2d2.root.analytics;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: AnalyticsBaseFragment.kt */
final class AnalyticsBaseFragment$executeRequest$1<T> implements Action1<T> {
    final /* synthetic */ int[] $jointIds;
    final /* synthetic */ AnalyticsBaseFragment this$0;

    AnalyticsBaseFragment$executeRequest$1(AnalyticsBaseFragment analyticsBaseFragment, int[] iArr) {
        this.this$0 = analyticsBaseFragment;
        this.$jointIds = iArr;
    }

    public final void call(T t) {
        this.this$0.latestAnalyticsResponseData = t;
        this.this$0.latestJointIds = this.$jointIds;
        AnalyticsBaseFragment analyticsBaseFragment = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(t, "it");
        AnalyticsBaseFragment.processData$default(analyticsBaseFragment, t, null, 2, null);
        this.this$0.hideProgress();
    }
}
