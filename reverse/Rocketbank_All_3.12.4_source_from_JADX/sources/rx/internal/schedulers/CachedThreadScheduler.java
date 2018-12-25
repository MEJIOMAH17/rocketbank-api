package rx.internal.schedulers;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.util.RxThreadFactory;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

public final class CachedThreadScheduler extends Scheduler implements SchedulerLifecycle {
    private static final long KEEP_ALIVE_TIME = 60;
    private static final TimeUnit KEEP_ALIVE_UNIT = TimeUnit.SECONDS;
    static final CachedWorkerPool NONE;
    static final ThreadWorker SHUTDOWN_THREADWORKER;
    final AtomicReference<CachedWorkerPool> pool = new AtomicReference(NONE);
    final ThreadFactory threadFactory;

    static final class CachedWorkerPool {
        private final CompositeSubscription allWorkers;
        private final ScheduledExecutorService evictorService;
        private final Future<?> evictorTask;
        private final ConcurrentLinkedQueue<ThreadWorker> expiringWorkerQueue;
        private final long keepAliveTime;
        private final ThreadFactory threadFactory;

        /* renamed from: rx.internal.schedulers.CachedThreadScheduler$CachedWorkerPool$2 */
        class C16572 implements Runnable {
            C16572() {
            }

            public void run() {
                CachedWorkerPool.this.evictExpiredWorkers();
            }
        }

        CachedWorkerPool(final ThreadFactory threadFactory, long j, TimeUnit timeUnit) {
            this.threadFactory = threadFactory;
            this.keepAliveTime = timeUnit != null ? timeUnit.toNanos(j) : 0;
            this.expiringWorkerQueue = new ConcurrentLinkedQueue();
            this.allWorkers = new CompositeSubscription();
            j = null;
            if (timeUnit != null) {
                threadFactory = Executors.newScheduledThreadPool(1, new ThreadFactory() {
                    public Thread newThread(Runnable runnable) {
                        runnable = threadFactory.newThread(runnable);
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(runnable.getName());
                        stringBuilder.append(" (Evictor)");
                        runnable.setName(stringBuilder.toString());
                        return runnable;
                    }
                });
                NewThreadWorker.tryEnableCancelPolicy(threadFactory);
                j = threadFactory.scheduleWithFixedDelay(new C16572(), this.keepAliveTime, this.keepAliveTime, TimeUnit.NANOSECONDS);
            } else {
                threadFactory = null;
            }
            this.evictorService = threadFactory;
            this.evictorTask = j;
        }

        final ThreadWorker get() {
            if (this.allWorkers.isUnsubscribed()) {
                return CachedThreadScheduler.SHUTDOWN_THREADWORKER;
            }
            while (!this.expiringWorkerQueue.isEmpty()) {
                ThreadWorker threadWorker = (ThreadWorker) this.expiringWorkerQueue.poll();
                if (threadWorker != null) {
                    return threadWorker;
                }
            }
            Object threadWorker2 = new ThreadWorker(this.threadFactory);
            this.allWorkers.add(threadWorker2);
            return threadWorker2;
        }

        final void release(ThreadWorker threadWorker) {
            threadWorker.setExpirationTime(now() + this.keepAliveTime);
            this.expiringWorkerQueue.offer(threadWorker);
        }

        final void evictExpiredWorkers() {
            if (!this.expiringWorkerQueue.isEmpty()) {
                long now = now();
                Iterator it = this.expiringWorkerQueue.iterator();
                while (it.hasNext()) {
                    ThreadWorker threadWorker = (ThreadWorker) it.next();
                    if (threadWorker.getExpirationTime() > now) {
                        return;
                    }
                    if (this.expiringWorkerQueue.remove(threadWorker)) {
                        this.allWorkers.remove(threadWorker);
                    }
                }
            }
        }

        final long now() {
            return System.nanoTime();
        }

        final void shutdown() {
            try {
                if (this.evictorTask != null) {
                    this.evictorTask.cancel(true);
                }
                if (this.evictorService != null) {
                    this.evictorService.shutdownNow();
                }
                this.allWorkers.unsubscribe();
            } catch (Throwable th) {
                this.allWorkers.unsubscribe();
            }
        }
    }

    static final class EventLoopWorker extends Worker implements Action0 {
        private final CompositeSubscription innerSubscription = new CompositeSubscription();
        final AtomicBoolean once;
        private final CachedWorkerPool pool;
        private final ThreadWorker threadWorker;

        EventLoopWorker(CachedWorkerPool cachedWorkerPool) {
            this.pool = cachedWorkerPool;
            this.once = new AtomicBoolean();
            this.threadWorker = cachedWorkerPool.get();
        }

        public final void unsubscribe() {
            if (this.once.compareAndSet(false, true)) {
                this.threadWorker.schedule(this);
            }
            this.innerSubscription.unsubscribe();
        }

        public final void call() {
            this.pool.release(this.threadWorker);
        }

        public final boolean isUnsubscribed() {
            return this.innerSubscription.isUnsubscribed();
        }

        public final Subscription schedule(Action0 action0) {
            return schedule(action0, 0, null);
        }

        public final Subscription schedule(final Action0 action0, long j, TimeUnit timeUnit) {
            if (this.innerSubscription.isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            action0 = this.threadWorker.scheduleActual(new Action0() {
                public void call() {
                    if (!EventLoopWorker.this.isUnsubscribed()) {
                        action0.call();
                    }
                }
            }, j, timeUnit);
            this.innerSubscription.add(action0);
            action0.addParent(this.innerSubscription);
            return action0;
        }
    }

    static final class ThreadWorker extends NewThreadWorker {
        private long expirationTime = 0;

        ThreadWorker(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        public final long getExpirationTime() {
            return this.expirationTime;
        }

        public final void setExpirationTime(long j) {
            this.expirationTime = j;
        }
    }

    static {
        ThreadWorker threadWorker = new ThreadWorker(RxThreadFactory.NONE);
        SHUTDOWN_THREADWORKER = threadWorker;
        threadWorker.unsubscribe();
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(null, 0, null);
        NONE = cachedWorkerPool;
        cachedWorkerPool.shutdown();
    }

    public CachedThreadScheduler(ThreadFactory threadFactory) {
        this.threadFactory = threadFactory;
        start();
    }

    public final void start() {
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(this.threadFactory, KEEP_ALIVE_TIME, KEEP_ALIVE_UNIT);
        if (!this.pool.compareAndSet(NONE, cachedWorkerPool)) {
            cachedWorkerPool.shutdown();
        }
    }

    public final void shutdown() {
        CachedWorkerPool cachedWorkerPool;
        do {
            cachedWorkerPool = (CachedWorkerPool) this.pool.get();
            if (cachedWorkerPool == NONE) {
                return;
            }
        } while (!this.pool.compareAndSet(cachedWorkerPool, NONE));
        cachedWorkerPool.shutdown();
    }

    public final Worker createWorker() {
        return new EventLoopWorker((CachedWorkerPool) this.pool.get());
    }
}
