package ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.TypefaceManager;
import ru.rocketbank.r2d2.activities.operation.model.StatItem;
import ru.rocketbank.r2d2.databinding.LayoutGeneralStatisticsBinding;
import ru.rocketbank.r2d2.databinding.LayoutStatisticsItemBinding;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: StatisticsViewHolder.kt */
public final class StatisticsViewHolder extends GenericViewHolder implements StatisticHandler {
    private LayoutGeneralStatisticsBinding binding;
    private String collapsedModeActionName = "";
    private StatisticData data = new StatisticData();
    private boolean fullMode;
    private String fullModeActionName = "";
    private final ArrayList<StaticElement> inflatedViews = new ArrayList();
    private LayoutInflater layoutInflater;
    private StatisticsAdapter statisticsAdapter;
    private final View view;

    /* compiled from: StatisticsViewHolder.kt */
    public static final class StaticElement {
        private final LayoutStatisticsItemBinding binding;
        private final StatItem statisticItem = new StatItem();

        public StaticElement(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            Intrinsics.checkParameterIsNotNull(layoutInflater, "layoutInflater");
            Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
            layoutInflater = LayoutStatisticsItemBinding.inflate(layoutInflater, viewGroup, true);
            Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "LayoutStatisticsItemBind…utInflater, parent, true)");
            this.binding = layoutInflater;
            this.binding.setItem(this.statisticItem);
        }

        public final StatItem getStatisticItem() {
            return this.statisticItem;
        }

        public final LayoutStatisticsItemBinding getBinding() {
            return this.binding;
        }
    }

    public StatisticsViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super(view);
        this.view = view;
        view = LayoutGeneralStatisticsBinding.bind(this.view);
        Intrinsics.checkExpressionValueIsNotNull(view, "LayoutGeneralStatisticsBinding.bind(view)");
        this.binding = view;
        this.binding.setData(this.data);
        this.binding.setHandler(this);
        view = this.view.getContext().getSystemService("layout_inflater");
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        this.layoutInflater = (LayoutInflater) view;
    }

    public final View getView() {
        return this.view;
    }

    public final String getFullModeActionName() {
        return this.fullModeActionName;
    }

    public final void setFullModeActionName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.fullModeActionName = str;
    }

    public final String getCollapsedModeActionName() {
        return this.collapsedModeActionName;
    }

    public final void setCollapsedModeActionName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.collapsedModeActionName = str;
    }

    public final ArrayList<StaticElement> getInflatedViews() {
        return this.inflatedViews;
    }

    public final void onBind(StatisticsAdapter statisticsAdapter, String str, String str2) {
        Intrinsics.checkParameterIsNotNull(statisticsAdapter, "statisticsAdapter");
        Intrinsics.checkParameterIsNotNull(str, "collapsedModeActionName");
        Intrinsics.checkParameterIsNotNull(str2, "fullModeActionName");
        this.statisticsAdapter = statisticsAdapter;
        this.collapsedModeActionName = str;
        this.fullModeActionName = str2;
        rebuildView();
    }

    public final void destroyView(StaticElement staticElement) {
        Intrinsics.checkParameterIsNotNull(staticElement, "statisticItem");
        this.binding.statisticsContainer.removeView((View) staticElement.getBinding().root);
    }

    public final void rebuildView() {
        ArrayList fullList;
        List list;
        Collection collection;
        int i;
        Object[] toArray;
        this.data.getModeName().set(this.fullMode ? this.fullModeActionName : this.collapsedModeActionName);
        StatisticsAdapter statisticsAdapter;
        StatisticsAdapter statisticsAdapter2;
        StatisticItem totalItem;
        ArrayList arrayList;
        int size;
        if (this.fullMode) {
            statisticsAdapter = this.statisticsAdapter;
            if (statisticsAdapter != null) {
                fullList = statisticsAdapter.getFullList();
                if (fullList != null) {
                    list = fullList;
                } else {
                    list = CollectionsKt.emptyList();
                }
                collection = list;
                if (collection == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
                }
                i = 0;
                toArray = collection.toArray(new StatisticItem[0]);
                if (toArray == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                StatisticItem[] statisticItemArr = (StatisticItem[]) toArray;
                list = CollectionsKt.mutableListOf((StatisticItem[]) Arrays.copyOf(statisticItemArr, statisticItemArr.length));
                statisticsAdapter2 = this.statisticsAdapter;
                if (statisticsAdapter2 != null) {
                    totalItem = statisticsAdapter2.getTotalItem();
                    if (totalItem != null) {
                        list.add(totalItem);
                    }
                }
                arrayList = new ArrayList();
                size = list.size();
                while (i < size) {
                    StaticElement orInflate = getOrInflate(i);
                    StatisticItem statisticItem = (StatisticItem) list.get(i);
                    orInflate.getStatisticItem().setAmount(statisticItem.getValue());
                    orInflate.getStatisticItem().setMonth(statisticItem.getName());
                    StatisticsAdapter statisticsAdapter3 = this.statisticsAdapter;
                    int i2 = Intrinsics.areEqual(statisticItem, statisticsAdapter3 != null ? statisticsAdapter3.getTotalItem() : null) ? 6 : 7;
                    TypefaceManager.getInstance().setTypeface(i2, orInflate.getBinding().amount);
                    TypefaceManager.getInstance().setTypeface(i2, orInflate.getBinding().forMonth);
                    orInflate.getBinding().amount.invalidate();
                    orInflate.getBinding().forMonth.invalidate();
                    orInflate.getBinding().invalidateAll();
                    arrayList.add(orInflate);
                    i++;
                }
                for (StaticElement staticElement : this.inflatedViews) {
                    if (arrayList.contains(staticElement)) {
                        destroyView(staticElement);
                    }
                }
                this.inflatedViews.clear();
                this.inflatedViews.addAll(arrayList);
            }
        }
        statisticsAdapter = this.statisticsAdapter;
        if (statisticsAdapter != null) {
            fullList = statisticsAdapter.getShortList();
            if (fullList != null) {
                list = CollectionsKt.emptyList();
            } else {
                list = fullList;
            }
            collection = list;
            if (collection == null) {
                i = 0;
                toArray = collection.toArray(new StatisticItem[0]);
                if (toArray == null) {
                    StatisticItem[] statisticItemArr2 = (StatisticItem[]) toArray;
                    list = CollectionsKt.mutableListOf((StatisticItem[]) Arrays.copyOf(statisticItemArr2, statisticItemArr2.length));
                    statisticsAdapter2 = this.statisticsAdapter;
                    if (statisticsAdapter2 != null) {
                        totalItem = statisticsAdapter2.getTotalItem();
                        if (totalItem != null) {
                            list.add(totalItem);
                        }
                    }
                    arrayList = new ArrayList();
                    size = list.size();
                    while (i < size) {
                        StaticElement orInflate2 = getOrInflate(i);
                        StatisticItem statisticItem2 = (StatisticItem) list.get(i);
                        orInflate2.getStatisticItem().setAmount(statisticItem2.getValue());
                        orInflate2.getStatisticItem().setMonth(statisticItem2.getName());
                        StatisticsAdapter statisticsAdapter32 = this.statisticsAdapter;
                        if (statisticsAdapter32 != null) {
                        }
                        if (Intrinsics.areEqual(statisticItem2, statisticsAdapter32 != null ? statisticsAdapter32.getTotalItem() : null)) {
                        }
                        TypefaceManager.getInstance().setTypeface(i2, orInflate2.getBinding().amount);
                        TypefaceManager.getInstance().setTypeface(i2, orInflate2.getBinding().forMonth);
                        orInflate2.getBinding().amount.invalidate();
                        orInflate2.getBinding().forMonth.invalidate();
                        orInflate2.getBinding().invalidateAll();
                        arrayList.add(orInflate2);
                        i++;
                    }
                    for (StaticElement staticElement2 : this.inflatedViews) {
                        if (arrayList.contains(staticElement2)) {
                            destroyView(staticElement2);
                        }
                    }
                    this.inflatedViews.clear();
                    this.inflatedViews.addAll(arrayList);
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
        }
        fullList = null;
        if (fullList != null) {
            list = fullList;
        } else {
            list = CollectionsKt.emptyList();
        }
        collection = list;
        if (collection == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
        }
        i = 0;
        toArray = collection.toArray(new StatisticItem[0]);
        if (toArray == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        StatisticItem[] statisticItemArr22 = (StatisticItem[]) toArray;
        list = CollectionsKt.mutableListOf((StatisticItem[]) Arrays.copyOf(statisticItemArr22, statisticItemArr22.length));
        statisticsAdapter2 = this.statisticsAdapter;
        if (statisticsAdapter2 != null) {
            totalItem = statisticsAdapter2.getTotalItem();
            if (totalItem != null) {
                list.add(totalItem);
            }
        }
        arrayList = new ArrayList();
        size = list.size();
        while (i < size) {
            StaticElement orInflate22 = getOrInflate(i);
            StatisticItem statisticItem22 = (StatisticItem) list.get(i);
            orInflate22.getStatisticItem().setAmount(statisticItem22.getValue());
            orInflate22.getStatisticItem().setMonth(statisticItem22.getName());
            StatisticsAdapter statisticsAdapter322 = this.statisticsAdapter;
            if (statisticsAdapter322 != null) {
            }
            if (Intrinsics.areEqual(statisticItem22, statisticsAdapter322 != null ? statisticsAdapter322.getTotalItem() : null)) {
            }
            TypefaceManager.getInstance().setTypeface(i2, orInflate22.getBinding().amount);
            TypefaceManager.getInstance().setTypeface(i2, orInflate22.getBinding().forMonth);
            orInflate22.getBinding().amount.invalidate();
            orInflate22.getBinding().forMonth.invalidate();
            orInflate22.getBinding().invalidateAll();
            arrayList.add(orInflate22);
            i++;
        }
        for (StaticElement staticElement22 : this.inflatedViews) {
            if (arrayList.contains(staticElement22)) {
                destroyView(staticElement22);
            }
        }
        this.inflatedViews.clear();
        this.inflatedViews.addAll(arrayList);
    }

    public final StaticElement getOrInflate(int i) {
        if (this.inflatedViews.size() <= i) {
            return inflateItem();
        }
        i = this.inflatedViews.get(i);
        Intrinsics.checkExpressionValueIsNotNull(i, "inflatedViews.get(index)");
        return (StaticElement) i;
    }

    public final void onModeSwitch() {
        this.fullMode ^= 1;
        rebuildView();
    }

    public final StaticElement inflateItem() {
        LayoutInflater layoutInflater = this.layoutInflater;
        LinearLayout linearLayout = this.binding.statisticsContainer;
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "binding.statisticsContainer");
        return new StaticElement(layoutInflater, linearLayout);
    }
}
