package rx.internal.operators;

import rx.Single;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.exceptions.CompositeException;
import rx.exceptions.Exceptions;
import rx.functions.Action1;

public final class SingleDoOnEvent<T> implements OnSubscribe<T> {
    final Action1<Throwable> onError;
    final Action1<? super T> onSuccess;
    final Single<T> source;

    static final class SingleDoOnEventSubscriber<T> extends SingleSubscriber<T> {
        final SingleSubscriber<? super T> actual;
        final Action1<Throwable> onError;
        final Action1<? super T> onSuccess;

        SingleDoOnEventSubscriber(SingleSubscriber<? super T> singleSubscriber, Action1<? super T> action1, Action1<Throwable> action12) {
            this.actual = singleSubscriber;
            this.onSuccess = action1;
            this.onError = action12;
        }

        public final void onSuccess(T t) {
            try {
                this.onSuccess.call(t);
                this.actual.onSuccess(t);
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, (SingleSubscriber) this, (Object) t);
            }
        }

        public final void onError(Throwable th) {
            try {
                this.onError.call(th);
                this.actual.onError(th);
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                this.actual.onError(new CompositeException(th, th2));
            }
        }
    }

    public SingleDoOnEvent(Single<T> single, Action1<? super T> action1, Action1<Throwable> action12) {
        this.source = single;
        this.onSuccess = action1;
        this.onError = action12;
    }

    public final void call(SingleSubscriber<? super T> singleSubscriber) {
        SingleSubscriber singleDoOnEventSubscriber = new SingleDoOnEventSubscriber(singleSubscriber, this.onSuccess, this.onError);
        singleSubscriber.add(singleDoOnEventSubscriber);
        this.source.subscribe(singleDoOnEventSubscriber);
    }
}
