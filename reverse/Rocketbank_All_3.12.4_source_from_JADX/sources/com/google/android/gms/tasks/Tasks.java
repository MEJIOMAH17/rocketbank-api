package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.zzac;
import java.util.Arrays;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class Tasks {

    /* renamed from: com.google.android.gms.tasks.Tasks$1 */
    class C06351 implements Runnable {
        final /* synthetic */ Callable zzXy;
        final /* synthetic */ zzh zzbNL;

        C06351(zzh zzh, Callable callable) {
            this.zzbNL = zzh;
            this.zzXy = callable;
        }

        public final void run() {
            try {
                this.zzbNL.setResult(this.zzXy.call());
            } catch (Exception e) {
                this.zzbNL.setException(e);
            }
        }
    }

    interface zzb extends OnFailureListener, OnSuccessListener<Object> {
    }

    private static final class zza implements zzb {
        private final CountDownLatch zztj;

        private zza() {
            this.zztj = new CountDownLatch(1);
        }

        public final void await() throws InterruptedException {
            this.zztj.await();
        }

        public final boolean await(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.zztj.await(j, timeUnit);
        }

        public final void onFailure(Exception exception) {
            this.zztj.countDown();
        }

        public final void onSuccess(Object obj) {
            this.zztj.countDown();
        }
    }

    private static final class zzc implements zzb {
        private final zzh<Void> zzbNF;
        private Exception zzbNK;
        private final int zzbNM;
        private int zzbNN;
        private int zzbNO;
        private final Object zzrJ = new Object();

        public zzc(int i, zzh<Void> zzh) {
            this.zzbNM = i;
            this.zzbNF = zzh;
        }

        private void zzTL() {
            if (this.zzbNN + this.zzbNO == this.zzbNM) {
                if (this.zzbNK == null) {
                    this.zzbNF.setResult(null);
                    return;
                }
                zzh zzh = this.zzbNF;
                int i = this.zzbNO;
                int i2 = this.zzbNM;
                StringBuilder stringBuilder = new StringBuilder(54);
                stringBuilder.append(i);
                stringBuilder.append(" out of ");
                stringBuilder.append(i2);
                stringBuilder.append(" underlying tasks failed");
                zzh.setException(new ExecutionException(stringBuilder.toString(), this.zzbNK));
            }
        }

        public final void onFailure(Exception exception) {
            synchronized (this.zzrJ) {
                this.zzbNO++;
                this.zzbNK = exception;
                zzTL();
            }
        }

        public final void onSuccess(Object obj) {
            synchronized (this.zzrJ) {
                this.zzbNN++;
                zzTL();
            }
        }
    }

    private Tasks() {
    }

    public static <TResult> TResult await(Task<TResult> task) throws ExecutionException, InterruptedException {
        zzac.zzye();
        zzac.zzb((Object) task, (Object) "Task must not be null");
        if (task.isComplete()) {
            return zzb(task);
        }
        Object zza = new zza();
        zza(task, zza);
        zza.await();
        return zzb(task);
    }

    public static <TResult> TResult await(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        zzac.zzye();
        zzac.zzb((Object) task, (Object) "Task must not be null");
        zzac.zzb((Object) timeUnit, (Object) "TimeUnit must not be null");
        if (task.isComplete()) {
            return zzb(task);
        }
        Object zza = new zza();
        zza(task, zza);
        if (zza.await(j, timeUnit)) {
            return zzb(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    public static <TResult> Task<TResult> call(Executor executor, Callable<TResult> callable) {
        zzac.zzb((Object) executor, (Object) "Executor must not be null");
        zzac.zzb((Object) callable, (Object) "Callback must not be null");
        Task zzh = new zzh();
        executor.execute(new C06351(zzh, callable));
        return zzh;
    }

    public static <TResult> Task<TResult> forException(Exception exception) {
        Task zzh = new zzh();
        zzh.setException(exception);
        return zzh;
    }

    public static <TResult> Task<TResult> forResult(TResult tResult) {
        Task zzh = new zzh();
        zzh.setResult(tResult);
        return zzh;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection.isEmpty()) {
            return forResult(null);
        }
        for (Task task : collection) {
            if (task == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        Task zzh = new zzh();
        zzb zzc = new zzc(collection.size(), zzh);
        for (Task zza : collection) {
            zza(zza, zzc);
        }
        return zzh;
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        return taskArr.length == 0 ? forResult(null) : whenAll(Arrays.asList(taskArr));
    }

    private static void zza(Task<?> task, zzb zzb) {
        task.addOnSuccessListener(TaskExecutors.zzbNG, (OnSuccessListener) zzb);
        task.addOnFailureListener(TaskExecutors.zzbNG, (OnFailureListener) zzb);
    }

    private static <TResult> TResult zzb(Task<TResult> task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }
}
