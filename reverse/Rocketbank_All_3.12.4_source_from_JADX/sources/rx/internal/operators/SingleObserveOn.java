package rx.internal.operators;

import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.Subscription;
import rx.functions.Action0;

public final class SingleObserveOn<T> implements OnSubscribe<T> {
    final Scheduler scheduler;
    final OnSubscribe<T> source;

    static final class ObserveOnSingleSubscriber<T> extends SingleSubscriber<T> implements Action0 {
        final SingleSubscriber<? super T> actual;
        Throwable error;
        T value;
        /* renamed from: w */
        final Worker f771w;

        public ObserveOnSingleSubscriber(SingleSubscriber<? super T> singleSubscriber, Worker worker) {
            this.actual = singleSubscriber;
            this.f771w = worker;
        }

        public final void onSuccess(T t) {
            this.value = t;
            this.f771w.schedule(this);
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.f771w.schedule(this);
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
                this.f771w.unsubscribe();
            } catch (Throwable th2) {
                this.f771w.unsubscribe();
            }
        }
    }

    public SingleObserveOn(OnSubscribe<T> onSubscribe, Scheduler scheduler) {
        this.source = onSubscribe;
        this.scheduler = scheduler;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        Subscription createWorker = this.scheduler.createWorker();
        Subscription observeOnSingleSubscriber = new ObserveOnSingleSubscriber(singleSubscriber, createWorker);
        singleSubscriber.add(createWorker);
        singleSubscriber.add(observeOnSingleSubscriber);
        this.source.call(observeOnSingleSubscriber);
    }
}
