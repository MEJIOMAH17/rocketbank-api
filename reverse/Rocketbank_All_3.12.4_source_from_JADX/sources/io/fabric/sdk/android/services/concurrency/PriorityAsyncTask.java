package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AsyncTask.Status;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public abstract class PriorityAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> implements Dependency<Task>, PriorityProvider, Task {
    private final PriorityTask priorityTask = new PriorityTask();

    static class ProxyExecutor<Result> implements Executor {
        private final Executor executor;
        private final PriorityAsyncTask task;

        public ProxyExecutor(Executor executor, PriorityAsyncTask priorityAsyncTask) {
            this.executor = executor;
            this.task = priorityAsyncTask;
        }

        public final void execute(Runnable runnable) {
            this.executor.execute(new PriorityFutureTask<Result>(runnable) {
                public final <T extends Dependency<Task> & PriorityProvider & Task> T getDelegate() {
                    return ProxyExecutor.this.task;
                }
            });
        }
    }

    public final void executeOnExecutor(ExecutorService executorService, Params... paramsArr) {
        super.executeOnExecutor(new ProxyExecutor(executorService, this), paramsArr);
    }

    public int compareTo(Object obj) {
        return Priority.compareTo(this, obj);
    }

    public final void addDependency(Task task) {
        if (getStatus() != Status.PENDING) {
            throw new IllegalStateException("Must not add Dependency after task is running");
        }
        this.priorityTask.addDependency(task);
    }

    public Collection<Task> getDependencies() {
        return this.priorityTask.getDependencies();
    }

    public boolean areDependenciesMet() {
        return this.priorityTask.areDependenciesMet();
    }

    public Priority getPriority() {
        return this.priorityTask.getPriority();
    }

    public void setFinished(boolean z) {
        this.priorityTask.setFinished(z);
    }

    public boolean isFinished() {
        return this.priorityTask.isFinished();
    }

    public void setError(Throwable th) {
        this.priorityTask.setError(th);
    }
}
