package rx.internal.producers;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;

public final class SingleProducer<T> extends AtomicBoolean implements Producer {
    private static final long serialVersionUID = -3353584923995471404L;
    final Subscriber<? super T> child;
    final T value;

    public SingleProducer(Subscriber<? super T> subscriber, T t) {
        this.child = subscriber;
        this.value = t;
    }

    public final void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (!(j == 0 || compareAndSet(0, true) == null)) {
            Observer observer = this.child;
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
