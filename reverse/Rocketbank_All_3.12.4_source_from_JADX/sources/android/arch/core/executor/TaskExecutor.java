package android.arch.core.executor;

import android.support.annotation.RestrictTo;

@RestrictTo
public abstract class TaskExecutor {
    public abstract void executeOnDiskIO(Runnable runnable);

    public abstract boolean isMainThread();

    public abstract void postToMainThread(Runnable runnable);
}
