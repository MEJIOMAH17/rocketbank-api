package rx.internal.operators;

import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.internal.util.unsafe.MpscLinkedQueue;
import rx.subscriptions.CompositeSubscription;

public final class CompletableOnSubscribeMergeDelayErrorIterable implements OnSubscribe {
    final Iterable<? extends Completable> sources;

    public CompletableOnSubscribeMergeDelayErrorIterable(Iterable<? extends Completable> iterable) {
        this.sources = iterable;
    }

    public final void call(CompletableSubscriber completableSubscriber) {
        CompositeSubscription compositeSubscription = new CompositeSubscription();
        completableSubscriber.onSubscribe(compositeSubscription);
        try {
            Iterator it = this.sources.iterator();
            if (it == null) {
                completableSubscriber.onError(new NullPointerException("The source iterator returned is null"));
                return;
            }
            AtomicInteger atomicInteger = new AtomicInteger(1);
            Queue mpscLinkedQueue = new MpscLinkedQueue();
            while (!compositeSubscription.isUnsubscribed()) {
                try {
                    if (!it.hasNext()) {
                        if (atomicInteger.decrementAndGet() == 0) {
                            if (mpscLinkedQueue.isEmpty()) {
                                completableSubscriber.onCompleted();
                                return;
                            }
                            completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                        }
                        return;
                    } else if (!compositeSubscription.isUnsubscribed()) {
                        try {
                            Completable completable = (Completable) it.next();
                            if (!compositeSubscription.isUnsubscribed()) {
                                if (completable == null) {
                                    mpscLinkedQueue.offer(new NullPointerException("A completable source is null"));
                                    if (atomicInteger.decrementAndGet() == 0) {
                                        if (mpscLinkedQueue.isEmpty()) {
                                            completableSubscriber.onCompleted();
                                            return;
                                        }
                                        completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                                    }
                                    return;
                                }
                                atomicInteger.getAndIncrement();
                                final CompositeSubscription compositeSubscription2 = compositeSubscription;
                                final Queue queue = mpscLinkedQueue;
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
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            mpscLinkedQueue.offer(th);
                            if (atomicInteger.decrementAndGet() == 0) {
                                if (mpscLinkedQueue.isEmpty()) {
                                    completableSubscriber.onCompleted();
                                    return;
                                }
                                completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                            }
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    mpscLinkedQueue.offer(th2);
                    if (atomicInteger.decrementAndGet() == 0) {
                        if (mpscLinkedQueue.isEmpty()) {
                            completableSubscriber.onCompleted();
                            return;
                        }
                        completableSubscriber.onError(CompletableOnSubscribeMerge.collectErrors(mpscLinkedQueue));
                    }
                    return;
                }
            }
        } catch (Throwable th22) {
            completableSubscriber.onError(th22);
        }
    }
}
