package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.plugins.RxJavaHooks;

public final class OnSubscribeDetach<T> implements OnSubscribe<T> {
    final Observable<T> source;

    static final class DetachProducer<T> implements Producer, Subscription {
        final DetachSubscriber<T> parent;

        public DetachProducer(DetachSubscriber<T> detachSubscriber) {
            this.parent = detachSubscriber;
        }

        public final void request(long j) {
            this.parent.innerRequest(j);
        }

        public final boolean isUnsubscribed() {
            return this.parent.isUnsubscribed();
        }

        public final void unsubscribe() {
            this.parent.innerUnsubscribe();
        }
    }

    enum TerminatedProducer implements Producer {
        INSTANCE;

        public final void request(long j) {
        }
    }

    static final class DetachSubscriber<T> extends Subscriber<T> {
        final AtomicReference<Subscriber<? super T>> actual;
        final AtomicReference<Producer> producer = new AtomicReference();
        final AtomicLong requested = new AtomicLong();

        public DetachSubscriber(Subscriber<? super T> subscriber) {
            this.actual = new AtomicReference(subscriber);
        }

        public final void onNext(T t) {
            Subscriber subscriber = (Subscriber) this.actual.get();
            if (subscriber != null) {
                subscriber.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            this.producer.lazySet(TerminatedProducer.INSTANCE);
            Subscriber subscriber = (Subscriber) this.actual.getAndSet(null);
            if (subscriber != null) {
                subscriber.onError(th);
            } else {
                RxJavaHooks.onError(th);
            }
        }

        public final void onCompleted() {
            this.producer.lazySet(TerminatedProducer.INSTANCE);
            Subscriber subscriber = (Subscriber) this.actual.getAndSet(null);
            if (subscriber != null) {
                subscriber.onCompleted();
            }
        }

        final void innerRequest(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
            }
            Producer producer = (Producer) this.producer.get();
            if (producer != null) {
                producer.request(j);
                return;
            }
            BackpressureUtils.getAndAddRequest(this.requested, j);
            Producer producer2 = (Producer) this.producer.get();
            if (!(producer2 == null || producer2 == TerminatedProducer.INSTANCE)) {
                producer2.request(this.requested.getAndSet(0));
            }
        }

        public final void setProducer(Producer producer) {
            if (this.producer.compareAndSet(null, producer)) {
                producer.request(this.requested.getAndSet(0));
            } else if (this.producer.get() != TerminatedProducer.INSTANCE) {
                throw new IllegalStateException("Producer already set!");
            }
        }

        final void innerUnsubscribe() {
            this.producer.lazySet(TerminatedProducer.INSTANCE);
            this.actual.lazySet(null);
            unsubscribe();
        }
    }

    public OnSubscribeDetach(Observable<T> observable) {
        this.source = observable;
    }

    public final void call(Subscriber<? super T> subscriber) {
        Subscriber detachSubscriber = new DetachSubscriber(subscriber);
        Object detachProducer = new DetachProducer(detachSubscriber);
        subscriber.add(detachProducer);
        subscriber.setProducer(detachProducer);
        this.source.unsafeSubscribe(detachSubscriber);
    }
}
