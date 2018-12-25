package rx.subscriptions;

import rx.Subscription;
import rx.internal.subscriptions.SequentialSubscription;

public final class MultipleAssignmentSubscription implements Subscription {
    final SequentialSubscription state = new SequentialSubscription();

    public final boolean isUnsubscribed() {
        return this.state.isUnsubscribed();
    }

    public final void unsubscribe() {
        this.state.unsubscribe();
    }

    public final void set(Subscription subscription) {
        if (subscription == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        this.state.replace(subscription);
    }

    public final Subscription get() {
        return this.state.current();
    }
}
