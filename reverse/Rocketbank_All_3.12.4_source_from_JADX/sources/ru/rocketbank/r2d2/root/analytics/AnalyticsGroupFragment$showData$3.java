package ru.rocketbank.r2d2.root.analytics;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.analytics.AnalyticsMerchant;

/* compiled from: AnalyticsGroupFragment.kt */
final class AnalyticsGroupFragment$showData$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AnalyticsMerchant $merchant;
    final /* synthetic */ AnalyticsGroupFragment this$0;

    AnalyticsGroupFragment$showData$3(AnalyticsGroupFragment analyticsGroupFragment, AnalyticsMerchant analyticsMerchant) {
        this.this$0 = analyticsGroupFragment;
        this.$merchant = analyticsMerchant;
        super(0);
    }

    public final void invoke() {
        AnalyticsGroupFragment analyticsGroupFragment = this.this$0;
        AnalyticsMerchant analyticsMerchant = this.$merchant;
        Intrinsics.checkExpressionValueIsNotNull(analyticsMerchant, "merchant");
        analyticsGroupFragment.onMerchantSelected(analyticsMerchant);
    }
}
