package rx.internal.subscriptions;

import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.subscriptions.Subscriptions;

public final class SequentialSubscription extends AtomicReference<Subscription> implements Subscription {
    private static final long serialVersionUID = 995205034283130269L;

    public SequentialSubscription(Subscription subscription) {
        lazySet(subscription);
    }

    public final Subscription current() {
        Subscription subscription = (Subscription) super.get();
        return subscription == Unsubscribed.INSTANCE ? Subscriptions.unsubscribed() : subscription;
    }

    public final boolean update(Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = (Subscription) get();
            if (subscription2 == Unsubscribed.INSTANCE) {
                if (subscription != null) {
                    subscription.unsubscribe();
                }
                return null;
            }
        } while (!compareAndSet(subscription2, subscription));
        if (subscription2 != null) {
            subscription2.unsubscribe();
        }
        return true;
    }

    public final boolean replace(Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = (Subscription) get();
            if (subscription2 == Unsubscribed.INSTANCE) {
                if (subscription != null) {
                    subscription.unsubscribe();
                }
                return null;
            }
        } while (!compareAndSet(subscription2, subscription));
        return true;
    }

    public final boolean updateWeak(Subscription subscription) {
        Subscription subscription2 = (Subscription) get();
        if (subscription2 == Unsubscribed.INSTANCE) {
            if (subscription != null) {
                subscription.unsubscribe();
            }
            return false;
        } else if (compareAndSet(subscription2, subscription)) {
            return true;
        } else {
            subscription2 = (Subscription) get();
            if (subscription != null) {
                subscription.unsubscribe();
            }
            if (subscription2 == Unsubscribed.INSTANCE) {
                return true;
            }
            return false;
        }
    }

    public final boolean replaceWeak(Subscription subscription) {
        Subscription subscription2 = (Subscription) get();
        if (subscription2 == Unsubscribed.INSTANCE) {
            if (subscription != null) {
                subscription.unsubscribe();
            }
            return false;
        } else if (compareAndSet(subscription2, subscription) || ((Subscription) get()) != Unsubscribed.INSTANCE) {
            return true;
        } else {
            if (subscription != null) {
                subscription.unsubscribe();
            }
            return false;
        }
    }

    public final void unsubscribe() {
        if (((Subscription) get()) != Unsubscribed.INSTANCE) {
            Subscription subscription = (Subscription) getAndSet(Unsubscribed.INSTANCE);
            if (subscription != null && subscription != Unsubscribed.INSTANCE) {
                subscription.unsubscribe();
            }
        }
    }

    public final boolean isUnsubscribed() {
        return get() == Unsubscribed.INSTANCE;
    }
}
