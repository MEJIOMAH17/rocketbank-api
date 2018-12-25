package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.BarChartView;
import ru.rocketbank.core.widgets.BarChartView.Adapter;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: BarCharViewHolder.kt */
public final class BarCharViewHolder extends RocketViewHolder {
    private final BarChartAdapter barChartAdapter;
    private final BarChartView barChartView;

    public BarCharViewHolder(BarChartAdapter barChartAdapter, View view) {
        Intrinsics.checkParameterIsNotNull(barChartAdapter, "barChartAdapter");
        Intrinsics.checkParameterIsNotNull(view, "view");
        super(view);
        this.barChartAdapter = barChartAdapter;
        barChartAdapter = view.findViewById(C0859R.id.diagram);
        if (barChartAdapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.BarChartView");
        }
        this.barChartView = (BarChartView) barChartAdapter;
        this.barChartView.setAdapter((Adapter) this.barChartAdapter);
    }

    public final BarChartAdapter getBarChartAdapter() {
        return this.barChartAdapter;
    }

    public final BarChartView getBarChartView() {
        return this.barChartView;
    }
}
