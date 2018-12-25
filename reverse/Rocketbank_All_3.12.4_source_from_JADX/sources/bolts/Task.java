package bolts;

import android.os.Parcel;
import android.support.compat.C0886R.dimen;
import bolts.AndroidExecutors.C02901;
import com.google.maps.android.clustering.ClusterManager.OnClusterItemInfoWindowClickListener;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public final class Task<TResult> {
    public static final ExecutorService BACKGROUND_EXECUTOR = BoltsExecutors.background();
    private static final Executor IMMEDIATE_EXECUTOR = BoltsExecutors.immediate();
    private static Task<?> TASK_CANCELLED = new Task((byte) 0);
    private static Task<Boolean> TASK_FALSE = new Task(Boolean.FALSE);
    private static Task<?> TASK_NULL = new Task(null);
    private static Task<Boolean> TASK_TRUE = new Task(Boolean.TRUE);
    public static final Executor UI_THREAD_EXECUTOR = AndroidExecutors.uiThread();
    private boolean cancelled;
    private boolean complete;
    private List<OnClusterItemInfoWindowClickListener<TResult, Void>> continuations = new ArrayList();
    private Exception error;
    private boolean errorHasBeenObserved;
    private final Object lock = new Object();
    private TResult result;

    @Deprecated
    public interface UnobservedExceptionHandler<T> {
        T createFromParcel(Parcel parcel, ClassLoader classLoader);

        T[] newArray(int i);
    }

    public class TaskCompletionSource extends C02901<TResult> {
        TaskCompletionSource() {
        }
    }

    Task() {
    }

    private Task(TResult tResult) {
        trySetResult(tResult);
    }

    private Task(byte b) {
        trySetCancelled();
    }

    public static <TResult> TaskCompletionSource create() {
        Task task = new Task();
        task.getClass();
        return new TaskCompletionSource();
    }

    private boolean isCompleted() {
        boolean z;
        synchronized (this.lock) {
            z = this.complete;
        }
        return z;
    }

    public final boolean isCancelled() {
        boolean z;
        synchronized (this.lock) {
            z = this.cancelled;
        }
        return z;
    }

    public final boolean isFaulted() {
        boolean z;
        synchronized (this.lock) {
            z = getError() != null;
        }
        return z;
    }

    public final TResult getResult() {
        TResult tResult;
        synchronized (this.lock) {
            tResult = this.result;
        }
        return tResult;
    }

    public final Exception getError() {
        Exception exception;
        synchronized (this.lock) {
            if (this.error != null) {
                this.errorHasBeenObserved = true;
            }
            exception = this.error;
        }
        return exception;
    }

    public static <TResult> Task<TResult> forResult(TResult tResult) {
        C02901 c02901 = new C02901();
        c02901.setResult(tResult);
        return c02901.getTask();
    }

    public static <TResult> Task<TResult> forError(Exception exception) {
        C02901 c02901 = new C02901();
        c02901.setError(exception);
        return c02901.getTask();
    }

    public static <TResult> Task<TResult> cancelled() {
        return TASK_CANCELLED;
    }

    private <TContinuationResult> Task<TContinuationResult> continueWith$20066573$17873828$23e4c4b5(final OnClusterItemInfoWindowClickListener<TResult, TContinuationResult> onClusterItemInfoWindowClickListener, final Executor executor) {
        final C02901 c02901 = new C02901();
        synchronized (this.lock) {
            boolean isCompleted = isCompleted();
            if (!isCompleted) {
                this.continuations.add(new OnClusterItemInfoWindowClickListener<TResult, Void>() {
                    final /* synthetic */ dimen val$ct$1927e1e2 = null;

                    public final /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
                        Task.completeImmediately$10a2f083$7e45c1e(c02901, onClusterItemInfoWindowClickListener, task, executor, null);
                        return null;
                    }
                });
            }
        }
        if (isCompleted) {
            completeImmediately$10a2f083$7e45c1e(c02901, onClusterItemInfoWindowClickListener, this, executor, null);
        }
        return c02901.getTask();
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWith$5ad45bad(OnClusterItemInfoWindowClickListener<TResult, TContinuationResult> onClusterItemInfoWindowClickListener) {
        return continueWith$20066573$17873828$23e4c4b5(onClusterItemInfoWindowClickListener, IMMEDIATE_EXECUTOR);
    }

    private <TContinuationResult> Task<TContinuationResult> continueWithTask$20066573$17873828$23e4c4b5(final OnClusterItemInfoWindowClickListener<TResult, Task<TContinuationResult>> onClusterItemInfoWindowClickListener, final Executor executor) {
        final C02901 c02901 = new C02901();
        synchronized (this.lock) {
            boolean isCompleted = isCompleted();
            if (!isCompleted) {
                this.continuations.add(new OnClusterItemInfoWindowClickListener<TResult, Void>() {
                    final /* synthetic */ dimen val$ct$1927e1e2 = null;

                    public final /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
                        Task.completeAfterTask$10a2f083$7e45c1e(c02901, onClusterItemInfoWindowClickListener, task, executor, null);
                        return null;
                    }
                });
            }
        }
        if (isCompleted) {
            completeAfterTask$10a2f083$7e45c1e(c02901, onClusterItemInfoWindowClickListener, this, executor, null);
        }
        return c02901.getTask();
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccess$5ad45bad(final OnClusterItemInfoWindowClickListener<TResult, TContinuationResult> onClusterItemInfoWindowClickListener) {
        return continueWithTask$20066573$17873828$23e4c4b5(new OnClusterItemInfoWindowClickListener<TResult, Task<TContinuationResult>>() {
            final /* synthetic */ dimen val$ct$1927e1e2 = null;

            public final /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
                if (task.isFaulted()) {
                    return Task.forError(task.getError());
                }
                if (task.isCancelled()) {
                    return Task.cancelled();
                }
                return task.continueWith$5ad45bad(onClusterItemInfoWindowClickListener);
            }
        }, IMMEDIATE_EXECUTOR);
    }

    private static <TContinuationResult, TResult> void completeImmediately$10a2f083$7e45c1e(final C02901<TContinuationResult> c02901, final OnClusterItemInfoWindowClickListener<TResult, TContinuationResult> onClusterItemInfoWindowClickListener, final Task<TResult> task, Executor executor, dimen dimen) {
        try {
            executor.execute(new Runnable(null) {
                public final void run() {
                    /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                    /*
                    r2 = this;
                    r0 = null;
                    if (r0 == 0) goto L_0x0012;
                L_0x0004:
                    r0 = null;
                    r0 = r0.isCancellationRequested();
                    if (r0 == 0) goto L_0x0012;
                L_0x000c:
                    r0 = r1;
                    r0.setCancelled();
                    return;
                L_0x0012:
                    r0 = r2;	 Catch:{ CancellationException -> 0x0027, Exception -> 0x0020 }
                    r1 = r3;	 Catch:{ CancellationException -> 0x0027, Exception -> 0x0020 }
                    r0 = r0.then(r1);	 Catch:{ CancellationException -> 0x0027, Exception -> 0x0020 }
                    r1 = r1;	 Catch:{ CancellationException -> 0x0027, Exception -> 0x0020 }
                    r1.setResult(r0);	 Catch:{ CancellationException -> 0x0027, Exception -> 0x0020 }
                    return;
                L_0x0020:
                    r0 = move-exception;
                    r1 = r1;
                    r1.setError(r0);
                    return;
                L_0x0027:
                    r0 = r1;
                    r0.setCancelled();
                    return;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: bolts.Task.14.run():void");
                }
            });
        } catch (OnClusterItemInfoWindowClickListener<TResult, TContinuationResult> onClusterItemInfoWindowClickListener2) {
            c02901.setError(new ExecutorException(onClusterItemInfoWindowClickListener2));
        }
    }

    private static <TContinuationResult, TResult> void completeAfterTask$10a2f083$7e45c1e(final C02901<TContinuationResult> c02901, final OnClusterItemInfoWindowClickListener<TResult, Task<TContinuationResult>> onClusterItemInfoWindowClickListener, final Task<TResult> task, Executor executor, dimen dimen) {
        try {
            executor.execute(new Runnable(null) {

                /* renamed from: bolts.Task$15$1 */
                class C09791 implements OnClusterItemInfoWindowClickListener<TContinuationResult, Void> {
                    C09791() {
                    }

                    public final /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
                        if (null != null && null.isCancellationRequested()) {
                            c02901.setCancelled();
                        } else if (task.isCancelled()) {
                            c02901.setCancelled();
                        } else if (task.isFaulted()) {
                            c02901.setError(task.getError());
                        } else {
                            c02901.setResult(task.getResult());
                        }
                        return null;
                    }
                }

                public final void run() {
                    /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                    /*
                    r2 = this;
                    r0 = null;
                    if (r0 == 0) goto L_0x0012;
                L_0x0004:
                    r0 = null;
                    r0 = r0.isCancellationRequested();
                    if (r0 == 0) goto L_0x0012;
                L_0x000c:
                    r0 = r1;
                    r0.setCancelled();
                    return;
                L_0x0012:
                    r0 = r2;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    r1 = r3;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    r0 = r0.then(r1);	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    r0 = (bolts.Task) r0;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    if (r0 != 0) goto L_0x0025;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                L_0x001e:
                    r0 = r1;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    r1 = 0;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    r0.setResult(r1);	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    return;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                L_0x0025:
                    r1 = new bolts.Task$15$1;	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    r1.<init>();	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    r0.continueWith$5ad45bad(r1);	 Catch:{ CancellationException -> 0x0035, Exception -> 0x002e }
                    return;
                L_0x002e:
                    r0 = move-exception;
                    r1 = r1;
                    r1.setError(r0);
                    return;
                L_0x0035:
                    r0 = r1;
                    r0.setCancelled();
                    return;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: bolts.Task.15.run():void");
                }
            });
        } catch (OnClusterItemInfoWindowClickListener<TResult, Task<TContinuationResult>> onClusterItemInfoWindowClickListener2) {
            c02901.setError(new ExecutorException(onClusterItemInfoWindowClickListener2));
        }
    }

    private void runContinuations() {
        synchronized (this.lock) {
            for (OnClusterItemInfoWindowClickListener then : this.continuations) {
                try {
                    then.then(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.continuations = null;
        }
    }

    final boolean trySetCancelled() {
        synchronized (this.lock) {
            if (this.complete) {
                return false;
            }
            this.complete = true;
            this.cancelled = true;
            this.lock.notifyAll();
            runContinuations();
            return true;
        }
    }

    final boolean trySetResult(TResult tResult) {
        synchronized (this.lock) {
            if (this.complete) {
                return null;
            }
            this.complete = true;
            this.result = tResult;
            this.lock.notifyAll();
            runContinuations();
            return true;
        }
    }

    final boolean trySetError(Exception exception) {
        synchronized (this.lock) {
            if (this.complete) {
                return false;
            }
            this.complete = true;
            this.error = exception;
            this.errorHasBeenObserved = false;
            this.lock.notifyAll();
            runContinuations();
            return true;
        }
    }
}
