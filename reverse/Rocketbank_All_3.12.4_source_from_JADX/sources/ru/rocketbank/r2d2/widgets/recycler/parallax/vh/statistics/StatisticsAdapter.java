package ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StatisticsAdapter.kt */
public class StatisticsAdapter {
    private final ArrayList<StatisticItem> fullList = new ArrayList();
    private final ArrayList<StatisticItem> shortList = new ArrayList();
    private StatisticItem totalItem;

    public final ArrayList<StatisticItem> getFullList() {
        return this.fullList;
    }

    public final ArrayList<StatisticItem> getShortList() {
        return this.shortList;
    }

    public final StatisticItem getTotalItem() {
        return this.totalItem;
    }

    public final void setTotalItem(StatisticItem statisticItem) {
        this.totalItem = statisticItem;
    }

    public final void setItems(List<StatisticItem> list, List<StatisticItem> list2, StatisticItem statisticItem) {
        Intrinsics.checkParameterIsNotNull(list, "shortList");
        Intrinsics.checkParameterIsNotNull(list2, "fullList");
        this.fullList.clear();
        this.fullList.addAll(list2);
        this.shortList.clear();
        this.shortList.addAll(list);
        this.totalItem = statisticItem;
    }

    public final void clear() {
        this.fullList.clear();
        this.shortList.clear();
    }
}
