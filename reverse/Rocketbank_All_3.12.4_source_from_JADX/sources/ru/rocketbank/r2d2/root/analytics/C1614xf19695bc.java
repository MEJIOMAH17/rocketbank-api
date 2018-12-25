package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: AnalyticsAdapter.kt */
/* renamed from: ru.rocketbank.r2d2.root.analytics.AnalyticsItemMerchantOperation$MerchantOperationViewHolder$bind$1 */
final class C1614xf19695bc implements OnClickListener {
    final /* synthetic */ AnalyticsItem $analyticsItem;

    C1614xf19695bc(AnalyticsItem analyticsItem) {
        this.$analyticsItem = analyticsItem;
    }

    public final void onClick(View view) {
        view = this.$analyticsItem.getOnClick();
        if (view != null) {
            view.invoke();
        }
    }
}
