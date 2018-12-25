package rx.observers;

import rx.Observer;
import rx.Subscriber;

public class SerializedSubscriber<T> extends Subscriber<T> {
    /* renamed from: s */
    private final Observer<T> f767s;

    public SerializedSubscriber(Subscriber<? super T> subscriber) {
        this(subscriber, true);
    }

    public SerializedSubscriber(Subscriber<? super T> subscriber, boolean z) {
        super(subscriber, z);
        this.f767s = new SerializedObserver(subscriber);
    }

    public void onCompleted() {
        this.f767s.onCompleted();
    }

    public void onError(Throwable th) {
        this.f767s.onError(th);
    }

    public void onNext(T t) {
        this.f767s.onNext(t);
    }
}
