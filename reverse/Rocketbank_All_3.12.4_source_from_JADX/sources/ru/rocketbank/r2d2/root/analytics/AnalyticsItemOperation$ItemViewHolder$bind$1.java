package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: AnalyticsAdapter.kt */
final class AnalyticsItemOperation$ItemViewHolder$bind$1 implements OnClickListener {
    final /* synthetic */ AnalyticsItem $analyticsItem;

    AnalyticsItemOperation$ItemViewHolder$bind$1(AnalyticsItem analyticsItem) {
        this.$analyticsItem = analyticsItem;
    }

    public final void onClick(View view) {
        view = this.$analyticsItem.getOnClick();
        if (view != null) {
            view.invoke();
        }
    }
}
