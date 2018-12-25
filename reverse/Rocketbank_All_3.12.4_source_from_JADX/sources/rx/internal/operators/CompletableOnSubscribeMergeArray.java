package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.CompositeSubscription;

public final class CompletableOnSubscribeMergeArray implements OnSubscribe {
    final Completable[] sources;

    public CompletableOnSubscribeMergeArray(Completable[] completableArr) {
        this.sources = completableArr;
    }

    public final void call(CompletableSubscriber completableSubscriber) {
        CompletableSubscriber completableSubscriber2 = completableSubscriber;
        CompositeSubscription compositeSubscription = new CompositeSubscription();
        boolean z = false;
        boolean z2 = true;
        AtomicInteger atomicInteger = new AtomicInteger(this.sources.length + 1);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        completableSubscriber2.onSubscribe(compositeSubscription);
        Completable[] completableArr = this.sources;
        int length = completableArr.length;
        int i = 0;
        while (i < length) {
            Completable completable = completableArr[i];
            if (!compositeSubscription.isUnsubscribed()) {
                if (completable == null) {
                    compositeSubscription.unsubscribe();
                    Throwable nullPointerException = new NullPointerException("A completable source is null");
                    if (atomicBoolean.compareAndSet(z, z2)) {
                        completableSubscriber2.onError(nullPointerException);
                        return;
                    }
                    RxJavaHooks.onError(nullPointerException);
                }
                final CompositeSubscription compositeSubscription2 = compositeSubscription;
                final AtomicBoolean atomicBoolean2 = atomicBoolean;
                CompletableSubscriber completableSubscriber3 = r0;
                final CompletableSubscriber completableSubscriber4 = completableSubscriber2;
                Completable completable2 = completable;
                final AtomicInteger atomicInteger2 = atomicInteger;
                C17031 c17031 = new CompletableSubscriber() {
                    public void onSubscribe(Subscription subscription) {
                        compositeSubscription2.add(subscription);
                    }

                    public void onError(Throwable th) {
                        compositeSubscription2.unsubscribe();
                        if (atomicBoolean2.compareAndSet(false, true)) {
                            completableSubscriber4.onError(th);
                        } else {
                            RxJavaHooks.onError(th);
                        }
                    }

                    public void onCompleted() {
                        if (atomicInteger2.decrementAndGet() == 0 && atomicBoolean2.compareAndSet(false, true)) {
                            completableSubscriber4.onCompleted();
                        }
                    }
                };
                completable2.unsafeSubscribe(completableSubscriber3);
                i++;
                z = false;
                z2 = true;
            } else {
                return;
            }
        }
        if (atomicInteger.decrementAndGet() == 0 && atomicBoolean.compareAndSet(false, true)) {
            completableSubscriber.onCompleted();
        }
    }
}
