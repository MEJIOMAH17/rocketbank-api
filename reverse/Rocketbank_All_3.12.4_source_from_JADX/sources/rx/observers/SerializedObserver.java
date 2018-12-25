package rx.observers;

import rx.Observer;
import rx.exceptions.Exceptions;
import rx.internal.operators.NotificationLite;

public class SerializedObserver<T> implements Observer<T> {
    private final Observer<? super T> actual;
    private boolean emitting;
    private FastList queue;
    private volatile boolean terminated;

    static final class FastList {
        Object[] array;
        int size;

        FastList() {
        }

        public final void add(Object obj) {
            int i = this.size;
            Object[] objArr = this.array;
            if (objArr == null) {
                objArr = new Object[16];
                this.array = objArr;
            } else if (i == objArr.length) {
                Object obj2 = new Object[((i >> 2) + i)];
                System.arraycopy(objArr, 0, obj2, 0, i);
                this.array = obj2;
                objArr = obj2;
            }
            objArr[i] = obj;
            this.size = i + 1;
        }
    }

    public SerializedObserver(Observer<? super T> observer) {
        this.actual = observer;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onNext(T r7) {
        /*
        r6 = this;
        r0 = r6.terminated;
        if (r0 == 0) goto L_0x0005;
    L_0x0004:
        return;
    L_0x0005:
        monitor-enter(r6);
        r0 = r6.terminated;	 Catch:{ all -> 0x006e }
        if (r0 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r6);	 Catch:{ all -> 0x006e }
        return;
    L_0x000c:
        r0 = r6.emitting;	 Catch:{ all -> 0x006e }
        if (r0 == 0) goto L_0x0024;
    L_0x0010:
        r0 = r6.queue;	 Catch:{ all -> 0x006e }
        if (r0 != 0) goto L_0x001b;
    L_0x0014:
        r0 = new rx.observers.SerializedObserver$FastList;	 Catch:{ all -> 0x006e }
        r0.<init>();	 Catch:{ all -> 0x006e }
        r6.queue = r0;	 Catch:{ all -> 0x006e }
    L_0x001b:
        r7 = rx.internal.operators.NotificationLite.next(r7);	 Catch:{ all -> 0x006e }
        r0.add(r7);	 Catch:{ all -> 0x006e }
        monitor-exit(r6);	 Catch:{ all -> 0x006e }
        return;
    L_0x0024:
        r0 = 1;
        r6.emitting = r0;	 Catch:{ all -> 0x006e }
        monitor-exit(r6);	 Catch:{ all -> 0x006e }
        r1 = r6.actual;	 Catch:{ Throwable -> 0x0065 }
        r1.onNext(r7);	 Catch:{ Throwable -> 0x0065 }
    L_0x002d:
        monitor-enter(r6);
        r1 = r6.queue;	 Catch:{ all -> 0x0062 }
        r2 = 0;
        if (r1 != 0) goto L_0x0037;
    L_0x0033:
        r6.emitting = r2;	 Catch:{ all -> 0x0062 }
        monitor-exit(r6);	 Catch:{ all -> 0x0062 }
        return;
    L_0x0037:
        r3 = 0;
        r6.queue = r3;	 Catch:{ all -> 0x0062 }
        monitor-exit(r6);	 Catch:{ all -> 0x0062 }
        r1 = r1.array;
        r3 = r1.length;
    L_0x003e:
        if (r2 >= r3) goto L_0x002d;
    L_0x0040:
        r4 = r1[r2];
        if (r4 == 0) goto L_0x002d;
    L_0x0044:
        r5 = r6.actual;	 Catch:{ Throwable -> 0x0052 }
        r4 = rx.internal.operators.NotificationLite.accept(r5, r4);	 Catch:{ Throwable -> 0x0052 }
        if (r4 == 0) goto L_0x004f;
    L_0x004c:
        r6.terminated = r0;	 Catch:{ Throwable -> 0x0052 }
        return;
    L_0x004f:
        r2 = r2 + 1;
        goto L_0x003e;
    L_0x0052:
        r1 = move-exception;
        r6.terminated = r0;
        rx.exceptions.Exceptions.throwIfFatal(r1);
        r0 = r6.actual;
        r7 = rx.exceptions.OnErrorThrowable.addValueAsLastCause(r1, r7);
        r0.onError(r7);
        return;
    L_0x0062:
        r7 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0062 }
        throw r7;
    L_0x0065:
        r1 = move-exception;
        r6.terminated = r0;
        r0 = r6.actual;
        rx.exceptions.Exceptions.throwOrReport(r1, r0, r7);
        return;
    L_0x006e:
        r7 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x006e }
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.observers.SerializedObserver.onNext(java.lang.Object):void");
    }

    public void onError(Throwable th) {
        Exceptions.throwIfFatal(th);
        if (!this.terminated) {
            synchronized (this) {
                if (this.terminated) {
                    return;
                }
                this.terminated = true;
                if (this.emitting) {
                    FastList fastList = this.queue;
                    if (fastList == null) {
                        fastList = new FastList();
                        this.queue = fastList;
                    }
                    fastList.add(NotificationLite.error(th));
                    return;
                }
                this.emitting = true;
                this.actual.onError(th);
            }
        }
    }

    public void onCompleted() {
        if (!this.terminated) {
            synchronized (this) {
                if (this.terminated) {
                    return;
                }
                this.terminated = true;
                if (this.emitting) {
                    FastList fastList = this.queue;
                    if (fastList == null) {
                        fastList = new FastList();
                        this.queue = fastList;
                    }
                    fastList.add(NotificationLite.completed());
                    return;
                }
                this.emitting = true;
                this.actual.onCompleted();
            }
        }
    }
}
