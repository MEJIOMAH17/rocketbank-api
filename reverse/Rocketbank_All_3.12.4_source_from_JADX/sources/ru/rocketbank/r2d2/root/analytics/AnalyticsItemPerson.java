package ru.rocketbank.r2d2.root.analytics;

import android.graphics.Bitmap;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.databinding.AnalyticsItemSectionPersonBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemPerson extends AnalyticsItem {
    private final Bitmap icon;
    private final String text;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class ItemViewPersonHolder extends AnalyticsViewHolder {
        private final AnalyticsItemSectionPersonBinding binding;

        public ItemViewPersonHolder(AnalyticsItemSectionPersonBinding analyticsItemSectionPersonBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsItemSectionPersonBinding, "binding");
            View root = analyticsItemSectionPersonBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsItemSectionPersonBinding;
        }

        public final AnalyticsItemSectionPersonBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            this.binding.setItem((AnalyticsItemPerson) analyticsItem);
        }
    }

    public AnalyticsItemPerson(String str, Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        super(2, null, 2, null);
        this.text = str;
        this.icon = bitmap;
    }

    public final Bitmap getIcon() {
        return this.icon;
    }

    public final String getText() {
        return this.text;
    }
}
