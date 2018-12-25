package rx.internal.operators;

import java.util.concurrent.TimeoutException;
import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.internal.producers.ProducerArbiter;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

class OperatorTimeoutBase<T> implements Operator<T, T> {
    final FirstTimeoutStub<T> firstTimeoutStub;
    final Observable<? extends T> other;
    final Scheduler scheduler;
    final TimeoutStub<T> timeoutStub;

    interface FirstTimeoutStub<T> extends Func3<TimeoutSubscriber<T>, Long, Worker, Subscription> {
    }

    interface TimeoutStub<T> extends Func4<TimeoutSubscriber<T>, Long, T, Worker, Subscription> {
    }

    static final class TimeoutSubscriber<T> extends Subscriber<T> {
        long actual;
        final ProducerArbiter arbiter = new ProducerArbiter();
        final Worker inner;
        final Observable<? extends T> other;
        final SerialSubscription serial;
        final SerializedSubscriber<T> serializedSubscriber;
        boolean terminated;
        final TimeoutStub<T> timeoutStub;

        /* renamed from: rx.internal.operators.OperatorTimeoutBase$TimeoutSubscriber$1 */
        class C19411 extends Subscriber<T> {
            C19411() {
            }

            public void onNext(T t) {
                TimeoutSubscriber.this.serializedSubscriber.onNext(t);
            }

            public void onError(Throwable th) {
                TimeoutSubscriber.this.serializedSubscriber.onError(th);
            }

            public void onCompleted() {
                TimeoutSubscriber.this.serializedSubscriber.onCompleted();
            }

            public void setProducer(Producer producer) {
                TimeoutSubscriber.this.arbiter.setProducer(producer);
            }
        }

        TimeoutSubscriber(SerializedSubscriber<T> serializedSubscriber, TimeoutStub<T> timeoutStub, SerialSubscription serialSubscription, Observable<? extends T> observable, Worker worker) {
            this.serializedSubscriber = serializedSubscriber;
            this.timeoutStub = timeoutStub;
            this.serial = serialSubscription;
            this.other = observable;
            this.inner = worker;
        }

        public final void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }

        public final void onNext(T t) {
            long j;
            Object obj;
            synchronized (this) {
                if (this.terminated) {
                    j = 0;
                    obj = null;
                } else {
                    j = this.actual + 1;
                    this.actual = j;
                    obj = 1;
                }
            }
            if (obj != null) {
                this.serializedSubscriber.onNext(t);
                this.serial.set((Subscription) this.timeoutStub.call(this, Long.valueOf(j), t, this.inner));
            }
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                boolean z = true;
                if (this.terminated) {
                    z = false;
                } else {
                    this.terminated = true;
                }
            }
            if (z) {
                this.serial.unsubscribe();
                this.serializedSubscriber.onError(th);
            }
        }

        public final void onCompleted() {
            synchronized (this) {
                boolean z = true;
                if (this.terminated) {
                    z = false;
                } else {
                    this.terminated = true;
                }
            }
            if (z) {
                this.serial.unsubscribe();
                this.serializedSubscriber.onCompleted();
            }
        }

        public final void onTimeout(long j) {
            synchronized (this) {
                int i = (j > this.actual ? 1 : (j == this.actual ? 0 : -1));
                j = 1;
                if (i != 0 || this.terminated) {
                    j = null;
                } else {
                    this.terminated = true;
                }
            }
            if (j != null) {
                if (this.other == null) {
                    this.serializedSubscriber.onError(new TimeoutException());
                    return;
                }
                j = new C19411();
                this.other.unsafeSubscribe(j);
                this.serial.set(j);
            }
        }
    }

    OperatorTimeoutBase(FirstTimeoutStub<T> firstTimeoutStub, TimeoutStub<T> timeoutStub, Observable<? extends T> observable, Scheduler scheduler) {
        this.firstTimeoutStub = firstTimeoutStub;
        this.timeoutStub = timeoutStub;
        this.other = observable;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscription createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        subscriber = new SerialSubscription();
        serializedSubscriber.add(subscriber);
        Subscriber<? super T> timeoutSubscriber = new TimeoutSubscriber(serializedSubscriber, this.timeoutStub, subscriber, this.other, createWorker);
        serializedSubscriber.add(timeoutSubscriber);
        serializedSubscriber.setProducer(timeoutSubscriber.arbiter);
        subscriber.set((Subscription) this.firstTimeoutStub.call(timeoutSubscriber, Long.valueOf(0), createWorker));
        return timeoutSubscriber;
    }
}
