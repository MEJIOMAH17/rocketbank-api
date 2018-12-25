package ru.rocketbank.core.manager.loader.cacher.discounts;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.discounts.DiscountsCollection;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: DiscountCache.kt */
final class DiscountCache$sync$1<T> implements OnSubscribe<T> {
    final /* synthetic */ DiscountsCollection $collection;
    final /* synthetic */ DiscountCache this$0;

    DiscountCache$sync$1(DiscountCache discountCache, DiscountsCollection discountsCollection) {
        this.this$0 = discountCache;
        this.$collection = discountsCollection;
    }

    public final void call(Subscriber<? super Object> subscriber) {
        try {
            if (!(this.this$0.isEmpty() || this.this$0.getListener() == null || this.this$0.isDiscountsSelected || this.$collection.chosenMonthCashBack == null)) {
                this.this$0.handler.post(new DiscountCache$sync$1$$special$$inlined$let$lambda$1(this));
                this.this$0.isDiscountsSelected = true;
                DiscountCache discountCache = this.this$0;
                DiscountsCollection lastCollection = this.this$0.getLastCollection();
                if (lastCollection == null) {
                    Intrinsics.throwNpe();
                }
                List list = lastCollection.categories;
                Intrinsics.checkExpressionValueIsNotNull(list, "lastCollection!!.categories");
                List list2 = this.$collection.categories;
                Intrinsics.checkExpressionValueIsNotNull(list2, "collection.categories");
                discountCache.checkAddition(list, list2);
                discountCache = this.this$0;
                lastCollection = this.this$0.getLastCollection();
                if (lastCollection == null) {
                    Intrinsics.throwNpe();
                }
                list = lastCollection.categories;
                Intrinsics.checkExpressionValueIsNotNull(list, "lastCollection!!.categories");
                list2 = this.$collection.categories;
                Intrinsics.checkExpressionValueIsNotNull(list2, "collection.categories");
                discountCache.checkDeletion(list, list2);
            }
            this.this$0.setLastCollection(this.$collection);
            subscriber.onNext(null);
        } catch (Throwable th) {
            subscriber.onError(th);
        }
    }
}
