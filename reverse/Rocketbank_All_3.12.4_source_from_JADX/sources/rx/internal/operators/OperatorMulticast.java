package rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Func0;
import rx.observables.ConnectableObservable;
import rx.subjects.Subject;

public final class OperatorMulticast<T, R> extends ConnectableObservable<R> {
    final AtomicReference<Subject<? super T, ? extends R>> connectedSubject;
    final Object guard;
    Subscription guardedSubscription;
    final Observable<? extends T> source;
    final Func0<? extends Subject<? super T, ? extends R>> subjectFactory;
    Subscriber<T> subscription;
    final List<Subscriber<? super R>> waitingForConnect;

    /* renamed from: rx.internal.operators.OperatorMulticast$1 */
    class C21471 implements OnSubscribe<R> {
        final /* synthetic */ AtomicReference val$connectedSubject;
        final /* synthetic */ Object val$guard;
        final /* synthetic */ List val$waitingForConnect;

        C21471(Object obj, AtomicReference atomicReference, List list) {
            this.val$guard = obj;
            this.val$connectedSubject = atomicReference;
            this.val$waitingForConnect = list;
        }

        public void call(Subscriber<? super R> subscriber) {
            synchronized (this.val$guard) {
                if (this.val$connectedSubject.get() == null) {
                    this.val$waitingForConnect.add(subscriber);
                } else {
                    ((Subject) this.val$connectedSubject.get()).unsafeSubscribe(subscriber);
                }
            }
        }
    }

    public OperatorMulticast(Observable<? extends T> observable, Func0<? extends Subject<? super T, ? extends R>> func0) {
        this(new Object(), new AtomicReference(), new ArrayList(), observable, func0);
    }

    private OperatorMulticast(Object obj, AtomicReference<Subject<? super T, ? extends R>> atomicReference, List<Subscriber<? super R>> list, Observable<? extends T> observable, Func0<? extends Subject<? super T, ? extends R>> func0) {
        super(new C21471(obj, atomicReference, list));
        this.guard = obj;
        this.connectedSubject = atomicReference;
        this.waitingForConnect = list;
        this.source = observable;
        this.subjectFactory = func0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(rx.functions.Action1<? super rx.Subscription> r6) {
        /*
        r5 = this;
        r0 = r5.guard;
        monitor-enter(r0);
        r1 = r5.subscription;	 Catch:{ all -> 0x0071 }
        if (r1 == 0) goto L_0x000e;
    L_0x0007:
        r1 = r5.guardedSubscription;	 Catch:{ all -> 0x0071 }
        r6.call(r1);	 Catch:{ all -> 0x0071 }
        monitor-exit(r0);	 Catch:{ all -> 0x0071 }
        return;
    L_0x000e:
        r1 = r5.subjectFactory;	 Catch:{ all -> 0x0071 }
        r1 = r1.call();	 Catch:{ all -> 0x0071 }
        r1 = (rx.subjects.Subject) r1;	 Catch:{ all -> 0x0071 }
        r2 = rx.observers.Subscribers.from(r1);	 Catch:{ all -> 0x0071 }
        r5.subscription = r2;	 Catch:{ all -> 0x0071 }
        r2 = new java.util.concurrent.atomic.AtomicReference;	 Catch:{ all -> 0x0071 }
        r2.<init>();	 Catch:{ all -> 0x0071 }
        r3 = new rx.internal.operators.OperatorMulticast$2;	 Catch:{ all -> 0x0071 }
        r3.<init>(r2);	 Catch:{ all -> 0x0071 }
        r3 = rx.subscriptions.Subscriptions.create(r3);	 Catch:{ all -> 0x0071 }
        r2.set(r3);	 Catch:{ all -> 0x0071 }
        r2 = r2.get();	 Catch:{ all -> 0x0071 }
        r2 = (rx.Subscription) r2;	 Catch:{ all -> 0x0071 }
        r5.guardedSubscription = r2;	 Catch:{ all -> 0x0071 }
        r2 = r5.waitingForConnect;	 Catch:{ all -> 0x0071 }
        r2 = r2.iterator();	 Catch:{ all -> 0x0071 }
    L_0x003b:
        r3 = r2.hasNext();	 Catch:{ all -> 0x0071 }
        if (r3 == 0) goto L_0x0050;
    L_0x0041:
        r3 = r2.next();	 Catch:{ all -> 0x0071 }
        r3 = (rx.Subscriber) r3;	 Catch:{ all -> 0x0071 }
        r4 = new rx.internal.operators.OperatorMulticast$3;	 Catch:{ all -> 0x0071 }
        r4.<init>(r3, r3);	 Catch:{ all -> 0x0071 }
        r1.unsafeSubscribe(r4);	 Catch:{ all -> 0x0071 }
        goto L_0x003b;
    L_0x0050:
        r2 = r5.waitingForConnect;	 Catch:{ all -> 0x0071 }
        r2.clear();	 Catch:{ all -> 0x0071 }
        r2 = r5.connectedSubject;	 Catch:{ all -> 0x0071 }
        r2.set(r1);	 Catch:{ all -> 0x0071 }
        monitor-exit(r0);	 Catch:{ all -> 0x0071 }
        r0 = r5.guardedSubscription;
        r6.call(r0);
        r6 = r5.guard;
        monitor-enter(r6);
        r0 = r5.subscription;	 Catch:{ all -> 0x006e }
        monitor-exit(r6);	 Catch:{ all -> 0x006e }
        if (r0 == 0) goto L_0x006d;
    L_0x0068:
        r6 = r5.source;
        r6.subscribe(r0);
    L_0x006d:
        return;
    L_0x006e:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x006e }
        throw r0;
    L_0x0071:
        r6 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0071 }
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMulticast.connect(rx.functions.Action1):void");
    }
}
