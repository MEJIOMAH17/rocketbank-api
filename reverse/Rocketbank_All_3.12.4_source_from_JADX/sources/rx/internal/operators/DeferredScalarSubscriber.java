package rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;

public abstract class DeferredScalarSubscriber<T, R> extends Subscriber<T> {
    static final int HAS_REQUEST_HAS_VALUE = 3;
    static final int HAS_REQUEST_NO_VALUE = 1;
    static final int NO_REQUEST_HAS_VALUE = 2;
    static final int NO_REQUEST_NO_VALUE = 0;
    protected final Subscriber<? super R> actual;
    protected boolean hasValue;
    final AtomicInteger state = new AtomicInteger();
    protected R value;

    static final class InnerProducer implements Producer {
        final DeferredScalarSubscriber<?, ?> parent;

        public InnerProducer(DeferredScalarSubscriber<?, ?> deferredScalarSubscriber) {
            this.parent = deferredScalarSubscriber;
        }

        public final void request(long j) {
            this.parent.downstreamRequest(j);
        }
    }

    public DeferredScalarSubscriber(Subscriber<? super R> subscriber) {
        this.actual = subscriber;
    }

    public void onError(Throwable th) {
        this.value = null;
        this.actual.onError(th);
    }

    public void onCompleted() {
        if (this.hasValue) {
            complete(this.value);
        } else {
            complete();
        }
    }

    protected final void complete() {
        this.actual.onCompleted();
    }

    protected final void complete(R r) {
        Subscriber subscriber = this.actual;
        do {
            int i = this.state.get();
            if (!(i == 2 || i == 3)) {
                if (!subscriber.isUnsubscribed()) {
                    if (i == 1) {
                        subscriber.onNext(r);
                        if (subscriber.isUnsubscribed() == null) {
                            subscriber.onCompleted();
                        }
                        this.state.lazySet(3);
                        return;
                    }
                    this.value = r;
                }
            }
            return;
        } while (!this.state.compareAndSet(0, 2));
    }

    final void downstreamRequest(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
        } else if (j != 0) {
            j = this.actual;
            do {
                int i = this.state.get();
                if (!(i == 1 || i == 3)) {
                    if (!j.isUnsubscribed()) {
                        if (i == 2) {
                            if (this.state.compareAndSet(2, 3)) {
                                j.onNext(this.value);
                                if (!j.isUnsubscribed()) {
                                    j.onCompleted();
                                }
                            }
                            return;
                        }
                    }
                }
                return;
            } while (!this.state.compareAndSet(0, 1));
        }
    }

    public final void setProducer(Producer producer) {
        producer.request(Long.MAX_VALUE);
    }

    public final void subscribeTo(Observable<? extends T> observable) {
        setupDownstream();
        observable.unsafeSubscribe(this);
    }

    final void setupDownstream() {
        Subscriber subscriber = this.actual;
        subscriber.add(this);
        subscriber.setProducer(new InnerProducer(this));
    }
}
