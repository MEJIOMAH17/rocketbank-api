package ru.rocketbank.core.manager.loader.cacher.discounts;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref.ObjectRef;
import ru.rocketbank.core.model.discounts.Category;

/* compiled from: DiscountCache.kt */
final class DiscountCache$checkDeletion$2 implements Runnable {
    final /* synthetic */ ObjectRef $currentCategory;
    final /* synthetic */ int $i;
    final /* synthetic */ DiscountCache this$0;

    DiscountCache$checkDeletion$2(DiscountCache discountCache, ObjectRef objectRef, int i) {
        this.this$0 = discountCache;
        this.$currentCategory = objectRef;
        this.$i = i;
    }

    public final void run() {
        DiscountsChangedListener listener = this.this$0.getListener();
        if (listener == null) {
            Intrinsics.throwNpe();
        }
        listener.onCategoryRemoved((Category) this.$currentCategory.element, this.$i);
    }
}
