package rx.internal.operators;

import rx.Observable;
import rx.Observer;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

public class OperatorTimeoutWithSelector<T, U, V> extends OperatorTimeoutBase<T> {

    /* renamed from: rx.internal.operators.OperatorTimeoutWithSelector$1 */
    class C21031 implements FirstTimeoutStub<T> {
        final /* synthetic */ Func0 val$firstTimeoutSelector;

        C21031(Func0 func0) {
            this.val$firstTimeoutSelector = func0;
        }

        public Subscription call(final TimeoutSubscriber<T> timeoutSubscriber, final Long l, Worker worker) {
            if (this.val$firstTimeoutSelector == null) {
                return Subscriptions.unsubscribed();
            }
            try {
                return ((Observable) this.val$firstTimeoutSelector.call()).unsafeSubscribe(new Subscriber<U>() {
                    public void onCompleted() {
                        timeoutSubscriber.onTimeout(l.longValue());
                    }

                    public void onError(Throwable th) {
                        timeoutSubscriber.onError(th);
                    }

                    public void onNext(U u) {
                        timeoutSubscriber.onTimeout(l.longValue());
                    }
                });
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, (Observer) timeoutSubscriber);
                return Subscriptions.unsubscribed();
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorTimeoutWithSelector$2 */
    class C21042 implements TimeoutStub<T> {
        final /* synthetic */ Func1 val$timeoutSelector;

        C21042(Func1 func1) {
            this.val$timeoutSelector = func1;
        }

        public Subscription call(final TimeoutSubscriber<T> timeoutSubscriber, final Long l, T t, Worker worker) {
            try {
                return ((Observable) this.val$timeoutSelector.call(t)).unsafeSubscribe(new Subscriber<V>() {
                    public void onCompleted() {
                        timeoutSubscriber.onTimeout(l.longValue());
                    }

                    public void onError(Throwable th) {
                        timeoutSubscriber.onError(th);
                    }

                    public void onNext(V v) {
                        timeoutSubscriber.onTimeout(l.longValue());
                    }
                });
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, (Observer) timeoutSubscriber);
                return Subscriptions.unsubscribed();
            }
        }
    }

    public /* bridge */ /* synthetic */ Subscriber call(Subscriber subscriber) {
        return super.call(subscriber);
    }

    public OperatorTimeoutWithSelector(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1, Observable<? extends T> observable) {
        super(new C21031(func0), new C21042(func1), observable, Schedulers.immediate());
    }
}
