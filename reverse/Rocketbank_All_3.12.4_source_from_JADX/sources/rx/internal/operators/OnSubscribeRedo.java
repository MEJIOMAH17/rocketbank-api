package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Notification;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observable.Operator;
import rx.Producer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.internal.producers.ProducerArbiter;
import rx.observers.Subscribers;
import rx.schedulers.Schedulers;
import rx.subjects.BehaviorSubject;
import rx.subjects.Subject;
import rx.subscriptions.SerialSubscription;

public final class OnSubscribeRedo<T> implements OnSubscribe<T> {
    static final Func1<Observable<? extends Notification<?>>, Observable<?>> REDO_INFINITE = new C18781();
    private final Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> controlHandlerFunction;
    private final Scheduler scheduler;
    final Observable<T> source;
    final boolean stopOnComplete;
    final boolean stopOnError;

    /* renamed from: rx.internal.operators.OnSubscribeRedo$1 */
    static class C18781 implements Func1<Observable<? extends Notification<?>>, Observable<?>> {

        /* renamed from: rx.internal.operators.OnSubscribeRedo$1$1 */
        class C18771 implements Func1<Notification<?>, Notification<?>> {
            C18771() {
            }

            public Notification<?> call(Notification<?> notification) {
                return Notification.createOnNext(null);
            }
        }

        C18781() {
        }

        public final Observable<?> call(Observable<? extends Notification<?>> observable) {
            return observable.map(new C18771());
        }
    }

    public static final class RedoFinite implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final long count;

        /* renamed from: rx.internal.operators.OnSubscribeRedo$RedoFinite$1 */
        class C18821 implements Func1<Notification<?>, Notification<?>> {
            int num;

            C18821() {
            }

            public Notification<?> call(Notification<?> notification) {
                if (RedoFinite.this.count == 0) {
                    return notification;
                }
                this.num++;
                return ((long) this.num) <= RedoFinite.this.count ? Notification.createOnNext(Integer.valueOf(this.num)) : notification;
            }
        }

        public RedoFinite(long j) {
            this.count = j;
        }

        public final Observable<?> call(Observable<? extends Notification<?>> observable) {
            return observable.map(new C18821()).dematerialize();
        }
    }

    public static final class RetryWithPredicate implements Func1<Observable<? extends Notification<?>>, Observable<? extends Notification<?>>> {
        final Func2<Integer, Throwable, Boolean> predicate;

        /* renamed from: rx.internal.operators.OnSubscribeRedo$RetryWithPredicate$1 */
        class C18831 implements Func2<Notification<Integer>, Notification<?>, Notification<Integer>> {
            C18831() {
            }

            public Notification<Integer> call(Notification<Integer> notification, Notification<?> notification2) {
                notification = ((Integer) notification.getValue()).intValue();
                return ((Boolean) RetryWithPredicate.this.predicate.call(Integer.valueOf(notification), notification2.getThrowable())).booleanValue() ? Notification.createOnNext(Integer.valueOf(notification + 1)) : notification2;
            }
        }

        public RetryWithPredicate(Func2<Integer, Throwable, Boolean> func2) {
            this.predicate = func2;
        }

        public final Observable<? extends Notification<?>> call(Observable<? extends Notification<?>> observable) {
            return observable.scan(Notification.createOnNext(Integer.valueOf(0)), new C18831());
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeRedo$3 */
    class C20743 implements Operator<Notification<?>, Notification<?>> {
        C20743() {
        }

        public Subscriber<? super Notification<?>> call(final Subscriber<? super Notification<?>> subscriber) {
            return new Subscriber<Notification<?>>(subscriber) {
                public void onCompleted() {
                    subscriber.onCompleted();
                }

                public void onError(Throwable th) {
                    subscriber.onError(th);
                }

                public void onNext(Notification<?> notification) {
                    if (notification.isOnCompleted() && OnSubscribeRedo.this.stopOnComplete) {
                        subscriber.onCompleted();
                    } else if (notification.isOnError() && OnSubscribeRedo.this.stopOnError) {
                        subscriber.onError(notification.getThrowable());
                    } else {
                        subscriber.onNext(notification);
                    }
                }

                public void setProducer(Producer producer) {
                    producer.request(Long.MAX_VALUE);
                }
            };
        }
    }

    public static <T> Observable<T> retry(Observable<T> observable) {
        return retry((Observable) observable, REDO_INFINITE);
    }

    public static <T> Observable<T> retry(Observable<T> observable, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("count >= 0 expected");
        } else if (j == 0) {
            return observable;
        } else {
            return retry((Observable) observable, new RedoFinite(j));
        }
    }

    public static <T> Observable<T> retry(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1) {
        return Observable.create(new OnSubscribeRedo(observable, func1, true, false, Schedulers.trampoline()));
    }

    public static <T> Observable<T> retry(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(observable, func1, true, false, scheduler));
    }

    public static <T> Observable<T> repeat(Observable<T> observable) {
        return repeat((Observable) observable, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> observable, Scheduler scheduler) {
        return repeat((Observable) observable, REDO_INFINITE, scheduler);
    }

    public static <T> Observable<T> repeat(Observable<T> observable, long j) {
        return repeat((Observable) observable, j, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> observable, long j, Scheduler scheduler) {
        if (j == 0) {
            return Observable.empty();
        }
        if (j >= 0) {
            return repeat((Observable) observable, new RedoFinite(j - 1), scheduler);
        }
        throw new IllegalArgumentException("count >= 0 expected");
    }

    public static <T> Observable<T> repeat(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1) {
        return Observable.create(new OnSubscribeRedo(observable, func1, false, true, Schedulers.trampoline()));
    }

    public static <T> Observable<T> repeat(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(observable, func1, false, true, scheduler));
    }

    public static <T> Observable<T> redo(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(observable, func1, false, false, scheduler));
    }

    private OnSubscribeRedo(Observable<T> observable, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> func1, boolean z, boolean z2, Scheduler scheduler) {
        this.source = observable;
        this.controlHandlerFunction = func1;
        this.stopOnComplete = z;
        this.stopOnError = z2;
        this.scheduler = scheduler;
    }

    public final void call(Subscriber<? super T> subscriber) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        AtomicLong atomicLong = new AtomicLong();
        Worker createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        final Object serialSubscription = new SerialSubscription();
        subscriber.add(serialSubscription);
        Subject toSerialized = BehaviorSubject.create().toSerialized();
        toSerialized.subscribe(Subscribers.empty());
        ProducerArbiter producerArbiter = new ProducerArbiter();
        final Subscriber<? super T> subscriber2 = subscriber;
        final Subject subject = toSerialized;
        final ProducerArbiter producerArbiter2 = producerArbiter;
        final AtomicLong atomicLong2 = atomicLong;
        C20732 c20732 = new Action0() {

            /* renamed from: rx.internal.operators.OnSubscribeRedo$2$1 */
            class C18791 extends Subscriber<T> {
                boolean done;

                C18791() {
                }

                public void onCompleted() {
                    if (!this.done) {
                        this.done = true;
                        unsubscribe();
                        subject.onNext(Notification.createOnCompleted());
                    }
                }

                public void onError(Throwable th) {
                    if (!this.done) {
                        this.done = true;
                        unsubscribe();
                        subject.onNext(Notification.createOnError(th));
                    }
                }

                public void onNext(T t) {
                    if (!this.done) {
                        subscriber2.onNext(t);
                        decrementConsumerCapacity();
                        producerArbiter2.produced(1);
                    }
                }

                private void decrementConsumerCapacity() {
                    long j;
                    do {
                        j = atomicLong2.get();
                        if (j == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLong2.compareAndSet(j, j - 1));
                }

                public void setProducer(Producer producer) {
                    producerArbiter2.setProducer(producer);
                }
            }

            public void call() {
                if (!subscriber2.isUnsubscribed()) {
                    Object c18791 = new C18791();
                    serialSubscription.set(c18791);
                    OnSubscribeRedo.this.source.unsafeSubscribe(c18791);
                }
            }
        };
        final Observable observable = (Observable) this.controlHandlerFunction.call(toSerialized.lift(new C20743()));
        final AtomicLong atomicLong3 = atomicLong;
        final Worker worker = createWorker;
        final C20732 c207322 = c20732;
        final AtomicBoolean atomicBoolean2 = atomicBoolean;
        createWorker.schedule(new Action0() {
            public void call() {
                observable.unsafeSubscribe(new Subscriber<Object>(subscriber2) {
                    public void onCompleted() {
                        subscriber2.onCompleted();
                    }

                    public void onError(Throwable th) {
                        subscriber2.onError(th);
                    }

                    public void onNext(Object obj) {
                        if (subscriber2.isUnsubscribed() == null) {
                            if (atomicLong3.get() > 0) {
                                worker.schedule(c207322);
                                return;
                            }
                            atomicBoolean2.compareAndSet(false, true);
                        }
                    }

                    public void setProducer(Producer producer) {
                        producer.request(Long.MAX_VALUE);
                    }
                });
            }
        });
        final AtomicLong atomicLong4 = atomicLong;
        final ProducerArbiter producerArbiter3 = producerArbiter;
        final AtomicBoolean atomicBoolean3 = atomicBoolean;
        subscriber.setProducer(new Producer() {
            public void request(long j) {
                if (j > 0) {
                    BackpressureUtils.getAndAddRequest(atomicLong4, j);
                    producerArbiter3.request(j);
                    if (atomicBoolean3.compareAndSet(true, false) != null) {
                        worker.schedule(c207322);
                    }
                }
            }
        });
    }
}
