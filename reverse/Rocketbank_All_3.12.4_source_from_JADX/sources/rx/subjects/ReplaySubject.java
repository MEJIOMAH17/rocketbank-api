package rx.subjects;

import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Producer;
import rx.Scheduler;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.internal.operators.BackpressureUtils;
import rx.plugins.RxJavaHooks;
import rx.schedulers.Schedulers;

public final class ReplaySubject<T> extends Subject<T, T> {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    final ReplayState<T> state;

    interface ReplayBuffer<T> {
        void complete();

        void drain(ReplayProducer<T> replayProducer);

        Throwable error();

        void error(Throwable th);

        boolean isComplete();

        boolean isEmpty();

        T last();

        void next(T t);

        int size();

        T[] toArray(T[] tArr);
    }

    static final class ReplayProducer<T> extends AtomicInteger implements Producer, Subscription {
        private static final long serialVersionUID = -5006209596735204567L;
        final Subscriber<? super T> actual;
        int index;
        Object node;
        final AtomicLong requested = new AtomicLong();
        final ReplayState<T> state;
        int tailIndex;

        public ReplayProducer(Subscriber<? super T> subscriber, ReplayState<T> replayState) {
            this.actual = subscriber;
            this.state = replayState;
        }

        public final void unsubscribe() {
            this.state.remove(this);
        }

        public final boolean isUnsubscribed() {
            return this.actual.isUnsubscribed();
        }

        public final void request(long j) {
            if (j > 0) {
                BackpressureUtils.getAndAddRequest(this.requested, j);
                this.state.buffer.drain(this);
            } else if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was ".concat(String.valueOf(j)));
            }
        }
    }

    static final class ReplaySizeAndTimeBoundBuffer<T> implements ReplayBuffer<T> {
        volatile boolean done;
        Throwable error;
        volatile TimedNode<T> head;
        final int limit;
        final long maxAgeMillis;
        final Scheduler scheduler;
        int size;
        TimedNode<T> tail;

        static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
            private static final long serialVersionUID = 3713592843205853725L;
            final long timestamp;
            final T value;

            public TimedNode(T t, long j) {
                this.value = t;
                this.timestamp = j;
            }
        }

        public ReplaySizeAndTimeBoundBuffer(int i, long j, Scheduler scheduler) {
            this.limit = i;
            i = new TimedNode(null, 0);
            this.tail = i;
            this.head = i;
            this.maxAgeMillis = j;
            this.scheduler = scheduler;
        }

        public final void next(T t) {
            TimedNode timedNode;
            long now = this.scheduler.now();
            TimedNode timedNode2 = new TimedNode(t, now);
            this.tail.set(timedNode2);
            this.tail = timedNode2;
            long j = now - this.maxAgeMillis;
            t = this.size;
            TimedNode timedNode3 = this.head;
            if (t == this.limit) {
                timedNode = (TimedNode) timedNode3.get();
            } else {
                t++;
                timedNode = timedNode3;
            }
            while (true) {
                timedNode2 = (TimedNode) timedNode.get();
                if (timedNode2 == null || timedNode2.timestamp > j) {
                    this.size = t;
                } else {
                    t--;
                    timedNode = timedNode2;
                }
            }
            this.size = t;
            if (timedNode != timedNode3) {
                this.head = timedNode;
            }
        }

        public final void error(Throwable th) {
            evictFinal();
            this.error = th;
            this.done = true;
        }

        public final void complete() {
            evictFinal();
            this.done = true;
        }

        final void evictFinal() {
            long now = this.scheduler.now() - this.maxAgeMillis;
            TimedNode timedNode = this.head;
            TimedNode timedNode2 = timedNode;
            while (true) {
                TimedNode timedNode3 = (TimedNode) timedNode2.get();
                if (timedNode3 != null && timedNode3.timestamp <= now) {
                    timedNode2 = timedNode3;
                } else if (timedNode != timedNode2) {
                    this.head = timedNode2;
                }
            }
            if (timedNode != timedNode2) {
                this.head = timedNode2;
            }
        }

        final TimedNode<T> latestHead() {
            long now = this.scheduler.now() - this.maxAgeMillis;
            TimedNode<T> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = (TimedNode) timedNode.get();
                if (timedNode2 == null || timedNode2.timestamp > now) {
                    return timedNode;
                }
                timedNode = timedNode2;
            }
            return timedNode;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void drain(rx.subjects.ReplaySubject.ReplayProducer<T> r19) {
            /*
            r18 = this;
            r0 = r18;
            r1 = r19;
            r2 = r19.getAndIncrement();
            if (r2 == 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r2 = r1.actual;
            r3 = 1;
            r4 = r3;
        L_0x000f:
            r5 = r1.requested;
            r5 = r5.get();
            r7 = r1.node;
            r7 = (rx.subjects.ReplaySubject.ReplaySizeAndTimeBoundBuffer.TimedNode) r7;
            r8 = 0;
            if (r7 != 0) goto L_0x0021;
        L_0x001d:
            r7 = r18.latestHead();
        L_0x0021:
            r10 = r8;
        L_0x0022:
            r12 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1));
            r13 = 0;
            r14 = 0;
            if (r12 == 0) goto L_0x0061;
        L_0x0028:
            r12 = r2.isUnsubscribed();
            if (r12 == 0) goto L_0x0031;
        L_0x002e:
            r1.node = r14;
            return;
        L_0x0031:
            r12 = r0.done;
            r15 = r7.get();
            r15 = (rx.subjects.ReplaySubject.ReplaySizeAndTimeBoundBuffer.TimedNode) r15;
            if (r15 != 0) goto L_0x003e;
        L_0x003b:
            r16 = r3;
            goto L_0x0040;
        L_0x003e:
            r16 = r13;
        L_0x0040:
            if (r12 == 0) goto L_0x0052;
        L_0x0042:
            if (r16 == 0) goto L_0x0052;
        L_0x0044:
            r1.node = r14;
            r1 = r0.error;
            if (r1 == 0) goto L_0x004e;
        L_0x004a:
            r2.onError(r1);
            return;
        L_0x004e:
            r2.onCompleted();
            return;
        L_0x0052:
            if (r16 != 0) goto L_0x0061;
        L_0x0054:
            r7 = r15.value;
            r2.onNext(r7);
            r12 = 1;
            r16 = r10 + r12;
            r7 = r15;
            r10 = r16;
            goto L_0x0022;
        L_0x0061:
            r12 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1));
            if (r12 != 0) goto L_0x0089;
        L_0x0065:
            r12 = r2.isUnsubscribed();
            if (r12 == 0) goto L_0x006e;
        L_0x006b:
            r1.node = r14;
            return;
        L_0x006e:
            r12 = r0.done;
            r15 = r7.get();
            if (r15 != 0) goto L_0x0077;
        L_0x0076:
            r13 = r3;
        L_0x0077:
            if (r12 == 0) goto L_0x0089;
        L_0x0079:
            if (r13 == 0) goto L_0x0089;
        L_0x007b:
            r1.node = r14;
            r1 = r0.error;
            if (r1 == 0) goto L_0x0085;
        L_0x0081:
            r2.onError(r1);
            return;
        L_0x0085:
            r2.onCompleted();
            return;
        L_0x0089:
            r12 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1));
            if (r12 == 0) goto L_0x009b;
        L_0x008d:
            r8 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r12 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1));
            if (r12 == 0) goto L_0x009b;
        L_0x0096:
            r5 = r1.requested;
            rx.internal.operators.BackpressureUtils.produced(r5, r10);
        L_0x009b:
            r1.node = r7;
            r4 = -r4;
            r4 = r1.addAndGet(r4);
            if (r4 != 0) goto L_0x000f;
        L_0x00a4:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.ReplaySubject.ReplaySizeAndTimeBoundBuffer.drain(rx.subjects.ReplaySubject$ReplayProducer):void");
        }

        public final boolean isComplete() {
            return this.done;
        }

        public final Throwable error() {
            return this.error;
        }

        public final T last() {
            TimedNode latestHead = latestHead();
            while (true) {
                TimedNode timedNode = (TimedNode) latestHead.get();
                if (timedNode == null) {
                    return latestHead.value;
                }
                latestHead = timedNode;
            }
        }

        public final int size() {
            TimedNode timedNode = (TimedNode) latestHead().get();
            int i = 0;
            while (timedNode != null && i != ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                timedNode = (TimedNode) timedNode.get();
                i++;
            }
            return i;
        }

        public final boolean isEmpty() {
            return latestHead().get() == null;
        }

        public final T[] toArray(T[] tArr) {
            List arrayList = new ArrayList();
            for (TimedNode timedNode = (TimedNode) latestHead().get(); timedNode != null; timedNode = (TimedNode) timedNode.get()) {
                arrayList.add(timedNode.value);
            }
            return arrayList.toArray(tArr);
        }
    }

    static final class ReplaySizeBoundBuffer<T> implements ReplayBuffer<T> {
        volatile boolean done;
        Throwable error;
        volatile Node<T> head;
        final int limit;
        int size;
        Node<T> tail;

        static final class Node<T> extends AtomicReference<Node<T>> {
            private static final long serialVersionUID = 3713592843205853725L;
            final T value;

            public Node(T t) {
                this.value = t;
            }
        }

        public ReplaySizeBoundBuffer(int i) {
            this.limit = i;
            i = new Node(null);
            this.tail = i;
            this.head = i;
        }

        public final void next(T t) {
            Node node = new Node(t);
            this.tail.set(node);
            this.tail = node;
            t = this.size;
            if (t == this.limit) {
                this.head = (Node) this.head.get();
            } else {
                this.size = t + 1;
            }
        }

        public final void error(Throwable th) {
            this.error = th;
            this.done = true;
        }

        public final void complete() {
            this.done = true;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void drain(rx.subjects.ReplaySubject.ReplayProducer<T> r19) {
            /*
            r18 = this;
            r0 = r18;
            r1 = r19;
            r2 = r19.getAndIncrement();
            if (r2 == 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r2 = r1.actual;
            r3 = 1;
            r4 = r3;
        L_0x000f:
            r5 = r1.requested;
            r5 = r5.get();
            r7 = r1.node;
            r7 = (rx.subjects.ReplaySubject.ReplaySizeBoundBuffer.Node) r7;
            r8 = 0;
            if (r7 != 0) goto L_0x001f;
        L_0x001d:
            r7 = r0.head;
        L_0x001f:
            r10 = r8;
        L_0x0020:
            r12 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1));
            r13 = 0;
            r14 = 0;
            if (r12 == 0) goto L_0x005f;
        L_0x0026:
            r12 = r2.isUnsubscribed();
            if (r12 == 0) goto L_0x002f;
        L_0x002c:
            r1.node = r14;
            return;
        L_0x002f:
            r12 = r0.done;
            r15 = r7.get();
            r15 = (rx.subjects.ReplaySubject.ReplaySizeBoundBuffer.Node) r15;
            if (r15 != 0) goto L_0x003c;
        L_0x0039:
            r16 = r3;
            goto L_0x003e;
        L_0x003c:
            r16 = r13;
        L_0x003e:
            if (r12 == 0) goto L_0x0050;
        L_0x0040:
            if (r16 == 0) goto L_0x0050;
        L_0x0042:
            r1.node = r14;
            r1 = r0.error;
            if (r1 == 0) goto L_0x004c;
        L_0x0048:
            r2.onError(r1);
            return;
        L_0x004c:
            r2.onCompleted();
            return;
        L_0x0050:
            if (r16 != 0) goto L_0x005f;
        L_0x0052:
            r7 = r15.value;
            r2.onNext(r7);
            r12 = 1;
            r16 = r10 + r12;
            r7 = r15;
            r10 = r16;
            goto L_0x0020;
        L_0x005f:
            r12 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1));
            if (r12 != 0) goto L_0x0087;
        L_0x0063:
            r12 = r2.isUnsubscribed();
            if (r12 == 0) goto L_0x006c;
        L_0x0069:
            r1.node = r14;
            return;
        L_0x006c:
            r12 = r0.done;
            r15 = r7.get();
            if (r15 != 0) goto L_0x0075;
        L_0x0074:
            r13 = r3;
        L_0x0075:
            if (r12 == 0) goto L_0x0087;
        L_0x0077:
            if (r13 == 0) goto L_0x0087;
        L_0x0079:
            r1.node = r14;
            r1 = r0.error;
            if (r1 == 0) goto L_0x0083;
        L_0x007f:
            r2.onError(r1);
            return;
        L_0x0083:
            r2.onCompleted();
            return;
        L_0x0087:
            r12 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1));
            if (r12 == 0) goto L_0x0099;
        L_0x008b:
            r8 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r12 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1));
            if (r12 == 0) goto L_0x0099;
        L_0x0094:
            r5 = r1.requested;
            rx.internal.operators.BackpressureUtils.produced(r5, r10);
        L_0x0099:
            r1.node = r7;
            r4 = -r4;
            r4 = r1.addAndGet(r4);
            if (r4 != 0) goto L_0x000f;
        L_0x00a2:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.ReplaySubject.ReplaySizeBoundBuffer.drain(rx.subjects.ReplaySubject$ReplayProducer):void");
        }

        public final boolean isComplete() {
            return this.done;
        }

        public final Throwable error() {
            return this.error;
        }

        public final T last() {
            Node node = this.head;
            while (true) {
                Node node2 = (Node) node.get();
                if (node2 == null) {
                    return node.value;
                }
                node = node2;
            }
        }

        public final int size() {
            Node node = (Node) this.head.get();
            int i = 0;
            while (node != null && i != ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                node = (Node) node.get();
                i++;
            }
            return i;
        }

        public final boolean isEmpty() {
            return this.head.get() == null;
        }

        public final T[] toArray(T[] tArr) {
            List arrayList = new ArrayList();
            for (Node node = (Node) this.head.get(); node != null; node = (Node) node.get()) {
                arrayList.add(node.value);
            }
            return arrayList.toArray(tArr);
        }
    }

    static final class ReplayUnboundedBuffer<T> implements ReplayBuffer<T> {
        final int capacity;
        volatile boolean done;
        Throwable error;
        final Object[] head;
        volatile int size;
        Object[] tail;
        int tailIndex;

        public ReplayUnboundedBuffer(int i) {
            this.capacity = i;
            i = new Object[(i + 1)];
            this.head = i;
            this.tail = i;
        }

        public final void next(T t) {
            if (!this.done) {
                int i = this.tailIndex;
                Object[] objArr = this.tail;
                if (i == objArr.length - 1) {
                    Object[] objArr2 = new Object[objArr.length];
                    objArr2[0] = t;
                    this.tailIndex = 1;
                    objArr[i] = objArr2;
                    this.tail = objArr2;
                } else {
                    objArr[i] = t;
                    this.tailIndex = i + 1;
                }
                this.size += 1;
            }
        }

        public final void error(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
        }

        public final void complete() {
            this.done = true;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void drain(rx.subjects.ReplaySubject.ReplayProducer<T> r19) {
            /*
            r18 = this;
            r0 = r18;
            r1 = r19;
            r2 = r19.getAndIncrement();
            if (r2 == 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r2 = r1.actual;
            r3 = r0.capacity;
            r4 = 1;
            r5 = r4;
        L_0x0011:
            r6 = r1.requested;
            r6 = r6.get();
            r8 = r1.node;
            r8 = (java.lang.Object[]) r8;
            if (r8 != 0) goto L_0x001f;
        L_0x001d:
            r8 = r0.head;
        L_0x001f:
            r9 = r1.tailIndex;
            r10 = r1.index;
            r14 = r8;
            r13 = r9;
            r8 = 0;
        L_0x0027:
            r15 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
            r16 = 0;
            r11 = 0;
            if (r15 == 0) goto L_0x006c;
        L_0x002e:
            r12 = r2.isUnsubscribed();
            if (r12 == 0) goto L_0x0037;
        L_0x0034:
            r1.node = r11;
            return;
        L_0x0037:
            r12 = r0.done;
            r15 = r0.size;
            if (r10 != r15) goto L_0x003f;
        L_0x003d:
            r15 = r4;
            goto L_0x0041;
        L_0x003f:
            r15 = r16;
        L_0x0041:
            if (r12 == 0) goto L_0x0053;
        L_0x0043:
            if (r15 == 0) goto L_0x0053;
        L_0x0045:
            r1.node = r11;
            r1 = r0.error;
            if (r1 == 0) goto L_0x004f;
        L_0x004b:
            r2.onError(r1);
            return;
        L_0x004f:
            r2.onCompleted();
            return;
        L_0x0053:
            if (r15 != 0) goto L_0x006c;
        L_0x0055:
            if (r13 != r3) goto L_0x005e;
        L_0x0057:
            r11 = r14[r13];
            r11 = (java.lang.Object[]) r11;
            r14 = r11;
            r13 = r16;
        L_0x005e:
            r11 = r14[r13];
            r2.onNext(r11);
            r11 = 1;
            r15 = r8 + r11;
            r13 = r13 + r4;
            r10 = r10 + 1;
            r8 = r15;
            goto L_0x0027;
        L_0x006c:
            r12 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
            if (r12 != 0) goto L_0x0093;
        L_0x0070:
            r12 = r2.isUnsubscribed();
            if (r12 == 0) goto L_0x0079;
        L_0x0076:
            r1.node = r11;
            return;
        L_0x0079:
            r12 = r0.done;
            r15 = r0.size;
            if (r10 != r15) goto L_0x0081;
        L_0x007f:
            r16 = r4;
        L_0x0081:
            if (r12 == 0) goto L_0x0093;
        L_0x0083:
            if (r16 == 0) goto L_0x0093;
        L_0x0085:
            r1.node = r11;
            r1 = r0.error;
            if (r1 == 0) goto L_0x008f;
        L_0x008b:
            r2.onError(r1);
            return;
        L_0x008f:
            r2.onCompleted();
            return;
        L_0x0093:
            r11 = 0;
            r15 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1));
            if (r15 == 0) goto L_0x00a7;
        L_0x0099:
            r11 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r15 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1));
            if (r15 == 0) goto L_0x00a7;
        L_0x00a2:
            r6 = r1.requested;
            rx.internal.operators.BackpressureUtils.produced(r6, r8);
        L_0x00a7:
            r1.index = r10;
            r1.tailIndex = r13;
            r1.node = r14;
            r5 = -r5;
            r5 = r1.addAndGet(r5);
            if (r5 != 0) goto L_0x0011;
        L_0x00b4:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.ReplaySubject.ReplayUnboundedBuffer.drain(rx.subjects.ReplaySubject$ReplayProducer):void");
        }

        public final boolean isComplete() {
            return this.done;
        }

        public final Throwable error() {
            return this.error;
        }

        public final T last() {
            int i = this.size;
            if (i == 0) {
                return null;
            }
            Object[] objArr = this.head;
            int i2 = this.capacity;
            while (i >= i2) {
                objArr = (Object[]) objArr[i2];
                i -= i2;
            }
            return objArr[i - 1];
        }

        public final int size() {
            return this.size;
        }

        public final boolean isEmpty() {
            return this.size == 0;
        }

        public final T[] toArray(T[] tArr) {
            int i = this.size;
            if (tArr.length < i) {
                tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), i);
            }
            Object obj = this.head;
            int i2 = this.capacity;
            Object obj2 = obj;
            int i3 = 0;
            while (true) {
                int i4 = i3 + i2;
                if (i4 >= i) {
                    break;
                }
                System.arraycopy(obj2, 0, tArr, i3, i2);
                Object[] objArr = (Object[]) obj2[i2];
                i3 = i4;
            }
            System.arraycopy(obj2, 0, tArr, i3, i - i3);
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        }
    }

    static final class ReplayState<T> extends AtomicReference<ReplayProducer<T>[]> implements OnSubscribe<T>, Observer<T> {
        static final ReplayProducer[] EMPTY = new ReplayProducer[0];
        static final ReplayProducer[] TERMINATED = new ReplayProducer[0];
        private static final long serialVersionUID = 5952362471246910544L;
        final ReplayBuffer<T> buffer;

        public ReplayState(ReplayBuffer<T> replayBuffer) {
            this.buffer = replayBuffer;
            lazySet(EMPTY);
        }

        public final void call(Subscriber<? super T> subscriber) {
            ReplayProducer replayProducer = new ReplayProducer(subscriber, this);
            subscriber.add(replayProducer);
            subscriber.setProducer(replayProducer);
            if (add(replayProducer) == null || replayProducer.isUnsubscribed() == null) {
                this.buffer.drain(replayProducer);
            } else {
                remove(replayProducer);
            }
        }

        final boolean add(ReplayProducer<T> replayProducer) {
            ReplayProducer[] replayProducerArr;
            Object obj;
            do {
                replayProducerArr = (ReplayProducer[]) get();
                if (replayProducerArr == TERMINATED) {
                    return false;
                }
                int length = replayProducerArr.length;
                obj = new ReplayProducer[(length + 1)];
                System.arraycopy(replayProducerArr, 0, obj, 0, length);
                obj[length] = replayProducer;
            } while (!compareAndSet(replayProducerArr, obj));
            return true;
        }

        final void remove(ReplayProducer<T> replayProducer) {
            ReplayProducer[] replayProducerArr;
            Object obj;
            do {
                replayProducerArr = (ReplayProducer[]) get();
                if (replayProducerArr != TERMINATED) {
                    if (replayProducerArr != EMPTY) {
                        int length = replayProducerArr.length;
                        int i = -1;
                        for (int i2 = 0; i2 < length; i2++) {
                            if (replayProducerArr[i2] == replayProducer) {
                                i = i2;
                                break;
                            }
                        }
                        if (i >= 0) {
                            if (length == 1) {
                                obj = EMPTY;
                            } else {
                                Object obj2 = new ReplayProducer[(length - 1)];
                                System.arraycopy(replayProducerArr, 0, obj2, 0, i);
                                System.arraycopy(replayProducerArr, i + 1, obj2, i, (length - i) - 1);
                                obj = obj2;
                            }
                        } else {
                            return;
                        }
                    }
                }
                return;
            } while (!compareAndSet(replayProducerArr, obj));
        }

        public final void onNext(T t) {
            ReplayBuffer replayBuffer = this.buffer;
            replayBuffer.next(t);
            for (ReplayProducer drain : (ReplayProducer[]) get()) {
                replayBuffer.drain(drain);
            }
        }

        public final void onError(Throwable th) {
            ReplayBuffer replayBuffer = this.buffer;
            replayBuffer.error(th);
            List list = null;
            for (ReplayProducer drain : (ReplayProducer[]) getAndSet(TERMINATED)) {
                try {
                    replayBuffer.drain(drain);
                } catch (Throwable th2) {
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(th2);
                }
            }
            Exceptions.throwIfAny(list);
        }

        public final void onCompleted() {
            ReplayBuffer replayBuffer = this.buffer;
            replayBuffer.complete();
            for (ReplayProducer drain : (ReplayProducer[]) getAndSet(TERMINATED)) {
                replayBuffer.drain(drain);
            }
        }

        final boolean isTerminated() {
            return get() == TERMINATED;
        }
    }

    public static <T> ReplaySubject<T> create() {
        return create(16);
    }

    public static <T> ReplaySubject<T> create(int i) {
        if (i > 0) {
            return new ReplaySubject(new ReplayState(new ReplayUnboundedBuffer(i)));
        }
        throw new IllegalArgumentException("capacity > 0 required but it was ".concat(String.valueOf(i)));
    }

    static <T> ReplaySubject<T> createUnbounded() {
        return new ReplaySubject(new ReplayState(new ReplaySizeBoundBuffer(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)));
    }

    static <T> ReplaySubject<T> createUnboundedTime() {
        return new ReplaySubject(new ReplayState(new ReplaySizeAndTimeBoundBuffer(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, Long.MAX_VALUE, Schedulers.immediate())));
    }

    public static <T> ReplaySubject<T> createWithSize(int i) {
        return new ReplaySubject(new ReplayState(new ReplaySizeBoundBuffer(i)));
    }

    public static <T> ReplaySubject<T> createWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return createWithTimeAndSize(j, timeUnit, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, scheduler);
    }

    public static <T> ReplaySubject<T> createWithTimeAndSize(long j, TimeUnit timeUnit, int i, Scheduler scheduler) {
        return new ReplaySubject(new ReplayState(new ReplaySizeAndTimeBoundBuffer(i, timeUnit.toMillis(j), scheduler)));
    }

    ReplaySubject(ReplayState<T> replayState) {
        super(replayState);
        this.state = replayState;
    }

    public final void onNext(T t) {
        this.state.onNext(t);
    }

    public final void onError(Throwable th) {
        this.state.onError(th);
    }

    public final void onCompleted() {
        this.state.onCompleted();
    }

    final int subscriberCount() {
        return ((ReplayProducer[]) this.state.get()).length;
    }

    public final boolean hasObservers() {
        return ((ReplayProducer[]) this.state.get()).length != 0;
    }

    public final boolean hasThrowable() {
        return this.state.isTerminated() && this.state.buffer.error() != null;
    }

    public final boolean hasCompleted() {
        return this.state.isTerminated() && this.state.buffer.error() == null;
    }

    public final Throwable getThrowable() {
        return this.state.isTerminated() ? this.state.buffer.error() : null;
    }

    public final int size() {
        return this.state.buffer.size();
    }

    public final boolean hasAnyValue() {
        return !this.state.buffer.isEmpty();
    }

    public final boolean hasValue() {
        return hasAnyValue();
    }

    public final T[] getValues(T[] tArr) {
        return this.state.buffer.toArray(tArr);
    }

    public final Object[] getValues() {
        Object[] values = getValues(EMPTY_ARRAY);
        return values == EMPTY_ARRAY ? new Object[0] : values;
    }

    public final T getValue() {
        return this.state.buffer.last();
    }
}
