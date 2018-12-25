package rx.subjects;

import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.observers.SerializedObserver;

public class SerializedSubject<T, R> extends Subject<T, R> {
    private final Subject<T, R> actual;
    private final SerializedObserver<T> observer;

    /* renamed from: rx.subjects.SerializedSubject$1 */
    class C21591 implements OnSubscribe<R> {
        final /* synthetic */ Subject val$actual;

        C21591(Subject subject) {
            this.val$actual = subject;
        }

        public void call(Subscriber<? super R> subscriber) {
            this.val$actual.unsafeSubscribe(subscriber);
        }
    }

    public SerializedSubject(Subject<T, R> subject) {
        super(new C21591(subject));
        this.actual = subject;
        this.observer = new SerializedObserver(subject);
    }

    public void onCompleted() {
        this.observer.onCompleted();
    }

    public void onError(Throwable th) {
        this.observer.onError(th);
    }

    public void onNext(T t) {
        this.observer.onNext(t);
    }

    public boolean hasObservers() {
        return this.actual.hasObservers();
    }
}
