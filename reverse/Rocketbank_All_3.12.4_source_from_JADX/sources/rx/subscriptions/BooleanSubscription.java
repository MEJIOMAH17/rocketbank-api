package rx.subscriptions;

import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.functions.Action0;

public final class BooleanSubscription implements Subscription {
    static final Action0 EMPTY_ACTION = new C21341();
    final AtomicReference<Action0> actionRef;

    /* renamed from: rx.subscriptions.BooleanSubscription$1 */
    static class C21341 implements Action0 {
        public final void call() {
        }

        C21341() {
        }
    }

    public BooleanSubscription() {
        this.actionRef = new AtomicReference();
    }

    private BooleanSubscription(Action0 action0) {
        this.actionRef = new AtomicReference(action0);
    }

    public static BooleanSubscription create() {
        return new BooleanSubscription();
    }

    public static BooleanSubscription create(Action0 action0) {
        return new BooleanSubscription(action0);
    }

    public final boolean isUnsubscribed() {
        return this.actionRef.get() == EMPTY_ACTION;
    }

    public final void unsubscribe() {
        if (((Action0) this.actionRef.get()) != EMPTY_ACTION) {
            Action0 action0 = (Action0) this.actionRef.getAndSet(EMPTY_ACTION);
            if (action0 != null && action0 != EMPTY_ACTION) {
                action0.call();
            }
        }
    }
}
