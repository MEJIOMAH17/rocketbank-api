package rx.observers;

import java.util.concurrent.atomic.AtomicReference;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.annotations.Experimental;
import rx.plugins.RxJavaHooks;

@Experimental
public abstract class AsyncCompletableSubscriber implements CompletableSubscriber, Subscription {
    static final Unsubscribed UNSUBSCRIBED = new Unsubscribed();
    private final AtomicReference<Subscription> upstream = new AtomicReference();

    static final class Unsubscribed implements Subscription {
        public final boolean isUnsubscribed() {
            return true;
        }

        public final void unsubscribe() {
        }

        Unsubscribed() {
        }
    }

    protected void onStart() {
    }

    public final void onSubscribe(Subscription subscription) {
        if (this.upstream.compareAndSet(null, subscription)) {
            onStart();
        } else {
            subscription.unsubscribe();
            if (this.upstream.get() != UNSUBSCRIBED) {
                RxJavaHooks.onError(new IllegalStateException("Subscription already set!"));
            }
        }
    }

    public final boolean isUnsubscribed() {
        return this.upstream.get() == UNSUBSCRIBED;
    }

    protected final void clear() {
        this.upstream.set(UNSUBSCRIBED);
    }

    public final void unsubscribe() {
        if (((Subscription) this.upstream.get()) != UNSUBSCRIBED) {
            Subscription subscription = (Subscription) this.upstream.getAndSet(UNSUBSCRIBED);
            if (subscription != null && subscription != UNSUBSCRIBED) {
                subscription.unsubscribe();
            }
        }
    }
}
