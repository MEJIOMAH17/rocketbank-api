package ru.rocketbank.core.utils.presenter;

import kotlin.jvm.internal.Intrinsics;
import rx.Notification;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: DeliverSimple.kt */
final class DeliverSimple$call$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ DeliverSimple this$0;

    DeliverSimple$call$1(DeliverSimple deliverSimple) {
        this.this$0 = deliverSimple;
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
