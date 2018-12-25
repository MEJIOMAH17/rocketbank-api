package rx.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.util.SubscriptionList;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.CompositeSubscription;

public final class ScheduledAction extends AtomicReference<Thread> implements Runnable, Subscription {
    private static final long serialVersionUID = -3962399486978279857L;
    final Action0 action;
    final SubscriptionList cancel;

    final class FutureCompleter implements Subscription {
        /* renamed from: f */
        private final Future<?> f760f;

        FutureCompleter(Future<?> future) {
            this.f760f = future;
        }

        public final void unsubscribe() {
            if (ScheduledAction.this.get() != Thread.currentThread()) {
                this.f760f.cancel(true);
            } else {
                this.f760f.cancel(false);
            }
        }

        public final boolean isUnsubscribed() {
            return this.f760f.isCancelled();
        }
    }

    static final class Remover2 extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        final SubscriptionList parent;
        /* renamed from: s */
        final ScheduledAction f761s;

        public Remover2(ScheduledAction scheduledAction, SubscriptionList subscriptionList) {
            this.f761s = scheduledAction;
            this.parent = subscriptionList;
        }

        public final boolean isUnsubscribed() {
            return this.f761s.isUnsubscribed();
        }

        public final void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f761s);
            }
        }
    }

    static final class Remover extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 247232374289553518L;
        final CompositeSubscription parent;
        /* renamed from: s */
        final ScheduledAction f762s;

        public Remover(ScheduledAction scheduledAction, CompositeSubscription compositeSubscription) {
            this.f762s = scheduledAction;
            this.parent = compositeSubscription;
        }

        public final boolean isUnsubscribed() {
            return this.f762s.isUnsubscribed();
        }

        public final void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.parent.remove(this.f762s);
            }
        }
    }

    public ScheduledAction(Action0 action0) {
        this.action = action0;
        this.cancel = new SubscriptionList();
    }

    public ScheduledAction(Action0 action0, CompositeSubscription compositeSubscription) {
        this.action = action0;
        this.cancel = new SubscriptionList(new Remover(this, compositeSubscription));
    }

    public ScheduledAction(Action0 action0, SubscriptionList subscriptionList) {
        this.action = action0;
        this.cancel = new SubscriptionList(new Remover2(this, subscriptionList));
    }

    public final void run() {
        try {
            lazySet(Thread.currentThread());
            this.action.call();
        } catch (Throwable e) {
            signalError(new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", e));
        } catch (Throwable e2) {
            signalError(new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", e2));
        } finally {
            unsubscribe();
        }
    }

    final void signalError(Throwable th) {
        RxJavaHooks.onError(th);
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    public final boolean isUnsubscribed() {
        return this.cancel.isUnsubscribed();
    }

    public final void unsubscribe() {
        if (!this.cancel.isUnsubscribed()) {
            this.cancel.unsubscribe();
        }
    }

    public final void add(Subscription subscription) {
        this.cancel.add(subscription);
    }

    public final void add(Future<?> future) {
        this.cancel.add(new FutureCompleter(future));
    }

    public final void addParent(CompositeSubscription compositeSubscription) {
        this.cancel.add(new Remover(this, compositeSubscription));
    }

    public final void addParent(SubscriptionList subscriptionList) {
        this.cancel.add(new Remover2(this, subscriptionList));
    }
}
