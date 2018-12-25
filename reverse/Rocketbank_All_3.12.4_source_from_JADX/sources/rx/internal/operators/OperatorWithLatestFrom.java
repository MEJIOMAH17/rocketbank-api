package rx.internal.operators;

import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func2;
import rx.observers.SerializedSubscriber;

public final class OperatorWithLatestFrom<T, U, R> implements Operator<R, T> {
    static final Object EMPTY = new Object();
    final Observable<? extends U> other;
    final Func2<? super T, ? super U, ? extends R> resultSelector;

    public OperatorWithLatestFrom(Observable<? extends U> observable, Func2<? super T, ? super U, ? extends R> func2) {
        this.other = observable;
        this.resultSelector = func2;
    }

    public final Subscriber<? super T> call(Subscriber<? super R> subscriber) {
        final Subscriber serializedSubscriber = new SerializedSubscriber(subscriber, false);
        subscriber.add(serializedSubscriber);
        subscriber = new AtomicReference(EMPTY);
        final Subscriber<? super R> subscriber2 = subscriber;
        final Subscriber subscriber3 = serializedSubscriber;
        C19501 c19501 = new Subscriber<T>(serializedSubscriber, true) {
            public void onNext(T t) {
                Object obj = subscriber2.get();
                if (obj != OperatorWithLatestFrom.EMPTY) {
                    try {
                        subscriber3.onNext(OperatorWithLatestFrom.this.resultSelector.call(t, obj));
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, (Observer) this);
                    }
                }
            }

            public void onError(Throwable th) {
                subscriber3.onError(th);
                subscriber3.unsubscribe();
            }

            public void onCompleted() {
                subscriber3.onCompleted();
                subscriber3.unsubscribe();
            }
        };
        Object c19512 = new Subscriber<U>() {
            public void onNext(U u) {
                subscriber.set(u);
            }

            public void onError(Throwable th) {
                serializedSubscriber.onError(th);
                serializedSubscriber.unsubscribe();
            }

            public void onCompleted() {
                if (subscriber.get() == OperatorWithLatestFrom.EMPTY) {
                    serializedSubscriber.onCompleted();
                    serializedSubscriber.unsubscribe();
                }
            }
        };
        serializedSubscriber.add(c19501);
        serializedSubscriber.add(c19512);
        this.other.unsafeSubscribe(c19512);
        return c19501;
    }
}
