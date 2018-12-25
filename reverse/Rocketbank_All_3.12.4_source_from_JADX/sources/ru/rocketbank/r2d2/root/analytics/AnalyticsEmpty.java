package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.AnalyticsEmptyBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsEmpty extends AnalyticsItem {
    private final boolean isJointAnalytics;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class AnalyticsEmptyViewHolder extends AnalyticsViewHolder {
        private final AnalyticsEmptyBinding binding;

        public AnalyticsEmptyViewHolder(AnalyticsEmptyBinding analyticsEmptyBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsEmptyBinding, "binding");
            View root = analyticsEmptyBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsEmptyBinding;
        }

        public final AnalyticsEmptyBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            this.binding.setIsJointAnalytics(Boolean.valueOf(((AnalyticsEmpty) analyticsItem).isJointAnalytics()));
            this.binding.cunningCat.resetAnimation();
        }
    }

    public AnalyticsEmpty(boolean z) {
        super(7, null, 2, null);
        this.isJointAnalytics = z;
    }

    public final boolean isJointAnalytics() {
        return this.isJointAnalytics;
    }
}
