package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.observables.ConnectableObservable;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

public final class OnSubscribeRefCount<T> implements OnSubscribe<T> {
    volatile CompositeSubscription baseSubscription = new CompositeSubscription();
    final ReentrantLock lock = new ReentrantLock();
    private final ConnectableObservable<? extends T> source;
    final AtomicInteger subscriptionCount = new AtomicInteger(0);

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void call(rx.Subscriber<? super T> r3) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find block by offset: 0x0028 in list [B:7:0x0022]
	at jadx.core.utils.BlockUtils.getBlockByOffset(BlockUtils.java:43)
	at jadx.core.dex.instructions.IfNode.initBlocks(IfNode.java:60)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.initBlocksInIfNodes(BlockFinish.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.visit(BlockFinish.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = r2.lock;
        r0.lock();
        r0 = r2.subscriptionCount;
        r0 = r0.incrementAndGet();
        r1 = 1;
        if (r0 != r1) goto L_0x0036;
    L_0x000e:
        r0 = new java.util.concurrent.atomic.AtomicBoolean;
        r0.<init>(r1);
        r1 = r2.source;	 Catch:{ all -> 0x0029 }
        r3 = r2.onSubscribe(r3, r0);	 Catch:{ all -> 0x0029 }
        r1.connect(r3);	 Catch:{ all -> 0x0029 }
        r3 = r0.get();
        if (r3 == 0) goto L_0x0028;
    L_0x0022:
        r3 = r2.lock;
        r3.unlock();
        return;
    L_0x0028:
        return;
    L_0x0029:
        r3 = move-exception;
        r0 = r0.get();
        if (r0 == 0) goto L_0x0035;
    L_0x0030:
        r0 = r2.lock;
        r0.unlock();
    L_0x0035:
        throw r3;
    L_0x0036:
        r0 = r2.baseSubscription;	 Catch:{ all -> 0x0041 }
        r2.doSubscribe(r3, r0);	 Catch:{ all -> 0x0041 }
        r3 = r2.lock;
        r3.unlock();
        return;
    L_0x0041:
        r3 = move-exception;
        r0 = r2.lock;
        r0.unlock();
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribeRefCount.call(rx.Subscriber):void");
    }

    public OnSubscribeRefCount(ConnectableObservable<? extends T> connectableObservable) {
        this.source = connectableObservable;
    }

    private Action1<Subscription> onSubscribe(final Subscriber<? super T> subscriber, final AtomicBoolean atomicBoolean) {
        return new Action1<Subscription>() {
            public void call(Subscription subscription) {
                try {
                    OnSubscribeRefCount.this.baseSubscription.add(subscription);
                    OnSubscribeRefCount.this.doSubscribe(subscriber, OnSubscribeRefCount.this.baseSubscription);
                } finally {
                    OnSubscribeRefCount.this.lock.unlock();
                    atomicBoolean.set(false);
                }
            }
        };
    }

    final void doSubscribe(final Subscriber<? super T> subscriber, final CompositeSubscription compositeSubscription) {
        subscriber.add(disconnect(compositeSubscription));
        this.source.unsafeSubscribe(new Subscriber<T>(subscriber) {
            public void onError(Throwable th) {
                cleanup();
                subscriber.onError(th);
            }

            public void onNext(T t) {
                subscriber.onNext(t);
            }

            public void onCompleted() {
                cleanup();
                subscriber.onCompleted();
            }

            void cleanup() {
                OnSubscribeRefCount.this.lock.lock();
                try {
                    if (OnSubscribeRefCount.this.baseSubscription == compositeSubscription) {
                        OnSubscribeRefCount.this.baseSubscription.unsubscribe();
                        OnSubscribeRefCount.this.baseSubscription = new CompositeSubscription();
                        OnSubscribeRefCount.this.subscriptionCount.set(0);
                    }
                    OnSubscribeRefCount.this.lock.unlock();
                } catch (Throwable th) {
                    OnSubscribeRefCount.this.lock.unlock();
                }
            }
        });
    }

    private Subscription disconnect(final CompositeSubscription compositeSubscription) {
        return Subscriptions.create(new Action0() {
            public void call() {
                OnSubscribeRefCount.this.lock.lock();
                try {
                    if (OnSubscribeRefCount.this.baseSubscription == compositeSubscription && OnSubscribeRefCount.this.subscriptionCount.decrementAndGet() == 0) {
                        OnSubscribeRefCount.this.baseSubscription.unsubscribe();
                        OnSubscribeRefCount.this.baseSubscription = new CompositeSubscription();
                    }
                    OnSubscribeRefCount.this.lock.unlock();
                } catch (Throwable th) {
                    OnSubscribeRefCount.this.lock.unlock();
                }
            }
        });
    }
}
