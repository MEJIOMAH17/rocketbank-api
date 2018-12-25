package ru.rocketbank.core.utils.presenter;

import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.Observable.Transformer;

/* compiled from: DeliverSimple.kt */
public final class DeliverSimple<R, T> implements Transformer<T, Delivery<R, T>> {
    private final int instanceId;
    private final Observable<R> targetObservable;

    public DeliverSimple(int i, Observable<R> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "targetObservable");
        this.instanceId = i;
        this.targetObservable = observable;
    }

    public final int getInstanceId() {
        return this.instanceId;
    }

    public final Observable<R> getTargetObservable() {
        return this.targetObservable;
    }

    public final Observable<Delivery<R, T>> call(Observable<T> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "observable");
        return observable.materialize().switchMap(new DeliverSimple$call$1(this)).filter(DeliverSimple$call$2.INSTANCE).take(1);
    }
}
