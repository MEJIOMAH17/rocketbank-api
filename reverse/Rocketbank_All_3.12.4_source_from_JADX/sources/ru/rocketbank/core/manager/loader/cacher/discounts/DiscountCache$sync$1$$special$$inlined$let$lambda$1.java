package ru.rocketbank.core.manager.loader.cacher.discounts;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.MonthCashBack;

/* compiled from: DiscountCache.kt */
final class DiscountCache$sync$1$$special$$inlined$let$lambda$1 implements Runnable {
    final /* synthetic */ DiscountCache$sync$1 this$0;

    DiscountCache$sync$1$$special$$inlined$let$lambda$1(DiscountCache$sync$1 discountCache$sync$1) {
        this.this$0 = discountCache$sync$1;
    }

    public final void run() {
        DiscountsChangedListener listener = this.this$0.this$0.getListener();
        if (listener != null) {
            MonthCashBack monthCashBack = this.this$0.$collection.chosenMonthCashBack;
            Intrinsics.checkExpressionValueIsNotNull(monthCashBack, "collection.chosenMonthCashBack");
            listener.onDiscountsSelected(monthCashBack);
        }
    }
}
