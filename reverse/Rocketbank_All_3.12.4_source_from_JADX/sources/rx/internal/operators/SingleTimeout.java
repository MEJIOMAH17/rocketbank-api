package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Scheduler;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.plugins.RxJavaHooks;

public final class SingleTimeout<T> implements OnSubscribe<T> {
    final OnSubscribe<? extends T> other;
    final Scheduler scheduler;
    final OnSubscribe<T> source;
    final long timeout;
    final TimeUnit unit;

    static final class TimeoutSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        final SingleSubscriber<? super T> actual;
        final AtomicBoolean once = new AtomicBoolean();
        final OnSubscribe<? extends T> other;

        static final class OtherSubscriber<T> extends SingleSubscriber<T> {
            final SingleSubscriber<? super T> actual;

            OtherSubscriber(SingleSubscriber<? super T> singleSubscriber) {
                this.actual = singleSubscriber;
            }

            public final void onSuccess(T t) {
                this.actual.onSuccess(t);
            }

            public final void onError(Throwable th) {
                this.actual.onError(th);
            }
        }

        TimeoutSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, OnSubscribe<? extends T> onSubscribe) {
            this.actual = singleSubscriber;
            this.other = onSubscribe;
        }

        public final void onSuccess(T t) {
            if (this.once.compareAndSet(false, true)) {
                try {
                    this.actual.onSuccess(t);
                } finally {
                    unsubscribe();
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                try {
                    this.actual.onError(th);
                } finally {
                    unsubscribe();
                }
            } else {
                RxJavaHooks.onError(th);
            }
        }

        public final void call() {
            if (this.once.compareAndSet(false, true)) {
                try {
                    OnSubscribe onSubscribe = this.other;
                    if (onSubscribe == null) {
                        this.actual.onError(new TimeoutException());
                    } else {
                        Subscription otherSubscriber = new OtherSubscriber(this.actual);
                        this.actual.add(otherSubscriber);
                        onSubscribe.call(otherSubscriber);
                    }
                    unsubscribe();
                } catch (Throwable th) {
                    unsubscribe();
                }
            }
        }
    }

    public SingleTimeout(OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Scheduler scheduler, OnSubscribe<? extends T> onSubscribe2) {
        this.source = onSubscribe;
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.other = onSubscribe2;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        Object timeoutSingleSubscriber = new TimeoutSingleSubscriber(singleSubscriber, this.other);
        Object createWorker = this.scheduler.createWorker();
        timeoutSingleSubscriber.add(createWorker);
        singleSubscriber.add(timeoutSingleSubscriber);
        createWorker.schedule(timeoutSingleSubscriber, this.timeout, this.unit);
        this.source.call(timeoutSingleSubscriber);
    }
}
