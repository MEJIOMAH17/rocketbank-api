package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.databinding.AnalyticsItemSectionBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemSection extends AnalyticsItem {
    private final int color;
    private final String icon;
    private final String text;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class ItemViewSectionHolder extends AnalyticsViewHolder {
        private final AnalyticsItemSectionBinding binding;

        public ItemViewSectionHolder(AnalyticsItemSectionBinding analyticsItemSectionBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsItemSectionBinding, "binding");
            View root = analyticsItemSectionBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsItemSectionBinding;
        }

        public final AnalyticsItemSectionBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            this.binding.setItem((AnalyticsItemSection) analyticsItem);
        }
    }

    public AnalyticsItemSection(String str, int i, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "icon");
        Intrinsics.checkParameterIsNotNull(str2, ProviderField.TEXT);
        super(3, null, 2, null);
        this.icon = str;
        this.color = i;
        this.text = str2;
    }

    public final int getColor() {
        return this.color;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getText() {
        return this.text;
    }
}
