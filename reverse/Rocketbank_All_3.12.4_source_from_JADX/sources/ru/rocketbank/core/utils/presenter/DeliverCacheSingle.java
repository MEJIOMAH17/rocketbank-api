package ru.rocketbank.core.utils.presenter;

import android.os.Parcelable;
import android.util.SparseArray;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.Observable.Transformer;

/* compiled from: DeliverCacheSingle.kt */
public final class DeliverCacheSingle<R, T> implements Transformer<T, Delivery<R, T>> {
    private final int instanceId;
    private final SparseArray<Parcelable> requestCache;
    private final Observable<R> targetObservable;

    public DeliverCacheSingle(int i, SparseArray<Parcelable> sparseArray, Observable<R> observable) {
        Intrinsics.checkParameterIsNotNull(sparseArray, "requestCache");
        Intrinsics.checkParameterIsNotNull(observable, "targetObservable");
        this.instanceId = i;
        this.requestCache = sparseArray;
        this.targetObservable = observable;
    }

    public final int getInstanceId() {
        return this.instanceId;
    }

    public final SparseArray<Parcelable> getRequestCache() {
        return this.requestCache;
    }

    public final Observable<R> getTargetObservable() {
        return this.targetObservable;
    }

    public final Observable<Delivery<R, T>> call(Observable<T> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "observable");
        return observable.map(new DeliverCacheSingle$call$1(this)).materialize().switchMap(new DeliverCacheSingle$call$2(this)).filter(DeliverCacheSingle$call$3.INSTANCE).take(1);
    }
}
