package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.Subscription;
import rx.observers.SerializedSubscriber;

public final class OperatorTakeUntil<T, E> implements Operator<T, T> {
    private final Observable<? extends E> other;

    public OperatorTakeUntil(Observable<? extends E> observable) {
        this.other = observable;
    }

    public final Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        final Subscription serializedSubscriber = new SerializedSubscriber(subscriber, false);
        final Object c19351 = new Subscriber<T>(false, serializedSubscriber) {
            public void onNext(T t) {
                serializedSubscriber.onNext(t);
            }

            public void onError(Throwable th) {
                try {
                    serializedSubscriber.onError(th);
                } finally {
                    serializedSubscriber.unsubscribe();
                }
            }

            public void onCompleted() {
                try {
                    serializedSubscriber.onCompleted();
                } finally {
                    serializedSubscriber.unsubscribe();
                }
            }
        };
        Object c19362 = new Subscriber<E>() {
            public void onStart() {
                request(Long.MAX_VALUE);
            }

            public void onCompleted() {
                c19351.onCompleted();
            }

            public void onError(Throwable th) {
                c19351.onError(th);
            }

            public void onNext(E e) {
                onCompleted();
            }
        };
        serializedSubscriber.add(c19351);
        serializedSubscriber.add(c19362);
        subscriber.add(serializedSubscriber);
        this.other.unsafeSubscribe(c19362);
        return c19351;
    }
}
