package rx.internal.operators;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

public enum EmptyObservableHolder implements OnSubscribe<Object> {
    INSTANCE;
    
    static final Observable<Object> EMPTY = null;

    static {
        EMPTY = Observable.create(INSTANCE);
    }

    public static <T> Observable<T> instance() {
        return EMPTY;
    }

    public final void call(Subscriber<? super Object> subscriber) {
        subscriber.onCompleted();
    }
}
