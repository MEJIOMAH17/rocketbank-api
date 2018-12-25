package rx.internal.operators;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.exceptions.Exceptions;
import rx.subscriptions.Subscriptions;

public final class SingleFromFuture<T> implements OnSubscribe<T> {
    final Future<? extends T> future;
    final long timeout;
    final TimeUnit unit;

    public SingleFromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.future = future;
        this.timeout = j;
        this.unit = timeUnit;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        Future future = this.future;
        singleSubscriber.add(Subscriptions.from(future));
        try {
            Object obj;
            if (this.timeout == 0) {
                obj = future.get();
            } else {
                obj = future.get(this.timeout, this.unit);
            }
            singleSubscriber.onSuccess(obj);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            singleSubscriber.onError(th);
        }
    }
}
