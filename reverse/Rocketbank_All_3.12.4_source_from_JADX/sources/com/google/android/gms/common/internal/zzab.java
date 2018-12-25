package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zze;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;

public class zzab {
    private static final zzb zzaGw = new C11601();

    public interface zza<R extends Result, T> {
        T zzf(R r);
    }

    public interface zzb {
        com.google.android.gms.common.api.zza zzH(Status status);
    }

    /* renamed from: com.google.android.gms.common.internal.zzab$1 */
    class C11601 implements zzb {
        C11601() {
        }

        public final com.google.android.gms.common.api.zza zzH(Status status) {
            return zzb.zzG(status);
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zzab$2 */
    class C11612 implements com.google.android.gms.common.api.PendingResult.zza {
        final /* synthetic */ zzb zzaGA;
        final /* synthetic */ PendingResult zzaGx;
        final /* synthetic */ TaskCompletionSource zzaGy;
        final /* synthetic */ zza zzaGz;

        C11612(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, zza zza, zzb zzb) {
            this.zzaGx = pendingResult;
            this.zzaGy = taskCompletionSource;
            this.zzaGz = zza;
            this.zzaGA = zzb;
        }

        public final void zzy(Status status) {
            if (status.isSuccess()) {
                this.zzaGy.setResult(this.zzaGz.zzf(this.zzaGx.await(0, TimeUnit.MILLISECONDS)));
                return;
            }
            this.zzaGy.setException(this.zzaGA.zzH(status));
        }
    }

    /* renamed from: com.google.android.gms.common.internal.zzab$3 */
    class C11623 implements zza<R, T> {
        final /* synthetic */ zze zzaGB;

        C11623(zze zze) {
            this.zzaGB = zze;
        }

        public final T zze(R r) {
            this.zzaGB.zzb(r);
            return this.zzaGB;
        }

        public final /* synthetic */ Object zzf(Result result) {
            return zze(result);
        }
    }

    public static <R extends Result, T extends zze<R>> Task<T> zza(PendingResult<R> pendingResult, T t) {
        return zza((PendingResult) pendingResult, new C11623(t));
    }

    public static <R extends Result, T> Task<T> zza(PendingResult<R> pendingResult, zza<R, T> zza) {
        return zza(pendingResult, zza, zzaGw);
    }

    public static <R extends Result, T> Task<T> zza(PendingResult<R> pendingResult, zza<R, T> zza, zzb zzb) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.zza(new C11612(pendingResult, taskCompletionSource, zza, zzb));
        return taskCompletionSource.getTask();
    }
}
