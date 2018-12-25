package rx.internal.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import rx.Subscription;
import rx.exceptions.Exceptions;

public final class SubscriptionList implements Subscription {
    private List<Subscription> subscriptions;
    private volatile boolean unsubscribed;

    public SubscriptionList(Subscription... subscriptionArr) {
        this.subscriptions = new LinkedList(Arrays.asList(subscriptionArr));
    }

    public SubscriptionList(Subscription subscription) {
        this.subscriptions = new LinkedList();
        this.subscriptions.add(subscription);
    }

    public final boolean isUnsubscribed() {
        return this.unsubscribed;
    }

    public final void add(Subscription subscription) {
        if (!subscription.isUnsubscribed()) {
            if (!this.unsubscribed) {
                synchronized (this) {
                    if (!this.unsubscribed) {
                        List list = this.subscriptions;
                        if (list == null) {
                            list = new LinkedList();
                            this.subscriptions = list;
                        }
                        list.add(subscription);
                        return;
                    }
                }
            }
            subscription.unsubscribe();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void remove(rx.Subscription r3) {
        /*
        r2 = this;
        r0 = r2.unsubscribed;
        if (r0 != 0) goto L_0x001e;
    L_0x0004:
        monitor-enter(r2);
        r0 = r2.subscriptions;	 Catch:{ all -> 0x001b }
        r1 = r2.unsubscribed;	 Catch:{ all -> 0x001b }
        if (r1 != 0) goto L_0x0019;
    L_0x000b:
        if (r0 != 0) goto L_0x000e;
    L_0x000d:
        goto L_0x0019;
    L_0x000e:
        r0 = r0.remove(r3);	 Catch:{ all -> 0x001b }
        monitor-exit(r2);	 Catch:{ all -> 0x001b }
        if (r0 == 0) goto L_0x001e;
    L_0x0015:
        r3.unsubscribe();
        goto L_0x001e;
    L_0x0019:
        monitor-exit(r2);	 Catch:{ all -> 0x001b }
        return;
    L_0x001b:
        r3 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x001b }
        throw r3;
    L_0x001e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.SubscriptionList.remove(rx.Subscription):void");
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
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.SubscriptionList.unsubscribe():void");
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

    public final void clear() {
        if (!this.unsubscribed) {
            Collection collection;
            synchronized (this) {
                collection = this.subscriptions;
                this.subscriptions = null;
            }
            unsubscribeFromAll(collection);
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
