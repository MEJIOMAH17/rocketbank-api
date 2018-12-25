package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class PriorityFutureTask<V> extends FutureTask<V> implements Dependency<Task>, PriorityProvider, Task {
    final Object delegate;

    public /* bridge */ /* synthetic */ void addDependency(Object obj) {
        ((Dependency) ((PriorityProvider) getDelegate())).addDependency((Task) obj);
    }

    public PriorityFutureTask(Callable<V> callable) {
        super(callable);
        if (PriorityTask.isProperDelegate(callable)) {
            callable = (Dependency) callable;
        } else {
            callable = new PriorityTask();
        }
        this.delegate = callable;
    }

    public PriorityFutureTask(Runnable runnable, V v) {
        super(runnable, v);
        if (PriorityTask.isProperDelegate(runnable) != null) {
            runnable = (Dependency) runnable;
        } else {
            runnable = new PriorityTask();
        }
        this.delegate = runnable;
    }

    public int compareTo(Object obj) {
        return ((PriorityProvider) getDelegate()).compareTo(obj);
    }

    public Collection<Task> getDependencies() {
        return ((Dependency) ((PriorityProvider) getDelegate())).getDependencies();
    }

    public boolean areDependenciesMet() {
        return ((Dependency) ((PriorityProvider) getDelegate())).areDependenciesMet();
    }

    public Priority getPriority() {
        return ((PriorityProvider) getDelegate()).getPriority();
    }

    public void setFinished(boolean z) {
        ((Task) ((PriorityProvider) getDelegate())).setFinished(z);
    }

    public boolean isFinished() {
        return ((Task) ((PriorityProvider) getDelegate())).isFinished();
    }

    public void setError(Throwable th) {
        ((Task) ((PriorityProvider) getDelegate())).setError(th);
    }

    public <T extends Dependency<Task> & PriorityProvider & Task> T getDelegate() {
        return (Dependency) this.delegate;
    }
}
