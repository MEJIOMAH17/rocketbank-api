package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzabe;
import com.google.android.gms.internal.zzabf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

final class zzh<TResult> extends Task<TResult> {
    private final zzg<TResult> zzbNH = new zzg();
    private boolean zzbNI;
    private TResult zzbNJ;
    private Exception zzbNK;
    private final Object zzrJ = new Object();

    private static class zza extends zzabe {
        private final List<WeakReference<zzf<?>>> mListeners = new ArrayList();

        private zza(zzabf zzabf) {
            super(zzabf);
            this.zzaCR.zza("TaskOnStopCallback", (zzabe) this);
        }

        public static zza zzw(Activity activity) {
            zzabf zzs = zzabe.zzs(activity);
            zza zza = (zza) zzs.zza("TaskOnStopCallback", zza.class);
            return zza == null ? new zza(zzs) : zza;
        }

        public void onStop() {
            synchronized (this.mListeners) {
                for (WeakReference weakReference : this.mListeners) {
                    zzf zzf = (zzf) weakReference.get();
                    if (zzf != null) {
                        zzf.cancel();
                    }
                }
                this.mListeners.clear();
            }
        }

        public <T> void zzb(zzf<T> zzf) {
            synchronized (this.mListeners) {
                this.mListeners.add(new WeakReference(zzf));
            }
        }
    }

    zzh() {
    }

    private void zzTI() {
        zzac.zza(this.zzbNI, (Object) "Task is not yet complete");
    }

    private void zzTJ() {
        zzac.zza(this.zzbNI ^ 1, (Object) "Task is already complete");
    }

    private void zzTK() {
        synchronized (this.zzrJ) {
            if (this.zzbNI) {
                this.zzbNH.zza((Task) this);
                return;
            }
        }
    }

    public final Task<TResult> addOnCompleteListener(Activity activity, OnCompleteListener<TResult> onCompleteListener) {
        zzf zzc = new zzc(TaskExecutors.MAIN_THREAD, onCompleteListener);
        this.zzbNH.zza(zzc);
        zza.zzw(activity).zzb(zzc);
        zzTK();
        return this;
    }

    public final Task<TResult> addOnCompleteListener(OnCompleteListener<TResult> onCompleteListener) {
        return addOnCompleteListener(TaskExecutors.MAIN_THREAD, (OnCompleteListener) onCompleteListener);
    }

    public final Task<TResult> addOnCompleteListener(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.zzbNH.zza(new zzc(executor, onCompleteListener));
        zzTK();
        return this;
    }

    public final Task<TResult> addOnFailureListener(Activity activity, OnFailureListener onFailureListener) {
        zzf zzd = new zzd(TaskExecutors.MAIN_THREAD, onFailureListener);
        this.zzbNH.zza(zzd);
        zza.zzw(activity).zzb(zzd);
        zzTK();
        return this;
    }

    public final Task<TResult> addOnFailureListener(OnFailureListener onFailureListener) {
        return addOnFailureListener(TaskExecutors.MAIN_THREAD, onFailureListener);
    }

    public final Task<TResult> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        this.zzbNH.zza(new zzd(executor, onFailureListener));
        zzTK();
        return this;
    }

    public final Task<TResult> addOnSuccessListener(Activity activity, OnSuccessListener<? super TResult> onSuccessListener) {
        zzf zze = new zze(TaskExecutors.MAIN_THREAD, onSuccessListener);
        this.zzbNH.zza(zze);
        zza.zzw(activity).zzb(zze);
        zzTK();
        return this;
    }

    public final Task<TResult> addOnSuccessListener(OnSuccessListener<? super TResult> onSuccessListener) {
        return addOnSuccessListener(TaskExecutors.MAIN_THREAD, (OnSuccessListener) onSuccessListener);
    }

    public final Task<TResult> addOnSuccessListener(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.zzbNH.zza(new zze(executor, onSuccessListener));
        zzTK();
        return this;
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        return continueWith(TaskExecutors.MAIN_THREAD, continuation);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWith(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        Task zzh = new zzh();
        this.zzbNH.zza(new zza(executor, continuation, zzh));
        zzTK();
        return zzh;
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return continueWithTask(TaskExecutors.MAIN_THREAD, continuation);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        Task zzh = new zzh();
        this.zzbNH.zza(new zzb(executor, continuation, zzh));
        zzTK();
        return zzh;
    }

    public final Exception getException() {
        Exception exception;
        synchronized (this.zzrJ) {
            exception = this.zzbNK;
        }
        return exception;
    }

    public final TResult getResult() {
        TResult tResult;
        synchronized (this.zzrJ) {
            zzTI();
            if (this.zzbNK != null) {
                throw new RuntimeExecutionException(this.zzbNK);
            }
            tResult = this.zzbNJ;
        }
        return tResult;
    }

    public final <X extends Throwable> TResult getResult(Class<X> cls) throws Throwable {
        TResult tResult;
        synchronized (this.zzrJ) {
            zzTI();
            if (cls.isInstance(this.zzbNK)) {
                throw ((Throwable) cls.cast(this.zzbNK));
            } else if (this.zzbNK != null) {
                throw new RuntimeExecutionException(this.zzbNK);
            } else {
                tResult = this.zzbNJ;
            }
        }
        return tResult;
    }

    public final boolean isComplete() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzbNI;
        }
        return z;
    }

    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzbNI && this.zzbNK == null;
        }
        return z;
    }

    public final void setException(Exception exception) {
        zzac.zzb((Object) exception, (Object) "Exception must not be null");
        synchronized (this.zzrJ) {
            zzTJ();
            this.zzbNI = true;
            this.zzbNK = exception;
        }
        this.zzbNH.zza((Task) this);
    }

    public final void setResult(TResult tResult) {
        synchronized (this.zzrJ) {
            zzTJ();
            this.zzbNI = true;
            this.zzbNJ = tResult;
        }
        this.zzbNH.zza((Task) this);
    }

    public final boolean trySetException(Exception exception) {
        zzac.zzb((Object) exception, (Object) "Exception must not be null");
        synchronized (this.zzrJ) {
            if (this.zzbNI) {
                return false;
            }
            this.zzbNI = true;
            this.zzbNK = exception;
            this.zzbNH.zza((Task) this);
            return true;
        }
    }

    public final boolean trySetResult(TResult tResult) {
        synchronized (this.zzrJ) {
            if (this.zzbNI) {
                return false;
            }
            this.zzbNI = true;
            this.zzbNJ = tResult;
            this.zzbNH.zza((Task) this);
            return true;
        }
    }
}
