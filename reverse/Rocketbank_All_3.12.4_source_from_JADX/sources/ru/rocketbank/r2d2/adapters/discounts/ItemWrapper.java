package ru.rocketbank.r2d2.adapters.discounts;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.discounts.Category;
import ru.rocketbank.core.model.discounts.Gamer;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;

/* compiled from: ItemWrapper.kt */
public final class ItemWrapper {
    private final Category category;
    private final List<Gamer> games;
    private final MonthCashBack monthCashback;
    private final int type;

    public ItemWrapper() {
        this(0, null, null, null, 15, null);
    }

    public static /* bridge */ /* synthetic */ ItemWrapper copy$default(ItemWrapper itemWrapper, int i, MonthCashBack monthCashBack, Category category, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = itemWrapper.type;
        }
        if ((i2 & 2) != 0) {
            monthCashBack = itemWrapper.monthCashback;
        }
        if ((i2 & 4) != 0) {
            category = itemWrapper.category;
        }
        if ((i2 & 8) != 0) {
            list = itemWrapper.games;
        }
        return itemWrapper.copy(i, monthCashBack, category, list);
    }

    public final int component1() {
        return this.type;
    }

    public final MonthCashBack component2() {
        return this.monthCashback;
    }

    public final Category component3() {
        return this.category;
    }

    public final List<Gamer> component4() {
        return this.games;
    }

    public final ItemWrapper copy(int i, MonthCashBack monthCashBack, Category category, List<? extends Gamer> list) {
        return new ItemWrapper(i, monthCashBack, category, list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ItemWrapper) {
            ItemWrapper itemWrapper = (ItemWrapper) obj;
            return (this.type == itemWrapper.type) && Intrinsics.areEqual(this.monthCashback, itemWrapper.monthCashback) && Intrinsics.areEqual(this.category, itemWrapper.category) && Intrinsics.areEqual(this.games, itemWrapper.games);
        }
    }

    public final int hashCode() {
        int i = this.type * 31;
        MonthCashBack monthCashBack = this.monthCashback;
        int i2 = 0;
        i = (i + (monthCashBack != null ? monthCashBack.hashCode() : 0)) * 31;
        Category category = this.category;
        i = (i + (category != null ? category.hashCode() : 0)) * 31;
        List list = this.games;
        if (list != null) {
            i2 = list.hashCode();
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ItemWrapper(type=");
        stringBuilder.append(this.type);
        stringBuilder.append(", monthCashback=");
        stringBuilder.append(this.monthCashback);
        stringBuilder.append(", category=");
        stringBuilder.append(this.category);
        stringBuilder.append(", games=");
        stringBuilder.append(this.games);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ItemWrapper(int i, MonthCashBack monthCashBack, Category category, List<? extends Gamer> list) {
        this.type = i;
        this.monthCashback = monthCashBack;
        this.category = category;
        this.games = list;
    }

    public final int getType() {
        return this.type;
    }

    public final MonthCashBack getMonthCashback() {
        return this.monthCashback;
    }

    public final Category getCategory() {
        return this.category;
    }

    public /* synthetic */ ItemWrapper(int i, MonthCashBack monthCashBack, Category category, List list, int i2, Ref ref) {
        if ((i2 & 1) != null) {
            i = 0;
        }
        if ((i2 & 2) != null) {
            monthCashBack = null;
        }
        if ((i2 & 4) != null) {
            category = null;
        }
        if ((i2 & 8) != 0) {
            list = null;
        }
        this(i, monthCashBack, category, list);
    }

    public final List<Gamer> getGames() {
        return this.games;
    }
}
