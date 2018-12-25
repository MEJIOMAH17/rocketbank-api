package ru.rocketbank.core.manager.loader.cacher.discounts;

import ru.rocketbank.core.model.discounts.Category;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;

/* compiled from: DiscountsChangedListener.kt */
public interface DiscountsChangedListener {
    void onCategoryAdded(Category category, int i);

    void onCategoryRemoved(Category category, int i);

    void onDiscountAdded(Category category, int i);

    void onDiscountRemoved(Category category, int i);

    void onDiscountsSelected(MonthCashBack monthCashBack);

    void onError(Throwable th);
}
