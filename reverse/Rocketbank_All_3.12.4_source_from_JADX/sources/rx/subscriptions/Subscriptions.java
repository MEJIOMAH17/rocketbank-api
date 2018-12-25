package rx.subscriptions;

import java.util.concurrent.Future;
import rx.Subscription;
import rx.functions.Action0;

public final class Subscriptions {
    private static final Unsubscribed UNSUBSCRIBED = new Unsubscribed();

    static final class FutureSubscription implements Subscription {
        /* renamed from: f */
        final Future<?> f765f;

        public FutureSubscription(Future<?> future) {
            this.f765f = future;
        }

        public final void unsubscribe() {
            this.f765f.cancel(true);
        }

        public final boolean isUnsubscribed() {
            return this.f765f.isCancelled();
        }
    }

    static final class Unsubscribed implements Subscription {
        public final boolean isUnsubscribed() {
            return true;
        }

        public final void unsubscribe() {
        }

        Unsubscribed() {
        }
    }

    private Subscriptions() {
        throw new IllegalStateException("No instances!");
    }

    public static Subscription empty() {
        return BooleanSubscription.create();
    }

    public static Subscription unsubscribed() {
        return UNSUBSCRIBED;
    }

    public static Subscription create(Action0 action0) {
        return BooleanSubscription.create(action0);
    }

    public static Subscription from(Future<?> future) {
        return new FutureSubscription(future);
    }

    public static CompositeSubscription from(Subscription... subscriptionArr) {
        return new CompositeSubscription(subscriptionArr);
    }
}
