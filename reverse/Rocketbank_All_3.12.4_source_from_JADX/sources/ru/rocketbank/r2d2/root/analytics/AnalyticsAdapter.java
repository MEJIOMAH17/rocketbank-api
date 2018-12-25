package ru.rocketbank.r2d2.root.analytics;

import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.AnalyticsEmptyBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemChartBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemHeaderBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemMerchantOperationBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemOperationBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemSectionBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemSectionPersonBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemTagOperationBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsEmpty.AnalyticsEmptyViewHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemChart.ItemChartViewHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemHeader.ItemViewHeaderHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemMerchantOperation.MerchantOperationViewHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemOperation.ItemViewHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemPerson.ItemViewPersonHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemSection.ItemViewSectionHolder;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItemTagOperation.TagOperationViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsAdapter extends Adapter<AnalyticsViewHolder> {
    private final List<AnalyticsItem> items;

    public AnalyticsAdapter(List<? extends AnalyticsItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "items");
        this.items = list;
    }

    public final List<AnalyticsItem> getItems() {
        return this.items;
    }

    public final void onBindViewHolder(AnalyticsViewHolder analyticsViewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(analyticsViewHolder, "holder");
        analyticsViewHolder.bind((AnalyticsItem) this.items.get(i));
    }

    public final int getItemCount() {
        return this.items.size();
    }

    public final int getItemViewType(int i) {
        return ((AnalyticsItem) this.items.get(i)).getType();
    }

    public final AnalyticsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 0:
                viewGroup = AnalyticsItemHeaderBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemHeaderBindi…tInflater, parent, false)");
                return (AnalyticsViewHolder) new ItemViewHeaderHolder(viewGroup);
            case 1:
                viewGroup = AnalyticsItemChartBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemChartBindin…tInflater, parent, false)");
                return (AnalyticsViewHolder) new ItemChartViewHolder(viewGroup);
            case 2:
                viewGroup = AnalyticsItemSectionPersonBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemSectionPers…tInflater, parent, false)");
                return (AnalyticsViewHolder) new ItemViewPersonHolder(viewGroup);
            case 3:
                viewGroup = AnalyticsItemSectionBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemSectionBind…tInflater, parent, false)");
                return (AnalyticsViewHolder) new ItemViewSectionHolder(viewGroup);
            case 4:
                viewGroup = AnalyticsItemOperationBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemOperationBi…tInflater, parent, false)");
                return (AnalyticsViewHolder) new ItemViewHolder(viewGroup);
            case 5:
                viewGroup = AnalyticsItemMerchantOperationBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemMerchantOpe…tInflater, parent, false)");
                return (AnalyticsViewHolder) new MerchantOperationViewHolder(viewGroup);
            case 6:
                viewGroup = AnalyticsItemTagOperationBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemTagOperatio…tInflater, parent, false)");
                return (AnalyticsViewHolder) new TagOperationViewHolder(viewGroup);
            case 7:
                viewGroup = AnalyticsEmptyBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsEmptyBinding.in…tInflater, parent, false)");
                return (AnalyticsViewHolder) new AnalyticsEmptyViewHolder(viewGroup);
            default:
                viewGroup = AnalyticsItemOperationBinding.inflate(from, viewGroup, false);
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnalyticsItemOperationBi…tInflater, parent, false)");
                return (AnalyticsViewHolder) new ItemViewHolder(viewGroup);
        }
    }
}
