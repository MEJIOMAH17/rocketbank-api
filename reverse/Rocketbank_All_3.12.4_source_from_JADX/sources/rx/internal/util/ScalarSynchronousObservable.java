package rx.internal.util;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Scheduler;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.producers.SingleProducer;
import rx.internal.schedulers.EventLoopsScheduler;
import rx.observers.Subscribers;
import rx.plugins.RxJavaHooks;

public final class ScalarSynchronousObservable<T> extends Observable<T> {
    static final boolean STRONG_MODE = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();
    /* renamed from: t */
    final T f763t;

    static final class WeakSingleProducer<T> implements Producer {
        final Subscriber<? super T> actual;
        boolean once;
        final T value;

        public WeakSingleProducer(Subscriber<? super T> subscriber, T t) {
            this.actual = subscriber;
            this.value = t;
        }

        public final void request(long j) {
            if (!this.once) {
                if (j < 0) {
                    throw new IllegalStateException("n >= required but it was ".concat(String.valueOf(j)));
                } else if (j != 0) {
                    this.once = 1;
                    Observer observer = this.actual;
                    if (!observer.isUnsubscribed()) {
                        Object obj = this.value;
                        try {
                            observer.onNext(obj);
                            if (!observer.isUnsubscribed()) {
                                observer.onCompleted();
                            }
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, observer, obj);
                        }
                    }
                }
            }
        }
    }

    static final class ScalarAsyncProducer<T> extends AtomicBoolean implements Producer, Action0 {
        private static final long serialVersionUID = -2466317989629281651L;
        final Subscriber<? super T> actual;
        final Func1<Action0, Subscription> onSchedule;
        final T value;

        public ScalarAsyncProducer(Subscriber<? super T> subscriber, T t, Func1<Action0, Subscription> func1) {
            this.actual = subscriber;
            this.value = t;
            this.onSchedule = func1;
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
            } else if (j != 0 && compareAndSet(0, true) != null) {
                this.actual.add((Subscription) this.onSchedule.call(this));
            }
        }

        public final void call() {
            Observer observer = this.actual;
            if (!observer.isUnsubscribed()) {
                Object obj = this.value;
                try {
                    observer.onNext(obj);
                    if (!observer.isUnsubscribed()) {
                        observer.onCompleted();
                    }
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, observer, obj);
                }
            }
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("ScalarAsyncProducer[");
            stringBuilder.append(this.value);
            stringBuilder.append(", ");
            stringBuilder.append(get());
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
    }

    static final class JustOnSubscribe<T> implements OnSubscribe<T> {
        final T value;

        JustOnSubscribe(T t) {
            this.value = t;
        }

        public final void call(Subscriber<? super T> subscriber) {
            subscriber.setProducer(ScalarSynchronousObservable.createProducer(subscriber, this.value));
        }
    }

    static final class ScalarAsyncOnSubscribe<T> implements OnSubscribe<T> {
        final Func1<Action0, Subscription> onSchedule;
        final T value;

        ScalarAsyncOnSubscribe(T t, Func1<Action0, Subscription> func1) {
            this.value = t;
            this.onSchedule = func1;
        }

        public final void call(Subscriber<? super T> subscriber) {
            subscriber.setProducer(new ScalarAsyncProducer(subscriber, this.value, this.onSchedule));
        }
    }

    static <T> Producer createProducer(Subscriber<? super T> subscriber, T t) {
        if (STRONG_MODE) {
            return new SingleProducer(subscriber, t);
        }
        return new WeakSingleProducer(subscriber, t);
    }

    public static <T> ScalarSynchronousObservable<T> create(T t) {
        return new ScalarSynchronousObservable(t);
    }

    protected ScalarSynchronousObservable(T t) {
        super(RxJavaHooks.onCreate(new JustOnSubscribe(t)));
        this.f763t = t;
    }

    public final T get() {
        return this.f763t;
    }

    public final Observable<T> scalarScheduleOn(final Scheduler scheduler) {
        Func1 c19641;
        if (scheduler instanceof EventLoopsScheduler) {
            final EventLoopsScheduler eventLoopsScheduler = (EventLoopsScheduler) scheduler;
            c19641 = new Func1<Action0, Subscription>() {
                public Subscription call(Action0 action0) {
                    return eventLoopsScheduler.scheduleDirect(action0);
                }
            };
        } else {
            c19641 = new Func1<Action0, Subscription>() {
                public Subscription call(final Action0 action0) {
                    final Subscription createWorker = scheduler.createWorker();
                    createWorker.schedule(new Action0() {
                        public void call() {
                            try {
                                action0.call();
                            } finally {
                                createWorker.unsubscribe();
                            }
                        }
                    });
                    return createWorker;
                }
            };
        }
        return Observable.create((OnSubscribe) new ScalarAsyncOnSubscribe(this.f763t, c19641));
    }

    public final <R> Observable<R> scalarFlatMap(final Func1<? super T, ? extends Observable<? extends R>> func1) {
        return Observable.create(new OnSubscribe<R>() {
            public void call(Subscriber<? super R> subscriber) {
                Observable observable = (Observable) func1.call(ScalarSynchronousObservable.this.f763t);
                if (observable instanceof ScalarSynchronousObservable) {
                    subscriber.setProducer(ScalarSynchronousObservable.createProducer(subscriber, ((ScalarSynchronousObservable) observable).f763t));
                } else {
                    observable.unsafeSubscribe(Subscribers.wrap(subscriber));
                }
            }
        });
    }
}
