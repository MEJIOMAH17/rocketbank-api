package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;

public final class CompletableOnSubscribeConcat implements OnSubscribe {
    final int prefetch;
    final Observable<Completable> sources;

    static final class CompletableConcatSubscriber extends Subscriber<Completable> {
        final CompletableSubscriber actual;
        volatile boolean done;
        final ConcatInnerSubscriber inner = new ConcatInnerSubscriber();
        final AtomicBoolean once = new AtomicBoolean();
        final SpscArrayQueue<Completable> queue;
        final SerialSubscription sr = new SerialSubscription();
        final AtomicInteger wip = new AtomicInteger();

        final class ConcatInnerSubscriber implements CompletableSubscriber {
            ConcatInnerSubscriber() {
            }

            public final void onSubscribe(Subscription subscription) {
                CompletableConcatSubscriber.this.sr.set(subscription);
            }

            public final void onError(Throwable th) {
                CompletableConcatSubscriber.this.innerError(th);
            }

            public final void onCompleted() {
                CompletableConcatSubscriber.this.innerComplete();
            }
        }

        public CompletableConcatSubscriber(CompletableSubscriber completableSubscriber, int i) {
            this.actual = completableSubscriber;
            this.queue = new SpscArrayQueue(i);
            add(this.sr);
            request((long) i);
        }

        public final void onNext(Completable completable) {
            if (this.queue.offer(completable) == null) {
                onError(new MissingBackpressureException());
                return;
            }
            if (this.wip.getAndIncrement() == null) {
                next();
            }
        }

        public final void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                this.actual.onError(th);
            } else {
                RxJavaHooks.onError(th);
            }
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                if (this.wip.getAndIncrement() == 0) {
                    next();
                }
            }
        }

        final void innerError(Throwable th) {
            unsubscribe();
            onError(th);
        }

        final void innerComplete() {
            if (this.wip.decrementAndGet() != 0) {
                next();
            }
            if (!this.done) {
                request(1);
            }
        }

        final void next() {
            boolean z = this.done;
            Completable completable = (Completable) this.queue.poll();
            if (completable != null) {
                completable.unsafeSubscribe(this.inner);
            } else if (z) {
                if (this.once.compareAndSet(false, true)) {
                    this.actual.onCompleted();
                }
            } else {
                RxJavaHooks.onError(new IllegalStateException("Queue is empty?!"));
            }
        }
    }

    public CompletableOnSubscribeConcat(Observable<? extends Completable> observable, int i) {
        this.sources = observable;
        this.prefetch = i;
    }

    public final void call(CompletableSubscriber completableSubscriber) {
        Subscriber completableConcatSubscriber = new CompletableConcatSubscriber(completableSubscriber, this.prefetch);
        completableSubscriber.onSubscribe(completableConcatSubscriber);
        this.sources.subscribe(completableConcatSubscriber);
    }
}
