package rx.plugins;

import java.util.concurrent.ThreadFactory;
import rx.Scheduler;
import rx.annotations.Experimental;
import rx.functions.Action0;
import rx.internal.schedulers.CachedThreadScheduler;
import rx.internal.schedulers.EventLoopsScheduler;
import rx.internal.schedulers.NewThreadScheduler;
import rx.internal.util.RxThreadFactory;

public class RxJavaSchedulersHook {
    private static final RxJavaSchedulersHook DEFAULT_INSTANCE = new RxJavaSchedulersHook();

    public Scheduler getComputationScheduler() {
        return null;
    }

    public Scheduler getIOScheduler() {
        return null;
    }

    public Scheduler getNewThreadScheduler() {
        return null;
    }

    @Deprecated
    public Action0 onSchedule(Action0 action0) {
        return action0;
    }

    @Experimental
    public static Scheduler createComputationScheduler() {
        return createComputationScheduler(new RxThreadFactory("RxComputationScheduler-"));
    }

    @Experimental
    public static Scheduler createComputationScheduler(ThreadFactory threadFactory) {
        if (threadFactory != null) {
            return new EventLoopsScheduler(threadFactory);
        }
        throw new NullPointerException("threadFactory == null");
    }

    @Experimental
    public static Scheduler createIoScheduler() {
        return createIoScheduler(new RxThreadFactory("RxIoScheduler-"));
    }

    @Experimental
    public static Scheduler createIoScheduler(ThreadFactory threadFactory) {
        if (threadFactory != null) {
            return new CachedThreadScheduler(threadFactory);
        }
        throw new NullPointerException("threadFactory == null");
    }

    @Experimental
    public static Scheduler createNewThreadScheduler() {
        return createNewThreadScheduler(new RxThreadFactory("RxNewThreadScheduler-"));
    }

    @Experimental
    public static Scheduler createNewThreadScheduler(ThreadFactory threadFactory) {
        if (threadFactory != null) {
            return new NewThreadScheduler(threadFactory);
        }
        throw new NullPointerException("threadFactory == null");
    }

    public static RxJavaSchedulersHook getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
