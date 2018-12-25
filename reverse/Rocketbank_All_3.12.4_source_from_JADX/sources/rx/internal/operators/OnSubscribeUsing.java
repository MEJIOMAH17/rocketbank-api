package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.CompositeException;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.observers.Subscribers;

public final class OnSubscribeUsing<T, Resource> implements OnSubscribe<T> {
    private final Action1<? super Resource> dispose;
    private final boolean disposeEagerly;
    private final Func1<? super Resource, ? extends Observable<? extends T>> observableFactory;
    private final Func0<Resource> resourceFactory;

    static final class DisposeAction<Resource> extends AtomicBoolean implements Subscription, Action0 {
        private static final long serialVersionUID = 4262875056400218316L;
        private Action1<? super Resource> dispose;
        private Resource resource;

        DisposeAction(Action1<? super Resource> action1, Resource resource) {
            this.dispose = action1;
            this.resource = resource;
            lazySet(null);
        }

        public final void call() {
            if (compareAndSet(false, true)) {
                try {
                    this.dispose.call(this.resource);
                } finally {
                    this.resource = null;
                    this.dispose = null;
                }
            }
        }

        public final boolean isUnsubscribed() {
            return get();
        }

        public final void unsubscribe() {
            call();
        }
    }

    public OnSubscribeUsing(Func0<Resource> func0, Func1<? super Resource, ? extends Observable<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        this.resourceFactory = func0;
        this.observableFactory = func1;
        this.dispose = action1;
        this.disposeEagerly = z;
    }

    public final void call(Subscriber<? super T> subscriber) {
        Throwable dispose;
        Action0 disposeAction;
        try {
            Object call = this.resourceFactory.call();
            disposeAction = new DisposeAction(this.dispose, call);
            subscriber.add(disposeAction);
            try {
                Observable observable = (Observable) this.observableFactory.call(call);
                if (this.disposeEagerly) {
                    observable = observable.doOnTerminate(disposeAction);
                } else {
                    observable = observable.doAfterTerminate(disposeAction);
                }
                observable.unsafeSubscribe(Subscribers.wrap(subscriber));
            } catch (Throwable th) {
                dispose = dispose(disposeAction);
                Exceptions.throwIfFatal(th);
                Exceptions.throwIfFatal(dispose);
                if (dispose != null) {
                    subscriber.onError(new CompositeException(th, dispose));
                    return;
                }
                subscriber.onError(th);
            }
        } catch (Throwable th2) {
            Exceptions.throwOrReport(th2, (Observer) subscriber);
        }
    }

    private Throwable dispose(Action0 action0) {
        try {
            action0.call();
            return null;
        } catch (Action0 action02) {
            return action02;
        }
    }
}
