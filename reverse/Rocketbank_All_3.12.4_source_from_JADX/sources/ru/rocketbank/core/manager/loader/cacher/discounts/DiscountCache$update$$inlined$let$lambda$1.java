package ru.rocketbank.core.manager.loader.cacher.discounts;

import kotlin.jvm.internal.Intrinsics;
import rx.Subscriber;

/* compiled from: DiscountCache.kt */
public final class DiscountCache$update$$inlined$let$lambda$1 extends Subscriber<Object> {
    final /* synthetic */ DiscountCache this$0;

    public final void onCompleted() {
    }

    DiscountCache$update$$inlined$let$lambda$1(DiscountCache discountCache) {
        this.this$0 = discountCache;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        DiscountsChangedListener listener = this.this$0.getListener();
        if (listener != null) {
            listener.onError(th);
        }
        unsubscribe();
    }

    public final void onNext(Object obj) {
        unsubscribe();
    }
}
