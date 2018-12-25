package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.internal.producers.ProducerArbiter;
import rx.subscriptions.SerialSubscription;

public final class OperatorSwitchIfEmpty<T> implements Operator<T, T> {
    private final Observable<? extends T> alternate;

    static final class AlternateSubscriber<T> extends Subscriber<T> {
        private final ProducerArbiter arbiter;
        private final Subscriber<? super T> child;

        AlternateSubscriber(Subscriber<? super T> subscriber, ProducerArbiter producerArbiter) {
            this.child = subscriber;
            this.arbiter = producerArbiter;
        }

        public final void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }

        public final void onCompleted() {
            this.child.onCompleted();
        }

        public final void onError(Throwable th) {
            this.child.onError(th);
        }

        public final void onNext(T t) {
            this.child.onNext(t);
            this.arbiter.produced(1);
        }
    }

    static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Observable<? extends T> alternate;
        private final ProducerArbiter arbiter;
        private final Subscriber<? super T> child;
        private boolean empty = true;
        private final SerialSubscription serial;

        ParentSubscriber(Subscriber<? super T> subscriber, SerialSubscription serialSubscription, ProducerArbiter producerArbiter, Observable<? extends T> observable) {
            this.child = subscriber;
            this.serial = serialSubscription;
            this.arbiter = producerArbiter;
            this.alternate = observable;
        }

        public final void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }

        public final void onCompleted() {
            if (this.empty) {
                if (!this.child.isUnsubscribed()) {
                    subscribeToAlternate();
                }
                return;
            }
            this.child.onCompleted();
        }

        private void subscribeToAlternate() {
            Object alternateSubscriber = new AlternateSubscriber(this.child, this.arbiter);
            this.serial.set(alternateSubscriber);
            this.alternate.unsafeSubscribe(alternateSubscriber);
        }

        public final void onError(Throwable th) {
            this.child.onError(th);
        }

        public final void onNext(T t) {
            this.empty = false;
            this.child.onNext(t);
            this.arbiter.produced(1);
        }
    }

    public OperatorSwitchIfEmpty(Observable<? extends T> observable) {
        this.alternate = observable;
    }

    public final Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscription serialSubscription = new SerialSubscription();
        Producer producerArbiter = new ProducerArbiter();
        Object parentSubscriber = new ParentSubscriber(subscriber, serialSubscription, producerArbiter, this.alternate);
        serialSubscription.set(parentSubscriber);
        subscriber.add(serialSubscription);
        subscriber.setProducer(producerArbiter);
        return parentSubscriber;
    }
}
