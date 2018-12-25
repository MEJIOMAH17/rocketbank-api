package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.CompositeException;
import rx.functions.Action0;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.atomic.SpscLinkedArrayQueue;
import rx.plugins.RxJavaHooks;
import rx.subscriptions.SerialSubscription;
import rx.subscriptions.Subscriptions;

public final class OperatorSwitch<T> implements Operator<T, Observable<? extends T>> {
    final boolean delayError;

    static final class Holder {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch(false);

        Holder() {
        }
    }

    static final class HolderDelayError {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch(true);

        HolderDelayError() {
        }
    }

    static final class InnerSubscriber<T> extends Subscriber<T> {
        private final long id;
        private final SwitchSubscriber<T> parent;

        InnerSubscriber(long j, SwitchSubscriber<T> switchSubscriber) {
            this.id = j;
            this.parent = switchSubscriber;
        }

        public final void setProducer(Producer producer) {
            this.parent.innerProducer(producer, this.id);
        }

        public final void onNext(T t) {
            this.parent.emit(t, this);
        }

        public final void onError(Throwable th) {
            this.parent.error(th, this.id);
        }

        public final void onCompleted() {
            this.parent.complete(this.id);
        }
    }

    static final class SwitchSubscriber<T> extends Subscriber<Observable<? extends T>> {
        static final Throwable TERMINAL_ERROR = new Throwable("Terminal error");
        final Subscriber<? super T> child;
        final boolean delayError;
        boolean emitting;
        Throwable error;
        final AtomicLong index;
        boolean innerActive;
        volatile boolean mainDone;
        boolean missed;
        Producer producer;
        final SpscLinkedArrayQueue<Object> queue;
        long requested;
        final SerialSubscription serial = new SerialSubscription();

        /* renamed from: rx.internal.operators.OperatorSwitch$SwitchSubscriber$2 */
        class C17212 implements Producer {
            C17212() {
            }

            public void request(long j) {
                if (j > 0) {
                    SwitchSubscriber.this.childRequested(j);
                } else if (j < 0) {
                    throw new IllegalArgumentException("n >= 0 expected but it was ".concat(String.valueOf(j)));
                }
            }
        }

        /* renamed from: rx.internal.operators.OperatorSwitch$SwitchSubscriber$1 */
        class C20981 implements Action0 {
            C20981() {
            }

            public void call() {
                SwitchSubscriber.this.clearProducer();
            }
        }

        SwitchSubscriber(Subscriber<? super T> subscriber, boolean z) {
            this.child = subscriber;
            this.delayError = z;
            this.index = new AtomicLong();
            this.queue = new SpscLinkedArrayQueue(RxRingBuffer.SIZE);
        }

        final void init() {
            this.child.add(this.serial);
            this.child.add(Subscriptions.create(new C20981()));
            this.child.setProducer(new C17212());
        }

        final void clearProducer() {
            synchronized (this) {
                this.producer = null;
            }
        }

        public final void onNext(Observable<? extends T> observable) {
            Object innerSubscriber;
            long incrementAndGet = this.index.incrementAndGet();
            Subscription subscription = this.serial.get();
            if (subscription != null) {
                subscription.unsubscribe();
            }
            synchronized (this) {
                innerSubscriber = new InnerSubscriber(incrementAndGet, this);
                this.innerActive = true;
                this.producer = null;
            }
            this.serial.set(innerSubscriber);
            observable.unsafeSubscribe(innerSubscriber);
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                boolean updateError = updateError(th);
            }
            if (updateError) {
                this.mainDone = true;
                drain();
                return;
            }
            pluginError(th);
        }

        final boolean updateError(Throwable th) {
            Throwable th2 = this.error;
            if (th2 == TERMINAL_ERROR) {
                return false;
            }
            if (th2 == null) {
                this.error = th;
            } else if (th2 instanceof CompositeException) {
                Collection arrayList = new ArrayList(((CompositeException) th2).getExceptions());
                arrayList.add(th);
                this.error = new CompositeException(arrayList);
            } else {
                this.error = new CompositeException(th2, th);
            }
            return true;
        }

        public final void onCompleted() {
            this.mainDone = true;
            drain();
        }

        final void emit(T t, InnerSubscriber<T> innerSubscriber) {
            synchronized (this) {
                if (this.index.get() != innerSubscriber.id) {
                    return;
                }
                this.queue.offer(innerSubscriber, NotificationLite.next(t));
                drain();
            }
        }

        final void error(Throwable th, long j) {
            synchronized (this) {
                if (this.index.get() == j) {
                    j = updateError(th);
                    this.innerActive = false;
                    this.producer = null;
                } else {
                    j = 1;
                }
            }
            if (j != null) {
                drain();
            } else {
                pluginError(th);
            }
        }

        final void complete(long j) {
            synchronized (this) {
                if (this.index.get() != j) {
                    return;
                }
                this.innerActive = 0;
                this.producer = 0;
                drain();
            }
        }

        final void pluginError(Throwable th) {
            RxJavaHooks.onError(th);
        }

        final void innerProducer(Producer producer, long j) {
            synchronized (this) {
                if (this.index.get() != j) {
                    return;
                }
                j = this.requested;
                this.producer = producer;
                producer.request(j);
            }
        }

        final void childRequested(long j) {
            synchronized (this) {
                Producer producer = this.producer;
                this.requested = BackpressureUtils.addCap(this.requested, j);
            }
            if (producer != null) {
                producer.request(j);
            }
            drain();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void drain() {
            /*
            r20 = this;
            r8 = r20;
            monitor-enter(r20);
            r1 = r8.emitting;	 Catch:{ all -> 0x00d1 }
            r2 = 1;
            if (r1 == 0) goto L_0x000c;
        L_0x0008:
            r8.missed = r2;	 Catch:{ all -> 0x00d1 }
            monitor-exit(r20);	 Catch:{ all -> 0x00d1 }
            return;
        L_0x000c:
            r8.emitting = r2;	 Catch:{ all -> 0x00d1 }
            r1 = r8.innerActive;	 Catch:{ all -> 0x00d1 }
            r2 = r8.requested;	 Catch:{ all -> 0x00d1 }
            r4 = r8.error;	 Catch:{ all -> 0x00d1 }
            if (r4 == 0) goto L_0x0022;
        L_0x0016:
            r5 = TERMINAL_ERROR;	 Catch:{ all -> 0x00d1 }
            if (r4 == r5) goto L_0x0022;
        L_0x001a:
            r5 = r8.delayError;	 Catch:{ all -> 0x00d1 }
            if (r5 != 0) goto L_0x0022;
        L_0x001e:
            r5 = TERMINAL_ERROR;	 Catch:{ all -> 0x00d1 }
            r8.error = r5;	 Catch:{ all -> 0x00d1 }
        L_0x0022:
            monitor-exit(r20);	 Catch:{ all -> 0x00d1 }
            r9 = r8.queue;
            r10 = r8.index;
            r11 = r8.child;
            r5 = r8.mainDone;
            r14 = r1;
            r12 = r2;
            r15 = r4;
            r16 = r5;
        L_0x0030:
            r1 = 0;
            r17 = r1;
        L_0x0034:
            r1 = (r17 > r12 ? 1 : (r17 == r12 ? 0 : -1));
            if (r1 == 0) goto L_0x0079;
        L_0x0038:
            r1 = r11.isUnsubscribed();
            if (r1 == 0) goto L_0x003f;
        L_0x003e:
            return;
        L_0x003f:
            r19 = r9.isEmpty();
            r1 = r8;
            r2 = r16;
            r3 = r14;
            r4 = r15;
            r5 = r9;
            r6 = r11;
            r7 = r19;
            r1 = r1.checkTerminated(r2, r3, r4, r5, r6, r7);
            if (r1 == 0) goto L_0x0053;
        L_0x0052:
            return;
        L_0x0053:
            if (r19 != 0) goto L_0x0079;
        L_0x0055:
            r1 = r9.poll();
            r1 = (rx.internal.operators.OperatorSwitch.InnerSubscriber) r1;
            r2 = r9.poll();
            r2 = rx.internal.operators.NotificationLite.getValue(r2);
            r3 = r10.get();
            r5 = r1.id;
            r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
            if (r1 != 0) goto L_0x0034;
        L_0x006f:
            r11.onNext(r2);
            r1 = 1;
            r3 = r17 + r1;
            r17 = r3;
            goto L_0x0034;
        L_0x0079:
            r1 = (r17 > r12 ? 1 : (r17 == r12 ? 0 : -1));
            if (r1 != 0) goto L_0x0096;
        L_0x007d:
            r1 = r11.isUnsubscribed();
            if (r1 == 0) goto L_0x0084;
        L_0x0083:
            return;
        L_0x0084:
            r2 = r8.mainDone;
            r7 = r9.isEmpty();
            r1 = r8;
            r3 = r14;
            r4 = r15;
            r5 = r9;
            r6 = r11;
            r1 = r1.checkTerminated(r2, r3, r4, r5, r6, r7);
            if (r1 == 0) goto L_0x0096;
        L_0x0095:
            return;
        L_0x0096:
            monitor-enter(r20);
            r1 = r8.requested;	 Catch:{ all -> 0x00cd }
            r3 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
            if (r5 == 0) goto L_0x00a8;
        L_0x00a2:
            r3 = r1 - r17;
            r8.requested = r3;	 Catch:{ all -> 0x00cd }
            r12 = r3;
            goto L_0x00a9;
        L_0x00a8:
            r12 = r1;
        L_0x00a9:
            r1 = r8.missed;	 Catch:{ all -> 0x00cd }
            r2 = 0;
            if (r1 != 0) goto L_0x00b2;
        L_0x00ae:
            r8.emitting = r2;	 Catch:{ all -> 0x00cd }
            monitor-exit(r20);	 Catch:{ all -> 0x00cd }
            return;
        L_0x00b2:
            r8.missed = r2;	 Catch:{ all -> 0x00cd }
            r1 = r8.mainDone;	 Catch:{ all -> 0x00cd }
            r14 = r8.innerActive;	 Catch:{ all -> 0x00cd }
            r15 = r8.error;	 Catch:{ all -> 0x00cd }
            if (r15 == 0) goto L_0x00c8;
        L_0x00bc:
            r2 = TERMINAL_ERROR;	 Catch:{ all -> 0x00cd }
            if (r15 == r2) goto L_0x00c8;
        L_0x00c0:
            r2 = r8.delayError;	 Catch:{ all -> 0x00cd }
            if (r2 != 0) goto L_0x00c8;
        L_0x00c4:
            r2 = TERMINAL_ERROR;	 Catch:{ all -> 0x00cd }
            r8.error = r2;	 Catch:{ all -> 0x00cd }
        L_0x00c8:
            monitor-exit(r20);	 Catch:{ all -> 0x00cd }
            r16 = r1;
            goto L_0x0030;
        L_0x00cd:
            r0 = move-exception;
            r1 = r0;
            monitor-exit(r20);	 Catch:{ all -> 0x00cd }
            throw r1;
        L_0x00d1:
            r0 = move-exception;
            r1 = r0;
            monitor-exit(r20);	 Catch:{ all -> 0x00d1 }
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorSwitch.SwitchSubscriber.drain():void");
        }

        protected final boolean checkTerminated(boolean z, boolean z2, Throwable th, SpscLinkedArrayQueue<Object> spscLinkedArrayQueue, Subscriber<? super T> subscriber, boolean z3) {
            if (this.delayError) {
                if (z && !z2 && z3) {
                    if (th != null) {
                        subscriber.onError(th);
                    } else {
                        subscriber.onCompleted();
                    }
                    return true;
                }
            } else if (th != null) {
                spscLinkedArrayQueue.clear();
                subscriber.onError(th);
                return true;
            } else if (z && !z2 && z3) {
                subscriber.onCompleted();
                return true;
            }
            return false;
        }
    }

    public static <T> OperatorSwitch<T> instance(boolean z) {
        if (z) {
            return HolderDelayError.INSTANCE;
        }
        return Holder.INSTANCE;
    }

    OperatorSwitch(boolean z) {
        this.delayError = z;
    }

    public final Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> subscriber) {
        Subscriber<? super Observable<? extends T>> switchSubscriber = new SwitchSubscriber(subscriber, this.delayError);
        subscriber.add(switchSubscriber);
        switchSubscriber.init();
        return switchSubscriber;
    }
}
