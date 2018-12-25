package rx.internal.util;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.internal.schedulers.GenericScheduledExecutorService;
import rx.internal.schedulers.SchedulerLifecycle;
import rx.internal.util.unsafe.MpmcArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.plugins.RxJavaHooks;

public abstract class ObjectPool<T> implements SchedulerLifecycle {
    final int maxSize;
    final int minSize;
    private final AtomicReference<Future<?>> periodicTask;
    Queue<T> pool;
    private final long validationInterval;

    /* renamed from: rx.internal.util.ObjectPool$1 */
    class C16591 implements Runnable {
        C16591() {
        }

        public void run() {
            int size = ObjectPool.this.pool.size();
            int i = 0;
            if (size < ObjectPool.this.minSize) {
                int i2 = ObjectPool.this.maxSize - size;
                while (i < i2) {
                    ObjectPool.this.pool.add(ObjectPool.this.createObject());
                    i++;
                }
                return;
            }
            if (size > ObjectPool.this.maxSize) {
                size -= ObjectPool.this.maxSize;
                while (i < size) {
                    ObjectPool.this.pool.poll();
                    i++;
                }
            }
        }
    }

    protected abstract T createObject();

    public ObjectPool() {
        this(0, 0, 67);
    }

    private ObjectPool(int i, int i2, long j) {
        this.minSize = i;
        this.maxSize = i2;
        this.validationInterval = j;
        this.periodicTask = new AtomicReference();
        initialize(i);
        start();
    }

    public T borrowObject() {
        T poll = this.pool.poll();
        return poll == null ? createObject() : poll;
    }

    public void returnObject(T t) {
        if (t != null) {
            this.pool.offer(t);
        }
    }

    public void shutdown() {
        Future future = (Future) this.periodicTask.getAndSet(null);
        if (future != null) {
            future.cancel(false);
        }
    }

    public void start() {
        while (this.periodicTask.get() == null) {
            try {
                Future scheduleAtFixedRate = GenericScheduledExecutorService.getInstance().scheduleAtFixedRate(new C16591(), this.validationInterval, this.validationInterval, TimeUnit.SECONDS);
                if (!this.periodicTask.compareAndSet(null, scheduleAtFixedRate)) {
                    scheduleAtFixedRate.cancel(false);
                } else {
                    return;
                }
            } catch (Throwable e) {
                RxJavaHooks.onError(e);
                return;
            }
        }
    }

    private void initialize(int i) {
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.pool = new MpmcArrayQueue(Math.max(this.maxSize, 1024));
        } else {
            this.pool = new ConcurrentLinkedQueue();
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.pool.add(createObject());
        }
    }
}
