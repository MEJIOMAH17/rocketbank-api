package ru.rocketbank.core.utils.presenter;

import android.os.Parcelable;
import android.util.SparseArray;
import kotlin.TypeCastException;
import rx.functions.Func1;

/* compiled from: DeliverCacheSingle.kt */
final class DeliverCacheSingle$call$1<T, R> implements Func1<T, R> {
    final /* synthetic */ DeliverCacheSingle this$0;

    DeliverCacheSingle$call$1(DeliverCacheSingle deliverCacheSingle) {
        this.this$0 = deliverCacheSingle;
    }

    public final T call(T t) {
        SparseArray requestCache = this.this$0.getRequestCache();
        int instanceId = this.this$0.getInstanceId();
        if (t == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.os.Parcelable");
        }
        requestCache.put(instanceId, (Parcelable) t);
        return t;
    }
}
