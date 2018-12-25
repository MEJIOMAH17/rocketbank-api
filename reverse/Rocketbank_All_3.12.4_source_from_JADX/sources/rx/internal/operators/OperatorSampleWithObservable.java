package rx.internal.operators;

import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.Subscription;
import rx.observers.SerializedSubscriber;

public final class OperatorSampleWithObservable<T, U> implements Operator<T, T> {
    static final Object EMPTY_TOKEN = new Object();
    final Observable<U> sampler;

    public OperatorSampleWithObservable(Observable<U> observable) {
        this.sampler = observable;
    }

    public final Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        final SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        final AtomicReference atomicReference = new AtomicReference(EMPTY_TOKEN);
        final AtomicReference atomicReference2 = new AtomicReference();
        final Object c19191 = new Subscriber<U>() {
            public void onNext(U u) {
                u = atomicReference.getAndSet(OperatorSampleWithObservable.EMPTY_TOKEN);
                if (u != OperatorSampleWithObservable.EMPTY_TOKEN) {
                    serializedSubscriber.onNext(u);
                }
            }

            public void onError(Throwable th) {
                serializedSubscriber.onError(th);
                ((Subscription) atomicReference2.get()).unsubscribe();
            }

            public void onCompleted() {
                onNext(null);
                serializedSubscriber.onCompleted();
                ((Subscription) atomicReference2.get()).unsubscribe();
            }
        };
        Object c19202 = new Subscriber<T>() {
            public void onNext(T t) {
                atomicReference.set(t);
            }

            public void onError(Throwable th) {
                serializedSubscriber.onError(th);
                c19191.unsubscribe();
            }

            public void onCompleted() {
                c19191.onNext(null);
                serializedSubscriber.onCompleted();
                c19191.unsubscribe();
            }
        };
        atomicReference2.lazySet(c19202);
        subscriber.add(c19202);
        subscriber.add(c19191);
        this.sampler.unsafeSubscribe(c19191);
        return c19202;
    }
}
