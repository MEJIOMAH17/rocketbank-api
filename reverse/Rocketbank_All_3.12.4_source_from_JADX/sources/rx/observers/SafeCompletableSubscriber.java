package rx.observers;

import rx.CompletableSubscriber;
import rx.Subscription;
import rx.annotations.Experimental;
import rx.exceptions.CompositeException;
import rx.exceptions.Exceptions;
import rx.exceptions.OnCompletedFailedException;
import rx.exceptions.OnErrorFailedException;
import rx.plugins.RxJavaHooks;

@Experimental
public final class SafeCompletableSubscriber implements CompletableSubscriber, Subscription {
    final CompletableSubscriber actual;
    boolean done;
    /* renamed from: s */
    Subscription f764s;

    public SafeCompletableSubscriber(CompletableSubscriber completableSubscriber) {
        this.actual = completableSubscriber;
    }

    public final void onCompleted() {
        if (!this.done) {
            this.done = true;
            try {
                this.actual.onCompleted();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                OnCompletedFailedException onCompletedFailedException = new OnCompletedFailedException(th);
            }
        }
    }

    public final void onError(Throwable th) {
        RxJavaHooks.onError(th);
        if (!this.done) {
            this.done = true;
            try {
                this.actual.onError(th);
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                OnErrorFailedException onErrorFailedException = new OnErrorFailedException(new CompositeException(th, th2));
            }
        }
    }

    public final void onSubscribe(Subscription subscription) {
        this.f764s = subscription;
        try {
            this.actual.onSubscribe(this);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            subscription.unsubscribe();
            onError(th);
        }
    }

    public final void unsubscribe() {
        this.f764s.unsubscribe();
    }

    public final boolean isUnsubscribed() {
        if (!this.done) {
            if (!this.f764s.isUnsubscribed()) {
                return false;
            }
        }
        return true;
    }
}
