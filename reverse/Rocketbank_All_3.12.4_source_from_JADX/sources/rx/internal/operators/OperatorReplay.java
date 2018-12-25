package rx.internal.operators;

import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Scheduler;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.internal.util.OpenHashSet;
import rx.observables.ConnectableObservable;
import rx.schedulers.Timestamped;
import rx.subscriptions.Subscriptions;

public final class OperatorReplay<T> extends ConnectableObservable<T> {
    static final Func0 DEFAULT_UNBOUNDED_FACTORY = new C19131();
    final Func0<? extends ReplayBuffer<T>> bufferFactory;
    final AtomicReference<ReplaySubscriber<T>> current;
    final Observable<? extends T> source;

    static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final long index;
        final Object value;

        public Node(Object obj, long j) {
            this.value = obj;
            this.index = j;
        }
    }

    interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(InnerProducer<T> innerProducer);
    }

    static class BoundedReplayBuffer<T> extends AtomicReference<Node> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        long index;
        int size;
        Node tail;

        Object enterTransform(Object obj) {
            return obj;
        }

        Object leaveTransform(Object obj) {
            return obj;
        }

        void truncate() {
        }

        void truncateFinal() {
        }

        public BoundedReplayBuffer() {
            Node node = new Node(null, 0);
            this.tail = node;
            set(node);
        }

        final void addLast(Node node) {
            this.tail.set(node);
            this.tail = node;
            this.size++;
        }

        final void removeFirst() {
            Node node = (Node) ((Node) get()).get();
            if (node == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.size--;
            setFirst(node);
        }

        final void removeSome(int i) {
            Node node = (Node) get();
            while (i > 0) {
                node = (Node) node.get();
                i--;
                this.size--;
            }
            setFirst(node);
        }

        final void setFirst(Node node) {
            set(node);
        }

        Node getInitialHead() {
            return (Node) get();
        }

        public final void next(T t) {
            t = enterTransform(NotificationLite.next(t));
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(t, j));
            truncate();
        }

        public final void error(Throwable th) {
            th = enterTransform(NotificationLite.error(th));
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(th, j));
            truncateFinal();
        }

        public final void complete() {
            Object enterTransform = enterTransform(NotificationLite.completed());
            long j = this.index + 1;
            this.index = j;
            addLast(new Node(enterTransform, j));
            truncateFinal();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void replay(rx.internal.operators.OperatorReplay.InnerProducer<T> r14) {
            /*
            r13 = this;
            monitor-enter(r14);
            r0 = r14.emitting;	 Catch:{ all -> 0x00a9 }
            r1 = 1;
            if (r0 == 0) goto L_0x000a;
        L_0x0006:
            r14.missed = r1;	 Catch:{ all -> 0x00a9 }
            monitor-exit(r14);	 Catch:{ all -> 0x00a9 }
            return;
        L_0x000a:
            r14.emitting = r1;	 Catch:{ all -> 0x00a9 }
            monitor-exit(r14);	 Catch:{ all -> 0x00a9 }
        L_0x000d:
            r0 = r14.isUnsubscribed();
            if (r0 == 0) goto L_0x0014;
        L_0x0013:
            return;
        L_0x0014:
            r0 = r14.index();
            r0 = (rx.internal.operators.OperatorReplay.Node) r0;
            if (r0 != 0) goto L_0x0027;
        L_0x001c:
            r0 = r13.getInitialHead();
            r14.index = r0;
            r1 = r0.index;
            r14.addTotalRequested(r1);
        L_0x0027:
            r1 = r14.isUnsubscribed();
            if (r1 == 0) goto L_0x002e;
        L_0x002d:
            return;
        L_0x002e:
            r1 = r14.child;
            if (r1 != 0) goto L_0x0033;
        L_0x0032:
            return;
        L_0x0033:
            r2 = r14.get();
            r4 = 0;
            r6 = r4;
        L_0x003a:
            r8 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));
            if (r8 == 0) goto L_0x0085;
        L_0x003e:
            r8 = r0.get();
            r8 = (rx.internal.operators.OperatorReplay.Node) r8;
            if (r8 == 0) goto L_0x0085;
        L_0x0046:
            r0 = r8.value;
            r0 = r13.leaveTransform(r0);
            r9 = 0;
            r10 = rx.internal.operators.NotificationLite.accept(r1, r0);	 Catch:{ Throwable -> 0x0064 }
            if (r10 == 0) goto L_0x0056;
        L_0x0053:
            r14.index = r9;	 Catch:{ Throwable -> 0x0064 }
            return;
        L_0x0056:
            r9 = 1;
            r11 = r6 + r9;
            r0 = r14.isUnsubscribed();
            if (r0 == 0) goto L_0x0061;
        L_0x0060:
            return;
        L_0x0061:
            r0 = r8;
            r6 = r11;
            goto L_0x003a;
        L_0x0064:
            r2 = move-exception;
            r14.index = r9;
            rx.exceptions.Exceptions.throwIfFatal(r2);
            r14.unsubscribe();
            r14 = rx.internal.operators.NotificationLite.isError(r0);
            if (r14 != 0) goto L_0x0084;
        L_0x0073:
            r14 = rx.internal.operators.NotificationLite.isCompleted(r0);
            if (r14 != 0) goto L_0x0084;
        L_0x0079:
            r14 = rx.internal.operators.NotificationLite.getValue(r0);
            r14 = rx.exceptions.OnErrorThrowable.addValueAsLastCause(r2, r14);
            r1.onError(r14);
        L_0x0084:
            return;
        L_0x0085:
            r1 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1));
            if (r1 == 0) goto L_0x0097;
        L_0x0089:
            r14.index = r0;
            r0 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));
            if (r4 == 0) goto L_0x0097;
        L_0x0094:
            r14.produced(r6);
        L_0x0097:
            monitor-enter(r14);
            r0 = r14.missed;	 Catch:{ all -> 0x00a6 }
            r1 = 0;
            if (r0 != 0) goto L_0x00a1;
        L_0x009d:
            r14.emitting = r1;	 Catch:{ all -> 0x00a6 }
            monitor-exit(r14);	 Catch:{ all -> 0x00a6 }
            return;
        L_0x00a1:
            r14.missed = r1;	 Catch:{ all -> 0x00a6 }
            monitor-exit(r14);	 Catch:{ all -> 0x00a6 }
            goto L_0x000d;
        L_0x00a6:
            r0 = move-exception;
            monitor-exit(r14);	 Catch:{ all -> 0x00a6 }
            throw r0;
        L_0x00a9:
            r0 = move-exception;
            monitor-exit(r14);	 Catch:{ all -> 0x00a9 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorReplay.BoundedReplayBuffer.replay(rx.internal.operators.OperatorReplay$InnerProducer):void");
        }

        final void collect(Collection<? super T> collection) {
            Node initialHead = getInitialHead();
            while (true) {
                initialHead = (Node) initialHead.get();
                if (initialHead != null) {
                    Object leaveTransform = leaveTransform(initialHead.value);
                    if (!NotificationLite.isCompleted(leaveTransform) && !NotificationLite.isError(leaveTransform)) {
                        collection.add(NotificationLite.getValue(leaveTransform));
                    } else {
                        return;
                    }
                }
                return;
            }
        }

        boolean hasError() {
            return this.tail.value != null && NotificationLite.isError(leaveTransform(this.tail.value));
        }

        boolean hasCompleted() {
            return this.tail.value != null && NotificationLite.isCompleted(leaveTransform(this.tail.value));
        }
    }

    static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        Subscriber<? super T> child;
        boolean emitting;
        Object index;
        boolean missed;
        final ReplaySubscriber<T> parent;
        final AtomicLong totalRequested = new AtomicLong();

        public InnerProducer(ReplaySubscriber<T> replaySubscriber, Subscriber<? super T> subscriber) {
            this.parent = replaySubscriber;
            this.child = subscriber;
        }

        public final void request(long j) {
            if (j >= 0) {
                long j2;
                long j3;
                do {
                    j2 = get();
                    if (j2 != UNSUBSCRIBED) {
                        if (j2 < 0 || j != 0) {
                            j3 = j2 + j;
                            if (j3 < 0) {
                                j3 = Long.MAX_VALUE;
                            }
                        } else {
                            return;
                        }
                    }
                    return;
                } while (!compareAndSet(j2, j3));
                addTotalRequested(j);
                this.parent.manageRequests(this);
                this.parent.buffer.replay(this);
            }
        }

        final void addTotalRequested(long j) {
            long j2;
            long j3;
            do {
                j2 = this.totalRequested.get();
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = Long.MAX_VALUE;
                }
            } while (!this.totalRequested.compareAndSet(j2, j3));
        }

        public final long produced(long j) {
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            long j2;
            long j3;
            do {
                j3 = get();
                if (j3 == UNSUBSCRIBED) {
                    return UNSUBSCRIBED;
                }
                j2 = j3 - j;
                if (j2 < 0) {
                    StringBuilder stringBuilder = new StringBuilder("More produced (");
                    stringBuilder.append(j);
                    stringBuilder.append(") than requested (");
                    stringBuilder.append(j3);
                    stringBuilder.append(")");
                    throw new IllegalStateException(stringBuilder.toString());
                }
            } while (!compareAndSet(j3, j2));
            return j2;
        }

        public final boolean isUnsubscribed() {
            return get() == UNSUBSCRIBED;
        }

        public final void unsubscribe() {
            if (get() != UNSUBSCRIBED && getAndSet(UNSUBSCRIBED) != UNSUBSCRIBED) {
                this.parent.remove(this);
                this.parent.manageRequests(this);
                this.child = null;
            }
        }

        final <U> U index() {
            return this.index;
        }
    }

    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        volatile int size;

        public UnboundedReplayBuffer(int i) {
            super(i);
        }

        public final void next(T t) {
            add(NotificationLite.next(t));
            this.size++;
        }

        public final void error(Throwable th) {
            add(NotificationLite.error(th));
            this.size++;
        }

        public final void complete() {
            add(NotificationLite.completed());
            this.size++;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void replay(rx.internal.operators.OperatorReplay.InnerProducer<T> r15) {
            /*
            r14 = this;
            monitor-enter(r15);
            r0 = r15.emitting;	 Catch:{ all -> 0x0097 }
            r1 = 1;
            if (r0 == 0) goto L_0x000a;
        L_0x0006:
            r15.missed = r1;	 Catch:{ all -> 0x0097 }
            monitor-exit(r15);	 Catch:{ all -> 0x0097 }
            return;
        L_0x000a:
            r15.emitting = r1;	 Catch:{ all -> 0x0097 }
            monitor-exit(r15);	 Catch:{ all -> 0x0097 }
        L_0x000d:
            r0 = r15.isUnsubscribed();
            if (r0 == 0) goto L_0x0014;
        L_0x0013:
            return;
        L_0x0014:
            r0 = r14.size;
            r1 = r15.index();
            r1 = (java.lang.Integer) r1;
            r2 = 0;
            if (r1 == 0) goto L_0x0024;
        L_0x001f:
            r1 = r1.intValue();
            goto L_0x0025;
        L_0x0024:
            r1 = r2;
        L_0x0025:
            r3 = r15.child;
            if (r3 != 0) goto L_0x002a;
        L_0x0029:
            return;
        L_0x002a:
            r4 = r15.get();
            r6 = 0;
            r8 = r6;
        L_0x0031:
            r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
            if (r10 == 0) goto L_0x0070;
        L_0x0035:
            if (r1 >= r0) goto L_0x0070;
        L_0x0037:
            r10 = r14.get(r1);
            r11 = rx.internal.operators.NotificationLite.accept(r3, r10);	 Catch:{ Throwable -> 0x0051 }
            if (r11 == 0) goto L_0x0042;
        L_0x0041:
            return;
        L_0x0042:
            r10 = r15.isUnsubscribed();
            if (r10 == 0) goto L_0x0049;
        L_0x0048:
            return;
        L_0x0049:
            r1 = r1 + 1;
            r10 = 1;
            r12 = r8 + r10;
            r8 = r12;
            goto L_0x0031;
        L_0x0051:
            r0 = move-exception;
            rx.exceptions.Exceptions.throwIfFatal(r0);
            r15.unsubscribe();
            r15 = rx.internal.operators.NotificationLite.isError(r10);
            if (r15 != 0) goto L_0x006f;
        L_0x005e:
            r15 = rx.internal.operators.NotificationLite.isCompleted(r10);
            if (r15 != 0) goto L_0x006f;
        L_0x0064:
            r15 = rx.internal.operators.NotificationLite.getValue(r10);
            r15 = rx.exceptions.OnErrorThrowable.addValueAsLastCause(r0, r15);
            r3.onError(r15);
        L_0x006f:
            return;
        L_0x0070:
            r0 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
            if (r0 == 0) goto L_0x0086;
        L_0x0074:
            r0 = java.lang.Integer.valueOf(r1);
            r15.index = r0;
            r0 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r3 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
            if (r3 == 0) goto L_0x0086;
        L_0x0083:
            r15.produced(r8);
        L_0x0086:
            monitor-enter(r15);
            r0 = r15.missed;	 Catch:{ all -> 0x0094 }
            if (r0 != 0) goto L_0x008f;
        L_0x008b:
            r15.emitting = r2;	 Catch:{ all -> 0x0094 }
            monitor-exit(r15);	 Catch:{ all -> 0x0094 }
            return;
        L_0x008f:
            r15.missed = r2;	 Catch:{ all -> 0x0094 }
            monitor-exit(r15);	 Catch:{ all -> 0x0094 }
            goto L_0x000d;
        L_0x0094:
            r0 = move-exception;
            monitor-exit(r15);	 Catch:{ all -> 0x0094 }
            throw r0;
        L_0x0097:
            r0 = move-exception;
            monitor-exit(r15);	 Catch:{ all -> 0x0097 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorReplay.UnboundedReplayBuffer.replay(rx.internal.operators.OperatorReplay$InnerProducer):void");
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$1 */
    static class C19131 implements Func0 {
        C19131() {
        }

        public final Object call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    static final class ReplaySubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY = new InnerProducer[0];
        static final InnerProducer[] TERMINATED = new InnerProducer[0];
        final ReplayBuffer<T> buffer;
        boolean coordinateAll;
        List<InnerProducer<T>> coordinationQueue;
        boolean done;
        boolean emitting;
        long maxChildRequested;
        long maxUpstreamRequested;
        boolean missed;
        volatile Producer producer;
        final OpenHashSet<InnerProducer<T>> producers = new OpenHashSet();
        InnerProducer<T>[] producersCache = EMPTY;
        long producersCacheVersion;
        volatile long producersVersion;
        final AtomicBoolean shouldConnect = new AtomicBoolean();
        volatile boolean terminated;

        /* renamed from: rx.internal.operators.OperatorReplay$ReplaySubscriber$1 */
        class C20941 implements Action0 {
            C20941() {
            }

            public void call() {
                if (!ReplaySubscriber.this.terminated) {
                    synchronized (ReplaySubscriber.this.producers) {
                        if (!ReplaySubscriber.this.terminated) {
                            ReplaySubscriber.this.producers.terminate();
                            ReplaySubscriber replaySubscriber = ReplaySubscriber.this;
                            replaySubscriber.producersVersion++;
                            ReplaySubscriber.this.terminated = true;
                        }
                    }
                }
            }
        }

        public ReplaySubscriber(ReplayBuffer<T> replayBuffer) {
            this.buffer = replayBuffer;
            request(0);
        }

        final void init() {
            add(Subscriptions.create(new C20941()));
        }

        final boolean add(InnerProducer<T> innerProducer) {
            if (innerProducer == null) {
                throw new NullPointerException();
            } else if (this.terminated) {
                return false;
            } else {
                synchronized (this.producers) {
                    if (this.terminated) {
                        return false;
                    }
                    this.producers.add(innerProducer);
                    this.producersVersion++;
                    return true;
                }
            }
        }

        final void remove(InnerProducer<T> innerProducer) {
            if (!this.terminated) {
                synchronized (this.producers) {
                    if (this.terminated) {
                        return;
                    }
                    this.producers.remove(innerProducer);
                    if (this.producers.isEmpty() != null) {
                        this.producersCache = EMPTY;
                    }
                    this.producersVersion++;
                }
            }
        }

        public final void setProducer(Producer producer) {
            if (this.producer != null) {
                throw new IllegalStateException("Only a single producer can be set on a Subscriber.");
            }
            this.producer = producer;
            manageRequests(null);
            replay();
        }

        public final void onNext(T t) {
            if (!this.done) {
                this.buffer.next(t);
                replay();
            }
        }

        public final void onError(Throwable th) {
            if (!this.done) {
                this.done = true;
                try {
                    this.buffer.error(th);
                    replay();
                } finally {
                    unsubscribe();
                }
            }
        }

        public final void onCompleted() {
            if (!this.done) {
                this.done = true;
                try {
                    this.buffer.complete();
                    replay();
                } finally {
                    unsubscribe();
                }
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final void manageRequests(rx.internal.operators.OperatorReplay.InnerProducer<T> r10) {
            /*
            r9 = this;
            r0 = r9.isUnsubscribed();
            if (r0 == 0) goto L_0x0007;
        L_0x0006:
            return;
        L_0x0007:
            monitor-enter(r9);
            r0 = r9.emitting;	 Catch:{ all -> 0x00b4 }
            r1 = 1;
            if (r0 == 0) goto L_0x0024;
        L_0x000d:
            if (r10 == 0) goto L_0x001e;
        L_0x000f:
            r0 = r9.coordinationQueue;	 Catch:{ all -> 0x00b4 }
            if (r0 != 0) goto L_0x001a;
        L_0x0013:
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x00b4 }
            r0.<init>();	 Catch:{ all -> 0x00b4 }
            r9.coordinationQueue = r0;	 Catch:{ all -> 0x00b4 }
        L_0x001a:
            r0.add(r10);	 Catch:{ all -> 0x00b4 }
            goto L_0x0020;
        L_0x001e:
            r9.coordinateAll = r1;	 Catch:{ all -> 0x00b4 }
        L_0x0020:
            r9.missed = r1;	 Catch:{ all -> 0x00b4 }
            monitor-exit(r9);	 Catch:{ all -> 0x00b4 }
            return;
        L_0x0024:
            r9.emitting = r1;	 Catch:{ all -> 0x00b4 }
            monitor-exit(r9);	 Catch:{ all -> 0x00b4 }
            r0 = r9.maxChildRequested;
            r2 = 0;
            if (r10 == 0) goto L_0x0037;
        L_0x002c:
            r10 = r10.totalRequested;
            r3 = r10.get();
            r3 = java.lang.Math.max(r0, r3);
            goto L_0x0052;
        L_0x0037:
            r10 = r9.copyProducers();
            r3 = r10.length;
            r5 = r0;
            r4 = r2;
        L_0x003e:
            if (r4 >= r3) goto L_0x0051;
        L_0x0040:
            r7 = r10[r4];
            if (r7 == 0) goto L_0x004e;
        L_0x0044:
            r7 = r7.totalRequested;
            r7 = r7.get();
            r5 = java.lang.Math.max(r5, r7);
        L_0x004e:
            r4 = r4 + 1;
            goto L_0x003e;
        L_0x0051:
            r3 = r5;
        L_0x0052:
            r9.makeRequest(r3, r0);
        L_0x0055:
            r10 = r9.isUnsubscribed();
            if (r10 == 0) goto L_0x005c;
        L_0x005b:
            return;
        L_0x005c:
            monitor-enter(r9);
            r10 = r9.missed;	 Catch:{ all -> 0x00b1 }
            if (r10 != 0) goto L_0x0065;
        L_0x0061:
            r9.emitting = r2;	 Catch:{ all -> 0x00b1 }
            monitor-exit(r9);	 Catch:{ all -> 0x00b1 }
            return;
        L_0x0065:
            r9.missed = r2;	 Catch:{ all -> 0x00b1 }
            r10 = r9.coordinationQueue;	 Catch:{ all -> 0x00b1 }
            r0 = 0;
            r9.coordinationQueue = r0;	 Catch:{ all -> 0x00b1 }
            r0 = r9.coordinateAll;	 Catch:{ all -> 0x00b1 }
            r9.coordinateAll = r2;	 Catch:{ all -> 0x00b1 }
            monitor-exit(r9);	 Catch:{ all -> 0x00b1 }
            r3 = r9.maxChildRequested;
            if (r10 == 0) goto L_0x0091;
        L_0x0075:
            r10 = r10.iterator();
            r5 = r3;
        L_0x007a:
            r1 = r10.hasNext();
            if (r1 == 0) goto L_0x0092;
        L_0x0080:
            r1 = r10.next();
            r1 = (rx.internal.operators.OperatorReplay.InnerProducer) r1;
            r1 = r1.totalRequested;
            r7 = r1.get();
            r5 = java.lang.Math.max(r5, r7);
            goto L_0x007a;
        L_0x0091:
            r5 = r3;
        L_0x0092:
            if (r0 == 0) goto L_0x00ad;
        L_0x0094:
            r10 = r9.copyProducers();
            r0 = r10.length;
            r1 = r2;
        L_0x009a:
            if (r1 >= r0) goto L_0x00ad;
        L_0x009c:
            r7 = r10[r1];
            if (r7 == 0) goto L_0x00aa;
        L_0x00a0:
            r7 = r7.totalRequested;
            r7 = r7.get();
            r5 = java.lang.Math.max(r5, r7);
        L_0x00aa:
            r1 = r1 + 1;
            goto L_0x009a;
        L_0x00ad:
            r9.makeRequest(r5, r3);
            goto L_0x0055;
        L_0x00b1:
            r10 = move-exception;
            monitor-exit(r9);	 Catch:{ all -> 0x00b1 }
            throw r10;
        L_0x00b4:
            r10 = move-exception;
            monitor-exit(r9);	 Catch:{ all -> 0x00b4 }
            throw r10;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorReplay.ReplaySubscriber.manageRequests(rx.internal.operators.OperatorReplay$InnerProducer):void");
        }

        final InnerProducer<T>[] copyProducers() {
            Object obj;
            synchronized (this.producers) {
                Object values = this.producers.values();
                int length = values.length;
                obj = new InnerProducer[length];
                System.arraycopy(values, 0, obj, 0, length);
            }
            return obj;
        }

        final void makeRequest(long j, long j2) {
            long j3 = this.maxUpstreamRequested;
            Producer producer = this.producer;
            long j4 = j - j2;
            if (j4 != 0) {
                this.maxChildRequested = j;
                if (producer == null) {
                    j = j3 + j4;
                    if (j < 0) {
                        j = Long.MAX_VALUE;
                    }
                    this.maxUpstreamRequested = j;
                    return;
                } else if (j3 != 0) {
                    this.maxUpstreamRequested = 0;
                    producer.request(j3 + j4);
                    return;
                } else {
                    producer.request(j4);
                    return;
                }
            }
            if (!(j3 == 0 || producer == null)) {
                this.maxUpstreamRequested = 0;
                producer.request(j3);
            }
        }

        final void replay() {
            InnerProducer[] innerProducerArr = this.producersCache;
            int i = 0;
            if (this.producersCacheVersion != this.producersVersion) {
                synchronized (this.producers) {
                    innerProducerArr = this.producersCache;
                    Object values = this.producers.values();
                    int length = values.length;
                    if (innerProducerArr.length != length) {
                        innerProducerArr = new InnerProducer[length];
                        this.producersCache = innerProducerArr;
                    }
                    System.arraycopy(values, 0, innerProducerArr, 0, length);
                    this.producersCacheVersion = this.producersVersion;
                }
            }
            ReplayBuffer replayBuffer = this.buffer;
            int length2 = innerProducerArr.length;
            while (i < length2) {
                InnerProducer innerProducer = innerProducerArr[i];
                if (innerProducer != null) {
                    replayBuffer.replay(innerProducer);
                }
                i++;
            }
        }
    }

    static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        final int limit;
        final long maxAgeInMillis;
        final Scheduler scheduler;

        public SizeAndTimeBoundReplayBuffer(int i, long j, Scheduler scheduler) {
            this.scheduler = scheduler;
            this.limit = i;
            this.maxAgeInMillis = j;
        }

        final Object enterTransform(Object obj) {
            return new Timestamped(this.scheduler.now(), obj);
        }

        final Object leaveTransform(Object obj) {
            return ((Timestamped) obj).getValue();
        }

        final Node getInitialHead() {
            long now = this.scheduler.now() - this.maxAgeInMillis;
            Node node = (Node) get();
            Node node2 = (Node) node.get();
            while (true) {
                Node node3 = node2;
                node2 = node;
                node = node3;
                if (node == null || ((Timestamped) node.value).getTimestampMillis() > now) {
                    return node2;
                }
                node2 = (Node) node.get();
            }
            return node2;
        }

        final void truncate() {
            long now = this.scheduler.now() - this.maxAgeInMillis;
            Node node = (Node) get();
            Node node2 = (Node) node.get();
            int i = 0;
            while (true) {
                Node node3 = node2;
                node2 = node;
                node = node3;
                if (node != null) {
                    if (this.size <= this.limit) {
                        if (((Timestamped) node.value).getTimestampMillis() > now) {
                            break;
                        }
                        i++;
                        this.size--;
                        node2 = (Node) node.get();
                    } else {
                        i++;
                        this.size--;
                        node2 = (Node) node.get();
                    }
                } else {
                    break;
                }
            }
            if (i != 0) {
                setFirst(node2);
            }
        }

        final void truncateFinal() {
            long now = this.scheduler.now() - this.maxAgeInMillis;
            Node node = (Node) get();
            Node node2 = (Node) node.get();
            int i = 0;
            while (true) {
                Node node3 = node2;
                node2 = node;
                node = node3;
                if (node != null && this.size > 1 && ((Timestamped) node.value).getTimestampMillis() <= now) {
                    i++;
                    this.size--;
                    node2 = (Node) node.get();
                } else if (i != 0) {
                    setFirst(node2);
                }
            }
            if (i != 0) {
                setFirst(node2);
            }
        }
    }

    static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        final int limit;

        public SizeBoundReplayBuffer(int i) {
            this.limit = i;
        }

        final void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    public static <T, U, R> Observable<R> multicastSelector(final Func0<? extends ConnectableObservable<U>> func0, final Func1<? super Observable<U>, ? extends Observable<R>> func1) {
        return Observable.create(new OnSubscribe<R>() {
            public final void call(final Subscriber<? super R> subscriber) {
                try {
                    ConnectableObservable connectableObservable = (ConnectableObservable) func0.call();
                    ((Observable) func1.call(connectableObservable)).subscribe((Subscriber) subscriber);
                    connectableObservable.connect(new Action1<Subscription>() {
                        public void call(Subscription subscription) {
                            subscriber.add(subscription);
                        }
                    });
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, (Observer) subscriber);
                }
            }
        });
    }

    public static <T> ConnectableObservable<T> observeOn(final ConnectableObservable<T> connectableObservable, Scheduler scheduler) {
        scheduler = connectableObservable.observeOn(scheduler);
        return new ConnectableObservable<T>(new OnSubscribe<T>() {
            public final void call(final Subscriber<? super T> subscriber) {
                scheduler.unsafeSubscribe(new Subscriber<T>(subscriber) {
                    public void onNext(T t) {
                        subscriber.onNext(t);
                    }

                    public void onError(Throwable th) {
                        subscriber.onError(th);
                    }

                    public void onCompleted() {
                        subscriber.onCompleted();
                    }
                });
            }
        }) {
            public final void connect(Action1<? super Subscription> action1) {
                connectableObservable.connect(action1);
            }
        };
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable) {
        return create((Observable) observable, DEFAULT_UNBOUNDED_FACTORY);
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable, final int i) {
        if (i == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            return create(observable);
        }
        return create((Observable) observable, new Func0<ReplayBuffer<T>>() {
            public final ReplayBuffer<T> call() {
                return new SizeBoundReplayBuffer(i);
            }
        });
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(observable, j, timeUnit, scheduler, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable, long j, TimeUnit timeUnit, final Scheduler scheduler, final int i) {
        j = timeUnit.toMillis(j);
        return create((Observable) observable, new Func0<ReplayBuffer<T>>() {
            public final ReplayBuffer<T> call() {
                return new SizeAndTimeBoundReplayBuffer(i, j, scheduler);
            }
        });
    }

    static <T> ConnectableObservable<T> create(Observable<? extends T> observable, final Func0<? extends ReplayBuffer<T>> func0) {
        final AtomicReference atomicReference = new AtomicReference();
        return new OperatorReplay(new OnSubscribe<T>() {
            public final void call(Subscriber<? super T> subscriber) {
                ReplaySubscriber replaySubscriber;
                ReplaySubscriber replaySubscriber2;
                do {
                    replaySubscriber = (ReplaySubscriber) atomicReference.get();
                    if (replaySubscriber != null) {
                        break;
                    }
                    replaySubscriber2 = new ReplaySubscriber((ReplayBuffer) func0.call());
                    replaySubscriber2.init();
                } while (!atomicReference.compareAndSet(replaySubscriber, replaySubscriber2));
                replaySubscriber = replaySubscriber2;
                Producer innerProducer = new InnerProducer(replaySubscriber, subscriber);
                replaySubscriber.add(innerProducer);
                subscriber.add(innerProducer);
                replaySubscriber.buffer.replay(innerProducer);
                subscriber.setProducer(innerProducer);
            }
        }, observable, atomicReference, func0);
    }

    private OperatorReplay(OnSubscribe<T> onSubscribe, Observable<? extends T> observable, AtomicReference<ReplaySubscriber<T>> atomicReference, Func0<? extends ReplayBuffer<T>> func0) {
        super(onSubscribe);
        this.source = observable;
        this.current = atomicReference;
        this.bufferFactory = func0;
    }

    public final void connect(Action1<? super Subscription> action1) {
        Subscriber subscriber;
        Subscriber replaySubscriber;
        do {
            subscriber = (ReplaySubscriber) this.current.get();
            if (subscriber != null && !subscriber.isUnsubscribed()) {
                break;
            }
            replaySubscriber = new ReplaySubscriber((ReplayBuffer) this.bufferFactory.call());
            replaySubscriber.init();
        } while (!this.current.compareAndSet(subscriber, replaySubscriber));
        subscriber = replaySubscriber;
        boolean z = true;
        if (subscriber.shouldConnect.get() || !subscriber.shouldConnect.compareAndSet(false, true)) {
            z = false;
        }
        action1.call(subscriber);
        if (z) {
            this.source.unsafeSubscribe(subscriber);
        }
    }
}
