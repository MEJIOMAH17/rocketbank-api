package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.AnalyticsItemOperationBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemOperation extends AnalyticsItem {
    private final String amount;
    private final int color;
    private final String icon;
    private final String text;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class ItemViewHolder extends AnalyticsViewHolder {
        private final AnalyticsItemOperationBinding binding;

        public ItemViewHolder(AnalyticsItemOperationBinding analyticsItemOperationBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsItemOperationBinding, "binding");
            View root = analyticsItemOperationBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsItemOperationBinding;
        }

        public final AnalyticsItemOperationBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            this.binding.setItem((AnalyticsItemOperation) analyticsItem);
            this.binding.getRoot().setOnClickListener(new AnalyticsItemOperation$ItemViewHolder$bind$1(analyticsItem));
        }
    }

    public AnalyticsItemOperation(String str, int i, String str2, Function0<Unit> function0, String str3) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(str2, "amount");
        Intrinsics.checkParameterIsNotNull(function0, "onClick");
        super(4, function0);
        this.text = str;
        this.color = i;
        this.amount = str2;
        this.icon = str3;
    }

    public /* synthetic */ AnalyticsItemOperation(String str, int i, String str2, Function0 function0, String str3, int i2, Ref ref) {
        if ((i2 & 2) != null) {
            i = C0859R.color.rocketBlack;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            str3 = null;
        }
        this(str, i3, str2, function0, str3);
    }

    public final String getAmount() {
        return this.amount;
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
