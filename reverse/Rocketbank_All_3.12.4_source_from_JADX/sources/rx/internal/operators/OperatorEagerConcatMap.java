package rx.internal.operators;

import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.util.atomic.SpscAtomicArrayQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.subscriptions.Subscriptions;

public final class OperatorEagerConcatMap<T, R> implements Operator<R, T> {
    final int bufferSize;
    final Func1<? super T, ? extends Observable<? extends R>> mapper;
    private final int maxConcurrent;

    static final class EagerOuterProducer extends AtomicLong implements Producer {
        private static final long serialVersionUID = -657299606803478389L;
        final EagerOuterSubscriber<?, ?> parent;

        public EagerOuterProducer(EagerOuterSubscriber<?, ?> eagerOuterSubscriber) {
            this.parent = eagerOuterSubscriber;
        }

        public final void request(long j) {
            if (j < 0) {
                throw new IllegalStateException("n >= 0 required but it was ".concat(String.valueOf(j)));
            } else if (j > 0) {
                BackpressureUtils.getAndAddRequest(this, j);
                this.parent.drain();
            }
        }
    }

    static final class EagerInnerSubscriber<T> extends Subscriber<T> {
        volatile boolean done;
        Throwable error;
        final EagerOuterSubscriber<?, T> parent;
        final Queue<Object> queue;

        public EagerInnerSubscriber(EagerOuterSubscriber<?, T> eagerOuterSubscriber, int i) {
            this.parent = eagerOuterSubscriber;
            if (UnsafeAccess.isUnsafeAvailable() != null) {
                eagerOuterSubscriber = new SpscArrayQueue(i);
            } else {
                eagerOuterSubscriber = new SpscAtomicArrayQueue(i);
            }
            this.queue = eagerOuterSubscriber;
            request((long) i);
        }

        public final void onNext(T t) {
            this.queue.offer(NotificationLite.next(t));
            this.parent.drain();
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            this.parent.drain();
        }

        public final void onCompleted() {
            this.done = true;
            this.parent.drain();
        }

        final void requestMore(long j) {
            request(j);
        }
    }

    static final class EagerOuterSubscriber<T, R> extends Subscriber<T> {
        final Subscriber<? super R> actual;
        final int bufferSize;
        volatile boolean cancelled;
        volatile boolean done;
        Throwable error;
        final Func1<? super T, ? extends Observable<? extends R>> mapper;
        private EagerOuterProducer sharedProducer;
        final Queue<EagerInnerSubscriber<R>> subscribers = new LinkedList();
        final AtomicInteger wip = new AtomicInteger();

        /* renamed from: rx.internal.operators.OperatorEagerConcatMap$EagerOuterSubscriber$1 */
        class C20881 implements Action0 {
            C20881() {
            }

            public void call() {
                EagerOuterSubscriber.this.cancelled = true;
                if (EagerOuterSubscriber.this.wip.getAndIncrement() == 0) {
                    EagerOuterSubscriber.this.cleanup();
                }
            }
        }

        public EagerOuterSubscriber(Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2, Subscriber<? super R> subscriber) {
            this.mapper = func1;
            this.bufferSize = i;
            this.actual = subscriber;
            request(i2 == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED ? -1 : (long) i2);
        }

        final void init() {
            this.sharedProducer = new EagerOuterProducer(this);
            add(Subscriptions.create(new C20881()));
            this.actual.add(this);
            this.actual.setProducer(this.sharedProducer);
        }

        final void cleanup() {
            synchronized (this.subscribers) {
                List<Subscription> arrayList = new ArrayList(this.subscribers);
                this.subscribers.clear();
            }
            for (Subscription unsubscribe : arrayList) {
                unsubscribe.unsubscribe();
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r4) {
            /*
            r3 = this;
            r0 = r3.mapper;	 Catch:{ Throwable -> 0x0032 }
            r0 = r0.call(r4);	 Catch:{ Throwable -> 0x0032 }
            r0 = (rx.Observable) r0;	 Catch:{ Throwable -> 0x0032 }
            r4 = r3.cancelled;
            if (r4 == 0) goto L_0x000d;
        L_0x000c:
            return;
        L_0x000d:
            r4 = new rx.internal.operators.OperatorEagerConcatMap$EagerInnerSubscriber;
            r1 = r3.bufferSize;
            r4.<init>(r3, r1);
            r1 = r3.subscribers;
            monitor-enter(r1);
            r2 = r3.cancelled;	 Catch:{ all -> 0x002f }
            if (r2 == 0) goto L_0x001d;
        L_0x001b:
            monitor-exit(r1);	 Catch:{ all -> 0x002f }
            return;
        L_0x001d:
            r2 = r3.subscribers;	 Catch:{ all -> 0x002f }
            r2.add(r4);	 Catch:{ all -> 0x002f }
            monitor-exit(r1);	 Catch:{ all -> 0x002f }
            r1 = r3.cancelled;
            if (r1 == 0) goto L_0x0028;
        L_0x0027:
            return;
        L_0x0028:
            r0.unsafeSubscribe(r4);
            r3.drain();
            return;
        L_0x002f:
            r4 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x002f }
            throw r4;
        L_0x0032:
            r0 = move-exception;
            r1 = r3.actual;
            rx.exceptions.Exceptions.throwOrReport(r0, r1, r4);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorEagerConcatMap.EagerOuterSubscriber.onNext(java.lang.Object):void");
        }

        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        public final void onCompleted() {
            this.done = true;
            drain();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void drain() {
            /*
            r19 = this;
            r1 = r19;
            r2 = r1.wip;
            r2 = r2.getAndIncrement();
            if (r2 == 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r2 = r1.sharedProducer;
            r3 = r1.actual;
            r5 = 1;
        L_0x0010:
            r6 = r1.cancelled;
            if (r6 == 0) goto L_0x0018;
        L_0x0014:
            r19.cleanup();
            return;
        L_0x0018:
            r6 = r1.done;
            r7 = r1.subscribers;
            monitor-enter(r7);
            r8 = r1.subscribers;	 Catch:{ all -> 0x00ba }
            r8 = r8.peek();	 Catch:{ all -> 0x00ba }
            r8 = (rx.internal.operators.OperatorEagerConcatMap.EagerInnerSubscriber) r8;	 Catch:{ all -> 0x00ba }
            monitor-exit(r7);	 Catch:{ all -> 0x00ba }
            r7 = 0;
            if (r8 != 0) goto L_0x002b;
        L_0x0029:
            r9 = 1;
            goto L_0x002c;
        L_0x002b:
            r9 = r7;
        L_0x002c:
            if (r6 == 0) goto L_0x003f;
        L_0x002e:
            r6 = r1.error;
            if (r6 == 0) goto L_0x0039;
        L_0x0032:
            r19.cleanup();
            r3.onError(r6);
            return;
        L_0x0039:
            if (r9 == 0) goto L_0x003f;
        L_0x003b:
            r3.onCompleted();
            return;
        L_0x003f:
            if (r9 != 0) goto L_0x00b0;
        L_0x0041:
            r9 = r2.get();
            r6 = r8.queue;
            r13 = 0;
        L_0x0049:
            r15 = r8.done;
            r4 = r6.peek();
            if (r4 != 0) goto L_0x0054;
        L_0x0051:
            r16 = 1;
            goto L_0x0056;
        L_0x0054:
            r16 = r7;
        L_0x0056:
            r11 = 1;
            if (r15 == 0) goto L_0x007c;
        L_0x005a:
            r15 = r8.error;
            if (r15 == 0) goto L_0x0065;
        L_0x005e:
            r19.cleanup();
            r3.onError(r15);
            return;
        L_0x0065:
            if (r16 == 0) goto L_0x007c;
        L_0x0067:
            r15 = r1.subscribers;
            monitor-enter(r15);
            r4 = r1.subscribers;	 Catch:{ all -> 0x0078 }
            r4.poll();	 Catch:{ all -> 0x0078 }
            monitor-exit(r15);	 Catch:{ all -> 0x0078 }
            r8.unsubscribe();
            r1.request(r11);
            r7 = 1;
            goto L_0x0097;
        L_0x0078:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r15);	 Catch:{ all -> 0x0078 }
            throw r2;
        L_0x007c:
            if (r16 != 0) goto L_0x0097;
        L_0x007e:
            r15 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1));
            if (r15 == 0) goto L_0x0097;
        L_0x0082:
            r6.poll();
            r15 = rx.internal.operators.NotificationLite.getValue(r4);	 Catch:{ Throwable -> 0x0091 }
            r3.onNext(r15);	 Catch:{ Throwable -> 0x0091 }
            r17 = r13 + r11;
            r13 = r17;
            goto L_0x0049;
        L_0x0091:
            r0 = move-exception;
            r2 = r0;
            rx.exceptions.Exceptions.throwOrReport(r2, r3, r4);
            return;
        L_0x0097:
            r11 = 0;
            r4 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1));
            if (r4 == 0) goto L_0x00ae;
        L_0x009d:
            r11 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r4 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1));
            if (r4 == 0) goto L_0x00a9;
        L_0x00a6:
            rx.internal.operators.BackpressureUtils.produced(r2, r13);
        L_0x00a9:
            if (r7 != 0) goto L_0x00ae;
        L_0x00ab:
            r8.requestMore(r13);
        L_0x00ae:
            if (r7 != 0) goto L_0x0010;
        L_0x00b0:
            r4 = r1.wip;
            r5 = -r5;
            r5 = r4.addAndGet(r5);
            if (r5 != 0) goto L_0x0010;
        L_0x00b9:
            return;
        L_0x00ba:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r7);	 Catch:{ all -> 0x00ba }
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorEagerConcatMap.EagerOuterSubscriber.drain():void");
        }
    }

    public OperatorEagerConcatMap(Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
        this.mapper = func1;
        this.bufferSize = i;
        this.maxConcurrent = i2;
    }

    public final Subscriber<? super T> call(Subscriber<? super R> subscriber) {
        Subscriber eagerOuterSubscriber = new EagerOuterSubscriber(this.mapper, this.bufferSize, this.maxConcurrent, subscriber);
        eagerOuterSubscriber.init();
        return eagerOuterSubscriber;
    }
}
