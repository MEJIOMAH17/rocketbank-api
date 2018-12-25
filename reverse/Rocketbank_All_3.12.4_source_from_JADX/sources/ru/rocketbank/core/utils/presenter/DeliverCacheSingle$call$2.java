package ru.rocketbank.core.utils.presenter;

import kotlin.jvm.internal.Intrinsics;
import rx.Notification;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: DeliverCacheSingle.kt */
final class DeliverCacheSingle$call$2<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ DeliverCacheSingle this$0;

    DeliverCacheSingle$call$2(DeliverCacheSingle deliverCacheSingle) {
        this.this$0 = deliverCacheSingle;
    }

    public final Observable<Delivery<R, T>> call(final Notification<T> notification) {
        return this.this$0.getTargetObservable().map(new Func1<T, R>() {
            public final Delivery<R, T> call(R r) {
                if (r == null) {
                    return null;
                }
                Notification notification = notification;
                Intrinsics.checkExpressionValueIsNotNull(notification, "notification");
                return new Delivery(r, notification);
            }
        });
    }
}
