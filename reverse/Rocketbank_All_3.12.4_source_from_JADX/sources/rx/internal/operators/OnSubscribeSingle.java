package rx.internal.operators;

import java.util.NoSuchElementException;
import rx.Observable;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.Subscriber;

public class OnSubscribeSingle<T> implements OnSubscribe<T> {
    private final Observable<T> observable;

    public OnSubscribeSingle(Observable<T> observable) {
        this.observable = observable;
    }

    public void call(final SingleSubscriber<? super T> singleSubscriber) {
        Object c18851 = new Subscriber<T>() {
            private T emission;
            private boolean emittedTooMany;
            private boolean itemEmitted;

            public void onStart() {
                request(2);
            }

            public void onCompleted() {
                if (!this.emittedTooMany) {
                    if (this.itemEmitted) {
                        singleSubscriber.onSuccess(this.emission);
                        return;
                    }
                    singleSubscriber.onError(new NoSuchElementException("Observable emitted no items"));
                }
            }

            public void onError(Throwable th) {
                singleSubscriber.onError(th);
                unsubscribe();
            }

            public void onNext(T t) {
                if (this.itemEmitted) {
                    this.emittedTooMany = true;
                    singleSubscriber.onError(new IllegalArgumentException("Observable emitted too many elements"));
                    unsubscribe();
                    return;
                }
                this.itemEmitted = true;
                this.emission = t;
            }
        };
        singleSubscriber.add(c18851);
        this.observable.unsafeSubscribe(c18851);
    }

    public static <T> OnSubscribeSingle<T> create(Observable<T> observable) {
        return new OnSubscribeSingle(observable);
    }
}
