package rx.internal.operators;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Single;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.plugins.RxJavaHooks;

public final class SingleTakeUntilSingle<T, U> implements OnSubscribe<T> {
    final Single<? extends U> other;
    final OnSubscribe<T> source;

    static final class TakeUntilSourceSubscriber<T, U> extends SingleSubscriber<T> {
        final SingleSubscriber<? super T> actual;
        final AtomicBoolean once = new AtomicBoolean();
        final SingleSubscriber<U> other = new OtherSubscriber();

        final class OtherSubscriber extends SingleSubscriber<U> {
            OtherSubscriber() {
            }

            public final void onSuccess(U u) {
                onError(new CancellationException("Stream was canceled before emitting a terminal event."));
            }

            public final void onError(Throwable th) {
                TakeUntilSourceSubscriber.this.onError(th);
            }
        }

        TakeUntilSourceSubscriber(SingleSubscriber<? super T> singleSubscriber) {
            this.actual = singleSubscriber;
            add(this.other);
        }

        public final void onSuccess(T t) {
            if (this.once.compareAndSet(false, true)) {
                unsubscribe();
                this.actual.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                unsubscribe();
                this.actual.onError(th);
                return;
            }
            RxJavaHooks.onError(th);
        }
    }

    public SingleTakeUntilSingle(OnSubscribe<T> onSubscribe, Single<? extends U> single) {
        this.source = onSubscribe;
        this.other = single;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        Object takeUntilSourceSubscriber = new TakeUntilSourceSubscriber(singleSubscriber);
        singleSubscriber.add(takeUntilSourceSubscriber);
        this.other.subscribe(takeUntilSourceSubscriber.other);
        this.source.call(takeUntilSourceSubscriber);
    }
}
