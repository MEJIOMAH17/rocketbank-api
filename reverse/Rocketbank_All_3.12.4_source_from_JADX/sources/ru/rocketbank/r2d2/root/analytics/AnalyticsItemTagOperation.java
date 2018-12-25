package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.r2d2.databinding.AnalyticsItemTagOperationBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemTagOperation extends AnalyticsItem {
    private final String amount;
    private final int color;
    private final int count;
    private final String name;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class TagOperationViewHolder extends AnalyticsViewHolder {
        private final AnalyticsItemTagOperationBinding binding;

        public TagOperationViewHolder(AnalyticsItemTagOperationBinding analyticsItemTagOperationBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsItemTagOperationBinding, "binding");
            View root = analyticsItemTagOperationBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsItemTagOperationBinding;
        }

        public final AnalyticsItemTagOperationBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            this.binding.setItem((AnalyticsItemTagOperation) analyticsItem);
            this.binding.getRoot().setOnClickListener(new AnalyticsItemTagOperation$TagOperationViewHolder$bind$1(analyticsItem));
        }
    }

    public AnalyticsItemTagOperation(String str, int i, String str2, int i2, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "amount");
        super(6, function0);
        this.name = str;
        this.count = i;
        this.amount = str2;
        this.color = i2;
    }

    public /* synthetic */ AnalyticsItemTagOperation(String str, int i, String str2, int i2, Function0 function0, int i3, Ref ref) {
        if ((i3 & 16) != 0) {
            function0 = null;
        }
        this(str, i, str2, i2, function0);
    }

    public final String getAmount() {
        return this.amount;
    }

    public final int getColor() {
        return this.color;
    }

    public final int getCount() {
        return this.count;
    }

    public final String getName() {
        return this.name;
    }
}
