package rx.internal.operators;

import rx.Observable.Operator;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.internal.producers.SingleProducer;
import rx.plugins.RxJavaHooks;

public final class SingleLiftObservableOperator<T, R> implements OnSubscribe<R> {
    final Operator<? extends R, ? super T> lift;
    final OnSubscribe<T> source;

    static final class WrapSubscriberIntoSingle<T> extends SingleSubscriber<T> {
        final Subscriber<? super T> actual;

        WrapSubscriberIntoSingle(Subscriber<? super T> subscriber) {
            this.actual = subscriber;
        }

        public final void onSuccess(T t) {
            this.actual.setProducer(new SingleProducer(this.actual, t));
        }

        public final void onError(Throwable th) {
            this.actual.onError(th);
        }
    }

    public SingleLiftObservableOperator(OnSubscribe<T> onSubscribe, Operator<? extends R, ? super T> operator) {
        this.source = onSubscribe;
        this.lift = operator;
    }

    public final void call(SingleSubscriber<? super R> singleSubscriber) {
        Subscription wrapSingleIntoSubscriber = new WrapSingleIntoSubscriber(singleSubscriber);
        singleSubscriber.add(wrapSingleIntoSubscriber);
        try {
            Subscriber subscriber = (Subscriber) RxJavaHooks.onSingleLift(this.lift).call(wrapSingleIntoSubscriber);
            SingleSubscriber wrap = wrap(subscriber);
            subscriber.onStart();
            this.source.call(wrap);
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, (SingleSubscriber) singleSubscriber);
        }
    }

    public static <T> SingleSubscriber<T> wrap(Subscriber<T> subscriber) {
        Object wrapSubscriberIntoSingle = new WrapSubscriberIntoSingle(subscriber);
        subscriber.add(wrapSubscriberIntoSingle);
        return wrapSubscriberIntoSingle;
    }
}
