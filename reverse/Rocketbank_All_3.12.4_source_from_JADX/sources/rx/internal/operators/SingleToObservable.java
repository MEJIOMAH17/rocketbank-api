package rx.internal.operators;

import rx.Observable.OnSubscribe;
import rx.Single;
import rx.Subscriber;
import rx.Subscription;

public final class SingleToObservable<T> implements OnSubscribe<T> {
    final Single.OnSubscribe<T> source;

    public SingleToObservable(Single.OnSubscribe<T> onSubscribe) {
        this.source = onSubscribe;
    }

    public final void call(Subscriber<? super T> subscriber) {
        Subscription wrapSubscriberIntoSingle = new WrapSubscriberIntoSingle(subscriber);
        subscriber.add(wrapSubscriberIntoSingle);
        this.source.call(wrapSubscriberIntoSingle);
    }
}
