package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.BarChartView;
import ru.rocketbank.core.widgets.BarChartView.Adapter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: GenericBarChartViewHolder.kt */
public final class GenericBarChartViewHolder extends GenericViewHolder {
    private final BarChartView barChartView;

    public GenericBarChartViewHolder(Adapter adapter, View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super(view);
        view = view.findViewById(C0859R.id.diagram);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.BarChartView");
        }
        this.barChartView = (BarChartView) view;
        this.barChartView.setAdapter(adapter);
    }

    public final void setAdapter(Adapter adapter) {
        this.barChartView.setAdapter(adapter);
    }
}
