package ru.rocketbank.core.utils.presenter;

import rx.functions.Func1;

/* compiled from: DeliverCacheSingle.kt */
final class DeliverCacheSingle$call$3<T, R> implements Func1<Delivery<R, T>, Boolean> {
    public static final DeliverCacheSingle$call$3 INSTANCE = new DeliverCacheSingle$call$3();

    DeliverCacheSingle$call$3() {
    }

    public final boolean call(Delivery<R, T> delivery) {
        return delivery != null;
    }
}
