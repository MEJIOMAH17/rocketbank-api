package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.subscriptions.CompositeSubscription;

public final class CompletableOnSubscribeMergeDelayErrorArray implements OnSubscribe {
    final Completable[] sources;

    public CompletableOnSubscribeMergeDelayErrorArray(Completable[] completableArr) {
        this.sources = completableArr;
    }

    public final void call(CompletableSubscriber completableSubscriber) {
        CompositeSubscription compositeSubscription = new CompositeSubscription();
        AtomicInteger atomicInteger = new AtomicInteger(this.sources.length + 1);
        Queue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        completableSubscriber.onSubscribe(compositeSubscription);
        Completable[] completableArr = this.sources;
        int length = completableArr.length;
        int i = 0;
        while (i < length) {
            Completable completable = completableArr[i];
            if (!compositeSubscription.isUnsubscribed()) {
                if (completable == null) {
                    concurrentLinkedQueue.offer(new NullPointerException("A completable source is null"));
                    atomicInteger.decrementAndGet();
                } else {
                    final CompositeSubscription compositeSubscription2 = compositeSubscription;
                    final Queue queue = concurrentLinkedQueue;
                    final AtomicInteger atomicInteger2 = atomicInteger;
                    final CompletableSubscriber completableSubscriber2 = completableSubscriber;
                    completable.unsafeSubscribe(new CompletableSubscriber() {
                        public void onSubscribe(Subscription subscription) {
                            compositeSubscription2.add(subscription);
                        }

                        public void onError(Throwable th) {
                            queue.offer(th);
                            tryTerminate();
                        }

                        public void onCompleted() {
                            tryTerminate();
                        }

                        void tryTerminate() {
                            if (atomicInteger2.decrementAndGet() == 0) {
                                if (queue.isEmpty()) {
                                    completableSubscriber2.onCompleted();
                                    return;
                                }
                                completableSubscriber2.onError(CompletableOnSubscribeMerge.collectErrors(queue));
                            }
                        }
                    });
                }
                i++;
            } else {
                return;
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            if (concurrentLinkedQueue.isEmpty()) {
                completableSubscriber.onCompleted();
                return;
            }
            completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(concurrentLinkedQueue));
        }
    }
}
