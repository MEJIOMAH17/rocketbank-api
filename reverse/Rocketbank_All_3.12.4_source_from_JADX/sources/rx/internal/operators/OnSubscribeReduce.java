package rx.internal.operators;

import java.util.NoSuchElementException;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func2;
import rx.plugins.RxJavaHooks;

public final class OnSubscribeReduce<T> implements OnSubscribe<T> {
    final Func2<T, T, T> reducer;
    final Observable<T> source;

    static final class ReduceSubscriber<T> extends Subscriber<T> {
        static final Object EMPTY = new Object();
        final Subscriber<? super T> actual;
        boolean done;
        final Func2<T, T, T> reducer;
        T value = EMPTY;

        public ReduceSubscriber(Subscriber<? super T> subscriber, Func2<T, T, T> func2) {
            this.actual = subscriber;
            this.reducer = func2;
            request(null);
        }

        public final void onNext(T t) {
            if (!this.done) {
                Object obj = this.value;
                if (obj == EMPTY) {
                    this.value = t;
                    return;
                }
                try {
                    this.value = this.reducer.call(obj, t);
                } catch (T t2) {
                    Exceptions.throwIfFatal(t2);
                    unsubscribe();
                    onError(t2);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                Object obj = this.value;
                if (obj != EMPTY) {
                    this.actual.onNext(obj);
                    this.actual.onCompleted();
                    return;
                }
                this.actual.onError(new NoSuchElementException());
            }
        }

        final void downstreamRequest(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was ".concat(String.valueOf(j)));
            } else if (j != 0) {
                request(Long.MAX_VALUE);
            }
        }
    }

    public OnSubscribeReduce(Observable<T> observable, Func2<T, T, T> func2) {
        this.source = observable;
        this.reducer = func2;
    }

    public final void call(Subscriber<? super T> subscriber) {
        final Subscriber reduceSubscriber = new ReduceSubscriber(subscriber, this.reducer);
        subscriber.add(reduceSubscriber);
        subscriber.setProducer(new Producer() {
            public void request(long j) {
                reduceSubscriber.downstreamRequest(j);
            }
        });
        this.source.unsafeSubscribe(reduceSubscriber);
    }
}
