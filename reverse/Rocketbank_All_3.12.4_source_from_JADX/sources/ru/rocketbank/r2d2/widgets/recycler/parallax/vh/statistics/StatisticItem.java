package ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: StatisticItem.kt */
public final class StatisticItem {
    private final String name;
    private final String value;

    public static /* bridge */ /* synthetic */ StatisticItem copy$default(StatisticItem statisticItem, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = statisticItem.name;
        }
        if ((i & 2) != 0) {
            str2 = statisticItem.value;
        }
        return statisticItem.copy(str, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.value;
    }

    public final StatisticItem copy(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "value");
        return new StatisticItem(str, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof StatisticItem) {
                StatisticItem statisticItem = (StatisticItem) obj;
                if (Intrinsics.areEqual(this.name, statisticItem.name) && Intrinsics.areEqual(this.value, statisticItem.value)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("StatisticItem(name=");
        stringBuilder.append(this.name);
        stringBuilder.append(", value=");
        stringBuilder.append(this.value);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public StatisticItem(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "value");
        this.name = str;
        this.value = str2;
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }
}
