package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.Subscription;
import rx.functions.Action0;

public final class SingleDelay<T> implements OnSubscribe<T> {
    final long delay;
    final Scheduler scheduler;
    final OnSubscribe<T> source;
    final TimeUnit unit;

    static final class ObserveOnSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        final SingleSubscriber<? super T> actual;
        final long delay;
        Throwable error;
        final TimeUnit unit;
        T value;
        /* renamed from: w */
        final Worker f770w;

        public ObserveOnSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Worker worker, long j, TimeUnit timeUnit) {
            this.actual = singleSubscriber;
            this.f770w = worker;
            this.delay = j;
            this.unit = timeUnit;
        }

        public final void onSuccess(T t) {
            this.value = t;
            this.f770w.schedule(this, this.delay, this.unit);
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.f770w.schedule(this, this.delay, this.unit);
        }

        public final void call() {
            try {
                Throwable th = this.error;
                if (th != null) {
                    this.error = null;
                    this.actual.onError(th);
                } else {
                    Object obj = this.value;
                    this.value = null;
                    this.actual.onSuccess(obj);
                }
                this.f770w.unsubscribe();
            } catch (Throwable th2) {
                this.f770w.unsubscribe();
            }
        }
    }

    public SingleDelay(OnSubscribe<T> onSubscribe, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.source = onSubscribe;
        this.scheduler = scheduler;
        this.delay = j;
        this.unit = timeUnit;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        Subscription createWorker = this.scheduler.createWorker();
        Subscription observeOnSingleSubscriber = new ObserveOnSingleSubscriber(singleSubscriber, createWorker, this.delay, this.unit);
        singleSubscriber.add(createWorker);
        singleSubscriber.add(observeOnSingleSubscriber);
        this.source.call(observeOnSingleSubscriber);
    }
}
