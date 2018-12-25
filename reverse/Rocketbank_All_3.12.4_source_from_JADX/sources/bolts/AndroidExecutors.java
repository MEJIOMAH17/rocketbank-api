package bolts;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class AndroidExecutors {
    static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final AndroidExecutors INSTANCE = new AndroidExecutors();
    static final int MAX_POOL_SIZE = ((CPU_COUNT << 1) + 1);
    private final Executor uiThread = new UIThreadExecutor();

    /* renamed from: bolts.AndroidExecutors$1 */
    public static /* synthetic */ class C02901<TResult> {
        private final Task<TResult> task = new Task();

        public final Task<TResult> getTask() {
            return this.task;
        }

        public final void setCancelled() {
            if (!this.task.trySetCancelled()) {
                throw new IllegalStateException("Cannot cancel a completed task.");
            }
        }

        public final void setResult(TResult tResult) {
            if (this.task.trySetResult(tResult) == null) {
                throw new IllegalStateException("Cannot set the result of a completed task.");
            }
        }

        public final void setError(Exception exception) {
            if (this.task.trySetError(exception) == null) {
                throw new IllegalStateException("Cannot set the error on a completed task.");
            }
        }
    }

    static class UIThreadExecutor implements Executor {
        private UIThreadExecutor() {
        }

        public final void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        CORE_POOL_SIZE = availableProcessors + 1;
    }

    private AndroidExecutors() {
    }

    public static ExecutorService newCachedThreadPool() {
        ExecutorService threadPoolExecutor = new ThreadPoolExecutor(CORE_POOL_SIZE, MAX_POOL_SIZE, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());
        if (VERSION.SDK_INT >= 9) {
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return threadPoolExecutor;
    }

    public static Executor uiThread() {
        return INSTANCE.uiThread;
    }
}
