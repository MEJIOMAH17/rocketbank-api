package android.arch.core.executor;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.RestrictTo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@RestrictTo
public final class DefaultTaskExecutor extends TaskExecutor {
    private ExecutorService mDiskIO = Executors.newFixedThreadPool(2);
    private final Object mLock = new Object();
    private volatile Handler mMainHandler;

    public final void executeOnDiskIO(Runnable runnable) {
        this.mDiskIO.execute(runnable);
    }

    public final void postToMainThread(Runnable runnable) {
        if (this.mMainHandler == null) {
            synchronized (this.mLock) {
                if (this.mMainHandler == null) {
                    this.mMainHandler = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.mMainHandler.post(runnable);
    }

    public final boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
