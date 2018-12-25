package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTagOperation;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.AnalyticsItemChartBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemChart extends AnalyticsItem {
    private AnalyticsResponseData data;
    private Function4<? super Long, ? super Integer, ? super String, ? super String, Unit> onCategorySelectedListener;
    private Function5<? super String, ? super Integer, ? super String, ? super String, ? super Integer, Unit> onGroupSelectedListener;
    private Function1<? super AnalyticsTagOperation, Unit> onTagSelectedListener;
    private List<AnalyticsTagOperation> tags;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class ItemChartViewHolder extends AnalyticsViewHolder {
        private final AnalyticsItemChartBinding binding;

        public ItemChartViewHolder(AnalyticsItemChartBinding analyticsItemChartBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsItemChartBinding, "binding");
            View root = analyticsItemChartBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsItemChartBinding;
        }

        public final AnalyticsItemChartBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            super.bind(analyticsItem);
            AnalyticsItemChart analyticsItemChart = (AnalyticsItemChart) analyticsItem;
            if (analyticsItemChart.getData() != null) {
                View view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                BigChart bigChart = (BigChart) view.findViewById(C0859R.id.chart);
                AnalyticsResponseData data = analyticsItemChart.getData();
                List list = null;
                bigChart.setAnalyticsCategories(data != null ? data.getCategories() : null);
                view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                bigChart = (BigChart) view.findViewById(C0859R.id.chart);
                data = analyticsItemChart.getData();
                if (data != null) {
                    list = data.getGroups();
                }
                bigChart.setAnalyticsGroups(list);
            }
            if (analyticsItemChart.getTags() != null) {
                view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                ((BigChart) view.findViewById(C0859R.id.chart)).setAnalyticsTags(analyticsItemChart.getTags());
            }
            View view2 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
            ((BigChart) view2.findViewById(C0859R.id.chart)).setOnCategorySelectedListener(new AnalyticsItemChart$ItemChartViewHolder$bind$1(analyticsItem));
            view2 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
            ((BigChart) view2.findViewById(C0859R.id.chart)).setOnGroupSelectedListener(new AnalyticsItemChart$ItemChartViewHolder$bind$2(analyticsItem));
            view2 = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
            ((BigChart) view2.findViewById(C0859R.id.chart)).setOnTagSelectedListener(new AnalyticsItemChart$ItemChartViewHolder$bind$3(analyticsItem));
        }
    }

    public AnalyticsItemChart() {
        this(null, null, null, null, null, 31, null);
    }

    public final AnalyticsResponseData getData() {
        return this.data;
    }

    public final void setData(AnalyticsResponseData analyticsResponseData) {
        this.data = analyticsResponseData;
    }

    public final Function4<Long, Integer, String, String, Unit> getOnCategorySelectedListener() {
        return this.onCategorySelectedListener;
    }

    public final void setOnCategorySelectedListener(Function4<? super Long, ? super Integer, ? super String, ? super String, Unit> function4) {
        this.onCategorySelectedListener = function4;
    }

    public final Function5<String, Integer, String, String, Integer, Unit> getOnGroupSelectedListener() {
        return this.onGroupSelectedListener;
    }

    public final void setOnGroupSelectedListener(Function5<? super String, ? super Integer, ? super String, ? super String, ? super Integer, Unit> function5) {
        this.onGroupSelectedListener = function5;
    }

    public final Function1<AnalyticsTagOperation, Unit> getOnTagSelectedListener() {
        return this.onTagSelectedListener;
    }

    public final void setOnTagSelectedListener(Function1<? super AnalyticsTagOperation, Unit> function1) {
        this.onTagSelectedListener = function1;
    }

    public AnalyticsItemChart(AnalyticsResponseData analyticsResponseData, Function4<? super Long, ? super Integer, ? super String, ? super String, Unit> function4, Function5<? super String, ? super Integer, ? super String, ? super String, ? super Integer, Unit> function5, Function1<? super AnalyticsTagOperation, Unit> function1, List<AnalyticsTagOperation> list) {
        super(1, null, 2, null);
        this.data = analyticsResponseData;
        this.onCategorySelectedListener = function4;
        this.onGroupSelectedListener = function5;
        this.onTagSelectedListener = function1;
        this.tags = list;
    }

    public /* synthetic */ AnalyticsItemChart(AnalyticsResponseData analyticsResponseData, Function4 function4, Function5 function5, Function1 function1, List list, int i, Ref ref) {
        this((i & 1) != null ? null : analyticsResponseData, (i & 2) != null ? null : function4, (i & 4) != null ? null : function5, (i & 8) != null ? null : function1, (i & 16) != null ? 0 : list);
    }

    public final List<AnalyticsTagOperation> getTags() {
        return this.tags;
    }

    public final void setTags(List<AnalyticsTagOperation> list) {
        this.tags = list;
    }
}
