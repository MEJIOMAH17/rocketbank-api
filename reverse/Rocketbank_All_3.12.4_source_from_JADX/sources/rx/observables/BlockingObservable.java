package rx.observables;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.annotations.Beta;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorNotImplementedException;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Actions;
import rx.functions.Func1;
import rx.internal.operators.BlockingOperatorLatest;
import rx.internal.operators.BlockingOperatorMostRecent;
import rx.internal.operators.BlockingOperatorNext;
import rx.internal.operators.BlockingOperatorToFuture;
import rx.internal.operators.BlockingOperatorToIterator;
import rx.internal.operators.NotificationLite;
import rx.internal.util.BlockingUtils;
import rx.internal.util.UtilityFunctions;
import rx.subscriptions.Subscriptions;

public final class BlockingObservable<T> {
    static final Object ON_START = new Object();
    static final Object SET_PRODUCER = new Object();
    static final Object UNSUBSCRIBE = new Object();
    /* renamed from: o */
    private final Observable<? extends T> f756o;

    /* renamed from: rx.observables.BlockingObservable$2 */
    class C16622 implements Iterable<T> {
        C16622() {
        }

        public Iterator<T> iterator() {
            return BlockingObservable.this.getIterator();
        }
    }

    /* renamed from: rx.observables.BlockingObservable$8 */
    class C21218 implements Action1<Throwable> {
        C21218() {
        }

        public void call(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }
    }

    private BlockingObservable(Observable<? extends T> observable) {
        this.f756o = observable;
    }

    public static <T> BlockingObservable<T> from(Observable<? extends T> observable) {
        return new BlockingObservable(observable);
    }

    public final void forEach(final Action1<? super T> action1) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        BlockingUtils.awaitForComplete(countDownLatch, this.f756o.subscribe(new Subscriber<T>() {
            public void onCompleted() {
                countDownLatch.countDown();
            }

            public void onError(Throwable th) {
                atomicReference.set(th);
                countDownLatch.countDown();
            }

            public void onNext(T t) {
                action1.call(t);
            }
        }));
        if (atomicReference.get() != null) {
            Exceptions.propagate((Throwable) atomicReference.get());
        }
    }

    public final Iterator<T> getIterator() {
        return BlockingOperatorToIterator.toIterator(this.f756o);
    }

    public final T first() {
        return blockForSingle(this.f756o.first());
    }

    public final T first(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f756o.first(func1));
    }

    public final T firstOrDefault(T t) {
        return blockForSingle(this.f756o.map(UtilityFunctions.identity()).firstOrDefault(t));
    }

    public final T firstOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f756o.filter(func1).map(UtilityFunctions.identity()).firstOrDefault(t));
    }

    public final T last() {
        return blockForSingle(this.f756o.last());
    }

    public final T last(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f756o.last(func1));
    }

    public final T lastOrDefault(T t) {
        return blockForSingle(this.f756o.map(UtilityFunctions.identity()).lastOrDefault(t));
    }

    public final T lastOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f756o.filter(func1).map(UtilityFunctions.identity()).lastOrDefault(t));
    }

    public final Iterable<T> mostRecent(T t) {
        return BlockingOperatorMostRecent.mostRecent(this.f756o, t);
    }

    public final Iterable<T> next() {
        return BlockingOperatorNext.next(this.f756o);
    }

    public final Iterable<T> latest() {
        return BlockingOperatorLatest.latest(this.f756o);
    }

    public final T single() {
        return blockForSingle(this.f756o.single());
    }

    public final T single(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f756o.single(func1));
    }

    public final T singleOrDefault(T t) {
        return blockForSingle(this.f756o.map(UtilityFunctions.identity()).singleOrDefault(t));
    }

    public final T singleOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f756o.filter(func1).map(UtilityFunctions.identity()).singleOrDefault(t));
    }

    public final Future<T> toFuture() {
        return BlockingOperatorToFuture.toFuture(this.f756o);
    }

    public final Iterable<T> toIterable() {
        return new C16622();
    }

    private T blockForSingle(Observable<? extends T> observable) {
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        BlockingUtils.awaitForComplete(countDownLatch, observable.subscribe(new Subscriber<T>() {
            public void onCompleted() {
                countDownLatch.countDown();
            }

            public void onError(Throwable th) {
                atomicReference2.set(th);
                countDownLatch.countDown();
            }

            public void onNext(T t) {
                atomicReference.set(t);
            }
        }));
        if (atomicReference2.get() != null) {
            Exceptions.propagate((Throwable) atomicReference2.get());
        }
        return atomicReference.get();
    }

    @Beta
    public final void subscribe() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Throwable[] thArr = new Throwable[]{null};
        BlockingUtils.awaitForComplete(countDownLatch, this.f756o.subscribe(new Subscriber<T>() {
            public void onNext(T t) {
            }

            public void onError(Throwable th) {
                thArr[0] = th;
                countDownLatch.countDown();
            }

            public void onCompleted() {
                countDownLatch.countDown();
            }
        }));
        Throwable th = thArr[0];
        if (th != null) {
            Exceptions.propagate(th);
        }
    }

    @Beta
    public final void subscribe(Observer<? super T> observer) {
        final BlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Subscription subscribe = this.f756o.subscribe(new Subscriber<T>() {
            public void onNext(T t) {
                linkedBlockingQueue.offer(NotificationLite.next(t));
            }

            public void onError(Throwable th) {
                linkedBlockingQueue.offer(NotificationLite.error(th));
            }

            public void onCompleted() {
                linkedBlockingQueue.offer(NotificationLite.completed());
            }
        });
        while (true) {
            try {
                Object poll = linkedBlockingQueue.poll();
                if (poll == null) {
                    poll = linkedBlockingQueue.take();
                }
                if (NotificationLite.accept(observer, poll)) {
                    break;
                }
            } catch (Throwable e) {
                Thread.currentThread().interrupt();
                observer.onError(e);
                return;
            } finally {
                subscribe.unsubscribe();
            }
        }
    }

    @Beta
    public final void subscribe(Subscriber<? super T> subscriber) {
        final BlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        final Producer[] producerArr = new Producer[]{null};
        Subscriber c19786 = new Subscriber<T>() {
            public void onNext(T t) {
                linkedBlockingQueue.offer(NotificationLite.next(t));
            }

            public void onError(Throwable th) {
                linkedBlockingQueue.offer(NotificationLite.error(th));
            }

            public void onCompleted() {
                linkedBlockingQueue.offer(NotificationLite.completed());
            }

            public void setProducer(Producer producer) {
                producerArr[0] = producer;
                linkedBlockingQueue.offer(BlockingObservable.SET_PRODUCER);
            }

            public void onStart() {
                linkedBlockingQueue.offer(BlockingObservable.ON_START);
            }
        };
        subscriber.add(c19786);
        subscriber.add(Subscriptions.create(new Action0() {
            public void call() {
                linkedBlockingQueue.offer(BlockingObservable.UNSUBSCRIBE);
            }
        }));
        this.f756o.subscribe(c19786);
        while (!subscriber.isUnsubscribed()) {
            try {
                Object poll = linkedBlockingQueue.poll();
                if (poll == null) {
                    poll = linkedBlockingQueue.take();
                }
                if (subscriber.isUnsubscribed() || poll == UNSUBSCRIBE) {
                    break;
                } else if (poll == ON_START) {
                    subscriber.onStart();
                } else if (poll == SET_PRODUCER) {
                    subscriber.setProducer(producerArr[0]);
                } else if (NotificationLite.accept(subscriber, poll)) {
                    return;
                }
            } catch (Throwable e) {
                Thread.currentThread().interrupt();
                subscriber.onError(e);
                return;
            } finally {
                c19786.unsubscribe();
            }
        }
        c19786.unsubscribe();
    }

    @Beta
    public final void subscribe(Action1<? super T> action1) {
        subscribe(action1, new C21218(), Actions.empty());
    }

    @Beta
    public final void subscribe(Action1<? super T> action1, Action1<? super Throwable> action12) {
        subscribe(action1, action12, Actions.empty());
    }

    @Beta
    public final void subscribe(final Action1<? super T> action1, final Action1<? super Throwable> action12, final Action0 action0) {
        subscribe(new Observer<T>() {
            public void onNext(T t) {
                action1.call(t);
            }

            public void onError(Throwable th) {
                action12.call(th);
            }

            public void onCompleted() {
                action0.call();
            }
        });
    }
}
