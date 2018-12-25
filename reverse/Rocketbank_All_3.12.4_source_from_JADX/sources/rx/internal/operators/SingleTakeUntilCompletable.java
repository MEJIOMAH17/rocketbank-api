package rx.internal.operators;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.Subscription;
import rx.plugins.RxJavaHooks;

public final class SingleTakeUntilCompletable<T> implements OnSubscribe<T> {
    final Completable other;
    final OnSubscribe<T> source;

    static final class TakeUntilSourceSubscriber<T> extends SingleSubscriber<T> implements CompletableSubscriber {
        final SingleSubscriber<? super T> actual;
        final AtomicBoolean once = new AtomicBoolean();

        TakeUntilSourceSubscriber(SingleSubscriber<? super T> singleSubscriber) {
            this.actual = singleSubscriber;
        }

        public final void onSubscribe(Subscription subscription) {
            add(subscription);
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

        public final void onCompleted() {
            onError(new CancellationException("Stream was canceled before emitting a terminal event."));
        }
    }

    public SingleTakeUntilCompletable(OnSubscribe<T> onSubscribe, Completable completable) {
        this.source = onSubscribe;
        this.other = completable;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        CompletableSubscriber takeUntilSourceSubscriber = new TakeUntilSourceSubscriber(singleSubscriber);
        singleSubscriber.add(takeUntilSourceSubscriber);
        this.other.subscribe(takeUntilSourceSubscriber);
        this.source.call(takeUntilSourceSubscriber);
    }
}
