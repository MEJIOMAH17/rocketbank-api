package rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.Completable.OnSubscribe;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.subscriptions.SerialSubscription;
import rx.subscriptions.Subscriptions;

public final class CompletableOnSubscribeConcatIterable implements OnSubscribe {
    final Iterable<? extends Completable> sources;

    static final class ConcatInnerSubscriber extends AtomicInteger implements CompletableSubscriber {
        private static final long serialVersionUID = -7965400327305809232L;
        final CompletableSubscriber actual;
        final SerialSubscription sd = new SerialSubscription();
        final Iterator<? extends Completable> sources;

        public ConcatInnerSubscriber(CompletableSubscriber completableSubscriber, Iterator<? extends Completable> it) {
            this.actual = completableSubscriber;
            this.sources = it;
        }

        public final void onSubscribe(Subscription subscription) {
            this.sd.set(subscription);
        }

        public final void onError(Throwable th) {
            this.actual.onError(th);
        }

        public final void onCompleted() {
            next();
        }

        final void next() {
            if (!this.sd.isUnsubscribed() && getAndIncrement() == 0) {
                Iterator it = this.sources;
                while (!this.sd.isUnsubscribed()) {
                    try {
                        if (it.hasNext()) {
                            try {
                                Completable completable = (Completable) it.next();
                                if (completable == null) {
                                    this.actual.onError(new NullPointerException("The completable returned is null"));
                                    return;
                                }
                                completable.unsafeSubscribe((CompletableSubscriber) this);
                                if (decrementAndGet() == 0) {
                                    return;
                                }
                            } catch (Throwable th) {
                                this.actual.onError(th);
                                return;
                            }
                        }
                        this.actual.onCompleted();
                        return;
                    } catch (Throwable th2) {
                        this.actual.onError(th2);
                        return;
                    }
                }
            }
        }
    }

    public CompletableOnSubscribeConcatIterable(Iterable<? extends Completable> iterable) {
        this.sources = iterable;
    }

    public final void call(CompletableSubscriber completableSubscriber) {
        try {
            Iterator it = this.sources.iterator();
            if (it == null) {
                completableSubscriber.onSubscribe(Subscriptions.unsubscribed());
                completableSubscriber.onError(new NullPointerException("The iterator returned is null"));
                return;
            }
            ConcatInnerSubscriber concatInnerSubscriber = new ConcatInnerSubscriber(completableSubscriber, it);
            completableSubscriber.onSubscribe(concatInnerSubscriber.sd);
            concatInnerSubscriber.next();
        } catch (Throwable th) {
            completableSubscriber.onSubscribe(Subscriptions.unsubscribed());
            completableSubscriber.onError(th);
        }
    }
}
