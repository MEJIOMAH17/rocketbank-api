package ru.rocketbank.core.utils.presenter;

import rx.functions.Func1;

/* compiled from: DeliverSimple.kt */
final class DeliverSimple$call$2<T, R> implements Func1<Delivery<R, T>, Boolean> {
    public static final DeliverSimple$call$2 INSTANCE = new DeliverSimple$call$2();

    DeliverSimple$call$2() {
    }

    public final boolean call(Delivery<R, T> delivery) {
        return delivery != null;
    }
}
