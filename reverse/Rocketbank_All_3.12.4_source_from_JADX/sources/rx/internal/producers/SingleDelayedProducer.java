package rx.internal.producers;

import java.util.concurrent.atomic.AtomicInteger;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;

public final class SingleDelayedProducer<T> extends AtomicInteger implements Producer {
    static final int HAS_REQUEST_HAS_VALUE = 3;
    static final int HAS_REQUEST_NO_VALUE = 2;
    static final int NO_REQUEST_HAS_VALUE = 1;
    static final int NO_REQUEST_NO_VALUE = 0;
    private static final long serialVersionUID = -2873467947112093874L;
    final Subscriber<? super T> child;
    T value;

    public SingleDelayedProducer(Subscriber<? super T> subscriber) {
        this.child = subscriber;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void request(long r4) {
        /*
        r3 = this;
        r0 = 0;
        r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r2 >= 0) goto L_0x000e;
    L_0x0006:
        r4 = new java.lang.IllegalArgumentException;
        r5 = "n >= 0 required";
        r4.<init>(r5);
        throw r4;
    L_0x000e:
        r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r2 != 0) goto L_0x0013;
    L_0x0012:
        return;
    L_0x0013:
        r4 = r3.get();
        if (r4 != 0) goto L_0x0022;
    L_0x0019:
        r4 = 0;
        r5 = 2;
        r4 = r3.compareAndSet(r4, r5);
        if (r4 != 0) goto L_0x0033;
    L_0x0021:
        goto L_0x0013;
    L_0x0022:
        r5 = 1;
        if (r4 != r5) goto L_0x0033;
    L_0x0025:
        r4 = 3;
        r4 = r3.compareAndSet(r5, r4);
        if (r4 == 0) goto L_0x0033;
    L_0x002c:
        r4 = r3.child;
        r5 = r3.value;
        emit(r4, r5);
    L_0x0033:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.SingleDelayedProducer.request(long):void");
    }

    public final void setValue(T t) {
        while (true) {
            int i = get();
            if (i != 0) {
                break;
            }
            this.value = t;
            if (compareAndSet(0, 1)) {
                return;
            }
        }
        if (i == 2 && compareAndSet(2, 3)) {
            emit(this.child, t);
        }
    }

    private static <T> void emit(Subscriber<? super T> subscriber, T t) {
        if (!subscriber.isUnsubscribed()) {
            try {
                subscriber.onNext(t);
                if (subscriber.isUnsubscribed() == null) {
                    subscriber.onCompleted();
                }
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, (Observer) subscriber, (Object) t);
            }
        }
    }
}
