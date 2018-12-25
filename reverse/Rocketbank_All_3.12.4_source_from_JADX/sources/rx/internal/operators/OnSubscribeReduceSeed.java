package rx.internal.operators;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func2;

public final class OnSubscribeReduceSeed<T, R> implements OnSubscribe<R> {
    final R initialValue;
    final Func2<R, ? super T, R> reducer;
    final Observable<T> source;

    static final class ReduceSeedSubscriber<T, R> extends DeferredScalarSubscriber<T, R> {
        final Func2<R, ? super T, R> reducer;

        public ReduceSeedSubscriber(Subscriber<? super R> subscriber, R r, Func2<R, ? super T, R> func2) {
            super(subscriber);
            this.value = r;
            this.hasValue = true;
            this.reducer = func2;
        }

        public final void onNext(T t) {
            try {
                this.value = this.reducer.call(this.value, t);
            } catch (T t2) {
                Exceptions.throwIfFatal(t2);
                unsubscribe();
                this.actual.onError(t2);
            }
        }
    }

    public OnSubscribeReduceSeed(Observable<T> observable, R r, Func2<R, ? super T, R> func2) {
        this.source = observable;
        this.initialValue = r;
        this.reducer = func2;
    }

    public final void call(Subscriber<? super R> subscriber) {
        new ReduceSeedSubscriber(subscriber, this.initialValue, this.reducer).subscribeTo(this.source);
    }
}
