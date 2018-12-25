package rx.internal.operators;

import java.util.concurrent.Callable;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.exceptions.Exceptions;

public final class SingleFromCallable<T> implements OnSubscribe<T> {
    final Callable<? extends T> callable;

    public SingleFromCallable(Callable<? extends T> callable) {
        this.callable = callable;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        try {
            singleSubscriber.onSuccess(this.callable.call());
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            singleSubscriber.onError(th);
        }
    }
}
