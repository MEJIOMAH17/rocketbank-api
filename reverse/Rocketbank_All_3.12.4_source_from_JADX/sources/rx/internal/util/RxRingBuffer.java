package rx.internal.util;

import java.io.PrintStream;
import java.util.Queue;
import rx.Observer;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.internal.operators.NotificationLite;
import rx.internal.util.unsafe.SpmcArrayQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;

public class RxRingBuffer implements Subscription {
    public static final int SIZE;
    public static final ObjectPool<Queue<Object>> SPMC_POOL = new C19632();
    public static final ObjectPool<Queue<Object>> SPSC_POOL = new C19621();
    private final ObjectPool<Queue<Object>> pool;
    private Queue<Object> queue;
    private final int size;
    public volatile Object terminalState;

    /* renamed from: rx.internal.util.RxRingBuffer$1 */
    static class C19621 extends ObjectPool<Queue<Object>> {
        C19621() {
        }

        protected final SpscArrayQueue<Object> createObject() {
            return new SpscArrayQueue(RxRingBuffer.SIZE);
        }
    }

    /* renamed from: rx.internal.util.RxRingBuffer$2 */
    static class C19632 extends ObjectPool<Queue<Object>> {
        C19632() {
        }

        protected final SpmcArrayQueue<Object> createObject() {
            return new SpmcArrayQueue(RxRingBuffer.SIZE);
        }
    }

    static {
        int i = PlatformDependent.isAndroid() ? 16 : 128;
        String property = System.getProperty("rx.ring-buffer.size");
        if (property != null) {
            try {
                i = Integer.parseInt(property);
            } catch (NumberFormatException e) {
                PrintStream printStream = System.err;
                StringBuilder stringBuilder = new StringBuilder("Failed to set 'rx.buffer.size' with value ");
                stringBuilder.append(property);
                stringBuilder.append(" => ");
                stringBuilder.append(e.getMessage());
                printStream.println(stringBuilder.toString());
            }
        }
        SIZE = i;
    }

    public static RxRingBuffer getSpscInstance() {
        if (UnsafeAccess.isUnsafeAvailable()) {
            return new RxRingBuffer(SPSC_POOL, SIZE);
        }
        return new RxRingBuffer();
    }

    public static RxRingBuffer getSpmcInstance() {
        if (UnsafeAccess.isUnsafeAvailable()) {
            return new RxRingBuffer(SPMC_POOL, SIZE);
        }
        return new RxRingBuffer();
    }

    private RxRingBuffer(Queue<Object> queue, int i) {
        this.queue = queue;
        this.pool = null;
        this.size = i;
    }

    private RxRingBuffer(ObjectPool<Queue<Object>> objectPool, int i) {
        this.pool = objectPool;
        this.queue = (Queue) objectPool.borrowObject();
        this.size = i;
    }

    public synchronized void release() {
        Queue queue = this.queue;
        ObjectPool objectPool = this.pool;
        if (!(objectPool == null || queue == null)) {
            queue.clear();
            this.queue = null;
            objectPool.returnObject(queue);
        }
    }

    public void unsubscribe() {
        release();
    }

    RxRingBuffer() {
        this(new SynchronizedQueue(SIZE), SIZE);
    }

    public void onNext(Object obj) throws MissingBackpressureException {
        synchronized (this) {
            Queue queue = this.queue;
            int i = 1;
            if (queue != null) {
                obj = queue.offer(NotificationLite.next(obj)) ^ 1;
                i = 0;
            } else {
                obj = null;
            }
        }
        if (i != 0) {
            throw new IllegalStateException("This instance has been unsubscribed and the queue is no longer usable.");
        } else if (obj != null) {
            throw new MissingBackpressureException();
        }
    }

    public void onCompleted() {
        if (this.terminalState == null) {
            this.terminalState = NotificationLite.completed();
        }
    }

    public void onError(Throwable th) {
        if (this.terminalState == null) {
            this.terminalState = NotificationLite.error(th);
        }
    }

    public int available() {
        return this.size - count();
    }

    public int capacity() {
        return this.size;
    }

    public int count() {
        Queue queue = this.queue;
        if (queue == null) {
            return 0;
        }
        return queue.size();
    }

    public boolean isEmpty() {
        Queue queue = this.queue;
        if (queue != null) {
            if (!queue.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object poll() {
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = r4.queue;	 Catch:{ all -> 0x001d }
        r1 = 0;
        if (r0 != 0) goto L_0x0008;
    L_0x0006:
        monitor-exit(r4);	 Catch:{ all -> 0x001d }
        return r1;
    L_0x0008:
        r2 = r0.poll();	 Catch:{ all -> 0x001d }
        r3 = r4.terminalState;	 Catch:{ all -> 0x001d }
        if (r2 != 0) goto L_0x001b;
    L_0x0010:
        if (r3 == 0) goto L_0x001b;
    L_0x0012:
        r0 = r0.peek();	 Catch:{ all -> 0x001d }
        if (r0 != 0) goto L_0x001b;
    L_0x0018:
        r4.terminalState = r1;	 Catch:{ all -> 0x001d }
        r2 = r3;
    L_0x001b:
        monitor-exit(r4);	 Catch:{ all -> 0x001d }
        return r2;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.RxRingBuffer.poll():java.lang.Object");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object peek() {
        /*
        r3 = this;
        monitor-enter(r3);
        r0 = r3.queue;	 Catch:{ all -> 0x001b }
        if (r0 != 0) goto L_0x0008;
    L_0x0005:
        r0 = 0;
        monitor-exit(r3);	 Catch:{ all -> 0x001b }
        return r0;
    L_0x0008:
        r1 = r0.peek();	 Catch:{ all -> 0x001b }
        r2 = r3.terminalState;	 Catch:{ all -> 0x001b }
        if (r1 != 0) goto L_0x0019;
    L_0x0010:
        if (r2 == 0) goto L_0x0019;
    L_0x0012:
        r0 = r0.peek();	 Catch:{ all -> 0x001b }
        if (r0 != 0) goto L_0x0019;
    L_0x0018:
        r1 = r2;
    L_0x0019:
        monitor-exit(r3);	 Catch:{ all -> 0x001b }
        return r1;
    L_0x001b:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x001b }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.RxRingBuffer.peek():java.lang.Object");
    }

    public boolean isCompleted(Object obj) {
        return NotificationLite.isCompleted(obj);
    }

    public boolean isError(Object obj) {
        return NotificationLite.isError(obj);
    }

    public Object getValue(Object obj) {
        return NotificationLite.getValue(obj);
    }

    public boolean accept(Object obj, Observer observer) {
        return NotificationLite.accept(observer, obj);
    }

    public Throwable asError(Object obj) {
        return NotificationLite.getError(obj);
    }

    public boolean isUnsubscribed() {
        return this.queue == null;
    }
}
