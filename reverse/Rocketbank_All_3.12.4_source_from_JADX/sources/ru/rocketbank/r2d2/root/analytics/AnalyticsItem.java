package ru.rocketbank.r2d2.root.analytics;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: AnalyticsAdapter.kt */
public abstract class AnalyticsItem {
    public static final Companion Companion = new Companion();
    public static final int ITEM_TYPE_CHART = 1;
    public static final int ITEM_TYPE_EMPTY_ANALYTICS = 7;
    public static final int ITEM_TYPE_HEADER = 0;
    public static final int ITEM_TYPE_ITEM_MERCHANT_OPERATION = 5;
    public static final int ITEM_TYPE_ITEM_TAG_OPERATION = 6;
    public static final int ITEM_TYPE_OPERATION = 4;
    public static final int ITEM_TYPE_SECTION = 3;
    public static final int ITEM_TYPE_SECTION_PERSON = 2;
    private Function0<Unit> onClick;
    private Function0<Unit> onUpdate;
    private final int type;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: AnalyticsAdapter.kt */
    public static abstract class AnalyticsViewHolder extends ViewHolder {
        public AnalyticsViewHolder(View view) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            super(view);
        }

        public void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            analyticsItem.setOnUpdate(new AnalyticsItem$AnalyticsViewHolder$bind$1(this, analyticsItem));
        }
    }

    public AnalyticsItem(int i, Function0<Unit> function0) {
        this.type = i;
        this.onClick = function0;
    }

    public /* synthetic */ AnalyticsItem(int i, Function0 function0, int i2, Ref ref) {
        if ((i2 & 2) != 0) {
            function0 = null;
        }
        this(i, function0);
    }

    public final Function0<Unit> getOnClick() {
        return this.onClick;
    }

    public final int getType() {
        return this.type;
    }

    public final void setOnClick(Function0<Unit> function0) {
        this.onClick = function0;
    }

    public final Function0<Unit> getOnUpdate() {
        return this.onUpdate;
    }

    public final void setOnUpdate(Function0<Unit> function0) {
        this.onUpdate = function0;
    }
}
