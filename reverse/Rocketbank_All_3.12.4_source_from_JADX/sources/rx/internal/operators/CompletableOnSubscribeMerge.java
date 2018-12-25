package rx.internal.operators;

import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.CompositeException;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.CompositeSubscription;

public final class CompletableOnSubscribeMerge implements OnSubscribe {
    final boolean delayErrors;
    final int maxConcurrency;
    final Observable<Completable> source;

    static final class CompletableMergeSubscriber extends Subscriber<Completable> {
        final CompletableSubscriber actual;
        final boolean delayErrors;
        volatile boolean done;
        final AtomicReference<Queue<Throwable>> errors = new AtomicReference();
        final AtomicBoolean once = new AtomicBoolean();
        final CompositeSubscription set = new CompositeSubscription();
        final AtomicInteger wip = new AtomicInteger(true);

        /* renamed from: rx.internal.operators.CompletableOnSubscribeMerge$CompletableMergeSubscriber$1 */
        class C17021 implements CompletableSubscriber {
            /* renamed from: d */
            Subscription f758d;
            boolean innerDone;

            C17021() {
            }

            public void onSubscribe(Subscription subscription) {
                this.f758d = subscription;
                CompletableMergeSubscriber.this.set.add(subscription);
            }

            public void onError(Throwable th) {
                if (this.innerDone) {
                    RxJavaHooks.onError(th);
                    return;
                }
                this.innerDone = true;
                CompletableMergeSubscriber.this.set.remove(this.f758d);
                CompletableMergeSubscriber.this.getOrCreateErrors().offer(th);
                CompletableMergeSubscriber.this.terminate();
                if (CompletableMergeSubscriber.this.delayErrors != null && CompletableMergeSubscriber.this.done == null) {
                    CompletableMergeSubscriber.this.request(1);
                }
            }

            public void onCompleted() {
                if (!this.innerDone) {
                    this.innerDone = true;
                    CompletableMergeSubscriber.this.set.remove(this.f758d);
                    CompletableMergeSubscriber.this.terminate();
                    if (!CompletableMergeSubscriber.this.done) {
                        CompletableMergeSubscriber.this.request(1);
                    }
                }
            }
        }

        public CompletableMergeSubscriber(CompletableSubscriber completableSubscriber, int i, boolean z) {
            this.actual = completableSubscriber;
            this.delayErrors = z;
            if (i == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                request(-1);
            } else {
                request((long) i);
            }
        }

        final Queue<Throwable> getOrCreateErrors() {
            Queue<Throwable> queue = (Queue) this.errors.get();
            if (queue != null) {
                return queue;
            }
            Queue concurrentLinkedQueue = new ConcurrentLinkedQueue();
            if (this.errors.compareAndSet(null, concurrentLinkedQueue)) {
                return concurrentLinkedQueue;
            }
            return (Queue) this.errors.get();
        }

        public final void onNext(Completable completable) {
            if (!this.done) {
                this.wip.getAndIncrement();
                completable.unsafeSubscribe(new C17021());
            }
        }

        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            getOrCreateErrors().offer(th);
            this.done = true;
            terminate();
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                terminate();
            }
        }

        final void terminate() {
            Queue queue;
            Throwable collectErrors;
            if (this.wip.decrementAndGet() == 0) {
                queue = (Queue) this.errors.get();
                if (queue != null) {
                    if (!queue.isEmpty()) {
                        collectErrors = CompletableOnSubscribeMerge.collectErrors(queue);
                        if (this.once.compareAndSet(false, true)) {
                            this.actual.onError(collectErrors);
                            return;
                        } else {
                            RxJavaHooks.onError(collectErrors);
                            return;
                        }
                    }
                }
                this.actual.onCompleted();
                return;
            }
            if (!this.delayErrors) {
                queue = (Queue) this.errors.get();
                if (!(queue == null || queue.isEmpty())) {
                    collectErrors = CompletableOnSubscribeMerge.collectErrors(queue);
                    if (this.once.compareAndSet(false, true)) {
                        this.actual.onError(collectErrors);
                        return;
                    }
                    RxJavaHooks.onError(collectErrors);
                }
            }
        }
    }

    public CompletableOnSubscribeMerge(Observable<? extends Completable> observable, int i, boolean z) {
        this.source = observable;
        this.maxConcurrency = i;
        this.delayErrors = z;
    }

    public final void call(CompletableSubscriber completableSubscriber) {
        Subscriber completableMergeSubscriber = new CompletableMergeSubscriber(completableSubscriber, this.maxConcurrency, this.delayErrors);
        completableSubscriber.onSubscribe(completableMergeSubscriber);
        this.source.subscribe(completableMergeSubscriber);
    }

    public static Throwable collectErrors(Queue<Throwable> queue) {
        Collection arrayList = new ArrayList();
        while (true) {
            Throwable th = (Throwable) queue.poll();
            if (th == null) {
                break;
            }
            arrayList.add(th);
        }
        if (arrayList.isEmpty() != null) {
            return null;
        }
        if (arrayList.size() == 1) {
            return (Throwable) arrayList.get(null);
        }
        return new CompositeException(arrayList);
    }
}
