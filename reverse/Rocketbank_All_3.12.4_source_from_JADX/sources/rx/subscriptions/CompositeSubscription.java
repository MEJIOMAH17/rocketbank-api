package rx.subscriptions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.Subscription;
import rx.exceptions.Exceptions;

public final class CompositeSubscription implements Subscription {
    private Set<Subscription> subscriptions;
    private volatile boolean unsubscribed;

    public CompositeSubscription(Subscription... subscriptionArr) {
        this.subscriptions = new HashSet(Arrays.asList(subscriptionArr));
    }

    public final boolean isUnsubscribed() {
        return this.unsubscribed;
    }

    public final void add(Subscription subscription) {
        if (!subscription.isUnsubscribed()) {
            if (!this.unsubscribed) {
                synchronized (this) {
                    if (!this.unsubscribed) {
                        if (this.subscriptions == null) {
                            this.subscriptions = new HashSet(4);
                        }
                        this.subscriptions.add(subscription);
                        return;
                    }
                }
            }
            subscription.unsubscribe();
        }
    }

    public final void addAll(Subscription... subscriptionArr) {
        int length;
        int i = 0;
        if (!this.unsubscribed) {
            synchronized (this) {
                if (!this.unsubscribed) {
                    if (this.subscriptions == null) {
                        this.subscriptions = new HashSet(subscriptionArr.length);
                    }
                    length = subscriptionArr.length;
                    while (i < length) {
                        Subscription subscription = subscriptionArr[i];
                        if (!subscription.isUnsubscribed()) {
                            this.subscriptions.add(subscription);
                        }
                        i++;
                    }
                    return;
                }
            }
        }
        length = subscriptionArr.length;
        while (i < length) {
            subscriptionArr[i].unsubscribe();
            i++;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void remove(rx.Subscription r2) {
        /*
        r1 = this;
        r0 = r1.unsubscribed;
        if (r0 != 0) goto L_0x0020;
    L_0x0004:
        monitor-enter(r1);
        r0 = r1.unsubscribed;	 Catch:{ all -> 0x001d }
        if (r0 != 0) goto L_0x001b;
    L_0x0009:
        r0 = r1.subscriptions;	 Catch:{ all -> 0x001d }
        if (r0 != 0) goto L_0x000e;
    L_0x000d:
        goto L_0x001b;
    L_0x000e:
        r0 = r1.subscriptions;	 Catch:{ all -> 0x001d }
        r0 = r0.remove(r2);	 Catch:{ all -> 0x001d }
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0020;
    L_0x0017:
        r2.unsubscribe();
        goto L_0x0020;
    L_0x001b:
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        return;
    L_0x001d:
        r2 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        throw r2;
    L_0x0020:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.subscriptions.CompositeSubscription.remove(rx.Subscription):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void clear() {
        /*
        r2 = this;
        r0 = r2.unsubscribed;
        if (r0 != 0) goto L_0x001d;
    L_0x0004:
        monitor-enter(r2);
        r0 = r2.unsubscribed;	 Catch:{ all -> 0x001a }
        if (r0 != 0) goto L_0x0018;
    L_0x0009:
        r0 = r2.subscriptions;	 Catch:{ all -> 0x001a }
        if (r0 != 0) goto L_0x000e;
    L_0x000d:
        goto L_0x0018;
    L_0x000e:
        r0 = r2.subscriptions;	 Catch:{ all -> 0x001a }
        r1 = 0;
        r2.subscriptions = r1;	 Catch:{ all -> 0x001a }
        monitor-exit(r2);	 Catch:{ all -> 0x001a }
        unsubscribeFromAll(r0);
        goto L_0x001d;
    L_0x0018:
        monitor-exit(r2);	 Catch:{ all -> 0x001a }
        return;
    L_0x001a:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x001a }
        throw r0;
    L_0x001d:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.subscriptions.CompositeSubscription.clear():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void unsubscribe() {
        /*
        r2 = this;
        r0 = r2.unsubscribed;
        if (r0 != 0) goto L_0x001b;
    L_0x0004:
        monitor-enter(r2);
        r0 = r2.unsubscribed;	 Catch:{ all -> 0x0018 }
        if (r0 == 0) goto L_0x000b;
    L_0x0009:
        monitor-exit(r2);	 Catch:{ all -> 0x0018 }
        return;
    L_0x000b:
        r0 = 1;
        r2.unsubscribed = r0;	 Catch:{ all -> 0x0018 }
        r0 = r2.subscriptions;	 Catch:{ all -> 0x0018 }
        r1 = 0;
        r2.subscriptions = r1;	 Catch:{ all -> 0x0018 }
        monitor-exit(r2);	 Catch:{ all -> 0x0018 }
        unsubscribeFromAll(r0);
        goto L_0x001b;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0018 }
        throw r0;
    L_0x001b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.subscriptions.CompositeSubscription.unsubscribe():void");
    }

    private static void unsubscribeFromAll(Collection<Subscription> collection) {
        if (collection != null) {
            List list = null;
            for (Subscription unsubscribe : collection) {
                try {
                    unsubscribe.unsubscribe();
                } catch (Throwable th) {
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(th);
                }
            }
            Exceptions.throwIfAny(list);
        }
    }

    public final boolean hasSubscriptions() {
        boolean z = false;
        if (this.unsubscribed) {
            return false;
        }
        synchronized (this) {
            if (!(this.unsubscribed || this.subscriptions == null || this.subscriptions.isEmpty())) {
                z = true;
            }
        }
        return z;
    }
}
