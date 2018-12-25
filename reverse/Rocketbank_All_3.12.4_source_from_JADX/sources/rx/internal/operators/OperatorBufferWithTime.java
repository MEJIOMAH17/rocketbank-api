package rx.internal.operators;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Observer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.observers.SerializedSubscriber;

public final class OperatorBufferWithTime<T> implements Operator<List<T>, T> {
    final int count;
    final Scheduler scheduler;
    final long timeshift;
    final long timespan;
    final TimeUnit unit;

    final class ExactSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        List<T> chunk = new ArrayList();
        boolean done;
        final Worker inner;

        /* renamed from: rx.internal.operators.OperatorBufferWithTime$ExactSubscriber$1 */
        class C20811 implements Action0 {
            C20811() {
            }

            public void call() {
                ExactSubscriber.this.emit();
            }
        }

        public ExactSubscriber(Subscriber<? super List<T>> subscriber, Worker worker) {
            this.child = subscriber;
            this.inner = worker;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r2) {
            /*
            r1 = this;
            monitor-enter(r1);
            r0 = r1.done;	 Catch:{ all -> 0x002c }
            if (r0 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r1);	 Catch:{ all -> 0x002c }
            return;
        L_0x0007:
            r0 = r1.chunk;	 Catch:{ all -> 0x002c }
            r0.add(r2);	 Catch:{ all -> 0x002c }
            r2 = r1.chunk;	 Catch:{ all -> 0x002c }
            r2 = r2.size();	 Catch:{ all -> 0x002c }
            r0 = rx.internal.operators.OperatorBufferWithTime.this;	 Catch:{ all -> 0x002c }
            r0 = r0.count;	 Catch:{ all -> 0x002c }
            if (r2 != r0) goto L_0x0022;
        L_0x0018:
            r2 = r1.chunk;	 Catch:{ all -> 0x002c }
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x002c }
            r0.<init>();	 Catch:{ all -> 0x002c }
            r1.chunk = r0;	 Catch:{ all -> 0x002c }
            goto L_0x0023;
        L_0x0022:
            r2 = 0;
        L_0x0023:
            monitor-exit(r1);	 Catch:{ all -> 0x002c }
            if (r2 == 0) goto L_0x002b;
        L_0x0026:
            r0 = r1.child;
            r0.onNext(r2);
        L_0x002b:
            return;
        L_0x002c:
            r2 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x002c }
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorBufferWithTime.ExactSubscriber.onNext(java.lang.Object):void");
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunk = null;
                this.child.onError(th);
                unsubscribe();
            }
        }

        public final void onCompleted() {
            try {
                this.inner.unsubscribe();
                synchronized (this) {
                    if (this.done) {
                        return;
                    }
                    this.done = true;
                    List list = this.chunk;
                    this.chunk = null;
                    this.child.onNext(list);
                    this.child.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, this.child);
            }
        }

        final void scheduleExact() {
            this.inner.schedulePeriodically(new C20811(), OperatorBufferWithTime.this.timespan, OperatorBufferWithTime.this.timespan, OperatorBufferWithTime.this.unit);
        }

        final void emit() {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                List list = this.chunk;
                this.chunk = new ArrayList();
                try {
                    this.child.onNext(list);
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, (Observer) this);
                }
            }
        }
    }

    final class InexactSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        final List<List<T>> chunks = new LinkedList();
        boolean done;
        final Worker inner;

        /* renamed from: rx.internal.operators.OperatorBufferWithTime$InexactSubscriber$1 */
        class C20821 implements Action0 {
            C20821() {
            }

            public void call() {
                InexactSubscriber.this.startNewChunk();
            }
        }

        public InexactSubscriber(Subscriber<? super List<T>> subscriber, Worker worker) {
            this.child = subscriber;
            this.inner = worker;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r6) {
            /*
            r5 = this;
            monitor-enter(r5);
            r0 = r5.done;	 Catch:{ all -> 0x004f }
            if (r0 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r5);	 Catch:{ all -> 0x004f }
            return;
        L_0x0007:
            r0 = r5.chunks;	 Catch:{ all -> 0x004f }
            r0 = r0.iterator();	 Catch:{ all -> 0x004f }
            r1 = 0;
        L_0x000e:
            r2 = r0.hasNext();	 Catch:{ all -> 0x004f }
            if (r2 == 0) goto L_0x0035;
        L_0x0014:
            r2 = r0.next();	 Catch:{ all -> 0x004f }
            r2 = (java.util.List) r2;	 Catch:{ all -> 0x004f }
            r2.add(r6);	 Catch:{ all -> 0x004f }
            r3 = r2.size();	 Catch:{ all -> 0x004f }
            r4 = rx.internal.operators.OperatorBufferWithTime.this;	 Catch:{ all -> 0x004f }
            r4 = r4.count;	 Catch:{ all -> 0x004f }
            if (r3 != r4) goto L_0x000e;
        L_0x0027:
            r0.remove();	 Catch:{ all -> 0x004f }
            if (r1 != 0) goto L_0x0031;
        L_0x002c:
            r1 = new java.util.LinkedList;	 Catch:{ all -> 0x004f }
            r1.<init>();	 Catch:{ all -> 0x004f }
        L_0x0031:
            r1.add(r2);	 Catch:{ all -> 0x004f }
            goto L_0x000e;
        L_0x0035:
            monitor-exit(r5);	 Catch:{ all -> 0x004f }
            if (r1 == 0) goto L_0x004e;
        L_0x0038:
            r6 = r1.iterator();
        L_0x003c:
            r0 = r6.hasNext();
            if (r0 == 0) goto L_0x004e;
        L_0x0042:
            r0 = r6.next();
            r0 = (java.util.List) r0;
            r1 = r5.child;
            r1.onNext(r0);
            goto L_0x003c;
        L_0x004e:
            return;
        L_0x004f:
            r6 = move-exception;
            monitor-exit(r5);	 Catch:{ all -> 0x004f }
            throw r6;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorBufferWithTime.InexactSubscriber.onNext(java.lang.Object):void");
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunks.clear();
                this.child.onError(th);
                unsubscribe();
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onCompleted() {
            /*
            r3 = this;
            monitor-enter(r3);	 Catch:{ Throwable -> 0x0039 }
            r0 = r3.done;	 Catch:{ all -> 0x0036 }
            if (r0 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r3);	 Catch:{ all -> 0x0036 }
            return;
        L_0x0007:
            r0 = 1;
            r3.done = r0;	 Catch:{ all -> 0x0036 }
            r0 = new java.util.LinkedList;	 Catch:{ all -> 0x0036 }
            r1 = r3.chunks;	 Catch:{ all -> 0x0036 }
            r0.<init>(r1);	 Catch:{ all -> 0x0036 }
            r1 = r3.chunks;	 Catch:{ all -> 0x0036 }
            r1.clear();	 Catch:{ all -> 0x0036 }
            monitor-exit(r3);	 Catch:{ all -> 0x0036 }
            r0 = r0.iterator();	 Catch:{ Throwable -> 0x0039 }
        L_0x001b:
            r1 = r0.hasNext();	 Catch:{ Throwable -> 0x0039 }
            if (r1 == 0) goto L_0x002d;
        L_0x0021:
            r1 = r0.next();	 Catch:{ Throwable -> 0x0039 }
            r1 = (java.util.List) r1;	 Catch:{ Throwable -> 0x0039 }
            r2 = r3.child;	 Catch:{ Throwable -> 0x0039 }
            r2.onNext(r1);	 Catch:{ Throwable -> 0x0039 }
            goto L_0x001b;
        L_0x002d:
            r0 = r3.child;
            r0.onCompleted();
            r3.unsubscribe();
            return;
        L_0x0036:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x0036 }
            throw r0;	 Catch:{ Throwable -> 0x0039 }
        L_0x0039:
            r0 = move-exception;
            r1 = r3.child;
            rx.exceptions.Exceptions.throwOrReport(r0, r1);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorBufferWithTime.InexactSubscriber.onCompleted():void");
        }

        final void scheduleChunk() {
            this.inner.schedulePeriodically(new C20821(), OperatorBufferWithTime.this.timeshift, OperatorBufferWithTime.this.timeshift, OperatorBufferWithTime.this.unit);
        }

        final void startNewChunk() {
            final List arrayList = new ArrayList();
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunks.add(arrayList);
                this.inner.schedule(new Action0() {
                    public void call() {
                        InexactSubscriber.this.emitChunk(arrayList);
                    }
                }, OperatorBufferWithTime.this.timespan, OperatorBufferWithTime.this.unit);
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void emitChunk(java.util.List<T> r3) {
            /*
            r2 = this;
            monitor-enter(r2);
            r0 = r2.done;	 Catch:{ all -> 0x002f }
            if (r0 == 0) goto L_0x0007;
        L_0x0005:
            monitor-exit(r2);	 Catch:{ all -> 0x002f }
            return;
        L_0x0007:
            r0 = r2.chunks;	 Catch:{ all -> 0x002f }
            r0 = r0.iterator();	 Catch:{ all -> 0x002f }
        L_0x000d:
            r1 = r0.hasNext();	 Catch:{ all -> 0x002f }
            if (r1 == 0) goto L_0x0020;
        L_0x0013:
            r1 = r0.next();	 Catch:{ all -> 0x002f }
            r1 = (java.util.List) r1;	 Catch:{ all -> 0x002f }
            if (r1 != r3) goto L_0x000d;
        L_0x001b:
            r0.remove();	 Catch:{ all -> 0x002f }
            r0 = 1;
            goto L_0x0021;
        L_0x0020:
            r0 = 0;
        L_0x0021:
            monitor-exit(r2);	 Catch:{ all -> 0x002f }
            if (r0 == 0) goto L_0x002e;
        L_0x0024:
            r0 = r2.child;	 Catch:{ Throwable -> 0x002a }
            r0.onNext(r3);	 Catch:{ Throwable -> 0x002a }
            return;
        L_0x002a:
            r3 = move-exception;
            rx.exceptions.Exceptions.throwOrReport(r3, r2);
        L_0x002e:
            return;
        L_0x002f:
            r3 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x002f }
            throw r3;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorBufferWithTime.InexactSubscriber.emitChunk(java.util.List):void");
        }
    }

    public OperatorBufferWithTime(long j, long j2, TimeUnit timeUnit, int i, Scheduler scheduler) {
        this.timespan = j;
        this.timeshift = j2;
        this.unit = timeUnit;
        this.count = i;
        this.scheduler = scheduler;
    }

    public final Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        Subscription createWorker = this.scheduler.createWorker();
        Subscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        if (this.timespan == this.timeshift) {
            Subscriber<? super T> exactSubscriber = new ExactSubscriber(serializedSubscriber, createWorker);
            exactSubscriber.add(createWorker);
            subscriber.add(exactSubscriber);
            exactSubscriber.scheduleExact();
            return exactSubscriber;
        }
        Subscriber inexactSubscriber = new InexactSubscriber(serializedSubscriber, createWorker);
        inexactSubscriber.add(createWorker);
        subscriber.add(inexactSubscriber);
        inexactSubscriber.startNewChunk();
        inexactSubscriber.scheduleChunk();
        return inexactSubscriber;
    }
}
