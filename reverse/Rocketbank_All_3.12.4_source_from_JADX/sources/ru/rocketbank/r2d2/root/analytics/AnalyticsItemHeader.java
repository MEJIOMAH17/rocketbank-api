package ru.rocketbank.r2d2.root.analytics;

import android.databinding.ObservableBoolean;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.r2d2.databinding.AnalyticsItemHeaderBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemHeader extends AnalyticsItem {
    private int amount;
    private ObservableBoolean inProgress;
    private boolean nextPeriodExists;
    private final Function0<Unit> onChooseDate;
    private final Function0<Unit> onNextPeriod;
    private final Function0<Unit> onPrevPeriod;
    private String period;
    private boolean prevPeriodExists;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class ItemViewHeaderHolder extends AnalyticsViewHolder {
        private final AnalyticsItemHeaderBinding binding;

        public ItemViewHeaderHolder(AnalyticsItemHeaderBinding analyticsItemHeaderBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsItemHeaderBinding, "binding");
            View root = analyticsItemHeaderBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsItemHeaderBinding;
        }

        public final AnalyticsItemHeaderBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            super.bind(analyticsItem);
            this.binding.setItem((AnalyticsItemHeader) analyticsItem);
        }
    }

    public AnalyticsItemHeader(int i, String str, Function0<Unit> function0, Function0<Unit> function02, Function0<Unit> function03) {
        Intrinsics.checkParameterIsNotNull(str, "period");
        super(0, null, 2, null);
        this.amount = i;
        this.period = str;
        this.onPrevPeriod = function0;
        this.onNextPeriod = function02;
        this.onChooseDate = function03;
        this.inProgress = new ObservableBoolean(true);
        this.nextPeriodExists = true;
        this.prevPeriodExists = true;
    }

    public /* synthetic */ AnalyticsItemHeader(int i, String str, Function0 function0, Function0 function02, Function0 function03, int i2, Ref ref) {
        if ((i2 & 1) != null) {
            i = 0;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            str = "";
        }
        this(i3, str, function0, function02, function03);
    }

    public final int getAmount() {
        return this.amount;
    }

    public final Function0<Unit> getOnChooseDate() {
        return this.onChooseDate;
    }

    public final Function0<Unit> getOnNextPeriod() {
        return this.onNextPeriod;
    }

    public final Function0<Unit> getOnPrevPeriod() {
        return this.onPrevPeriod;
    }

    public final String getPeriod() {
        return this.period;
    }

    public final void setAmount(int i) {
        this.amount = i;
    }

    public final void setPeriod(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.period = str;
    }

    public final ObservableBoolean getInProgress() {
        return this.inProgress;
    }

    public final void setInProgress(ObservableBoolean observableBoolean) {
        Intrinsics.checkParameterIsNotNull(observableBoolean, "<set-?>");
        this.inProgress = observableBoolean;
    }

    public final boolean getNextPeriodExists() {
        return this.nextPeriodExists;
    }

    public final void setNextPeriodExists(boolean z) {
        this.nextPeriodExists = z;
    }

    public final boolean getPrevPeriodExists() {
        return this.prevPeriodExists;
    }

    public final void setPrevPeriodExists(boolean z) {
        this.prevPeriodExists = z;
    }

    public final void onDateClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view = this.onChooseDate;
        if (view != null) {
            view.invoke();
        }
    }

    public final void onLeftArrowClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (this.prevPeriodExists != null) {
            view = this.onPrevPeriod;
            if (view != null) {
                view.invoke();
            }
        }
    }

    public final void onRightArrowClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (this.nextPeriodExists != null) {
            view = this.onNextPeriod;
            if (view != null) {
                view.invoke();
            }
        }
    }
}
