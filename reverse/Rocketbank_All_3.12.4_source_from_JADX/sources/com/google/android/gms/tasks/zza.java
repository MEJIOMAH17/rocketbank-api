package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

class zza<TResult, TContinuationResult> implements zzf<TResult> {
    private final Executor zzbFP;
    private final Continuation<TResult, TContinuationResult> zzbNs;
    private final zzh<TContinuationResult> zzbNt;

    public zza(Executor executor, Continuation<TResult, TContinuationResult> continuation, zzh<TContinuationResult> zzh) {
        this.zzbFP = executor;
        this.zzbNs = continuation;
        this.zzbNt = zzh;
    }

    public void cancel() {
        throw new UnsupportedOperationException();
    }

    public void onComplete(final Task<TResult> task) {
        this.zzbFP.execute(new Runnable(this) {
            final /* synthetic */ zza zzbNv;

            public void run() {
                try {
                    this.zzbNv.zzbNt.setResult(this.zzbNv.zzbNs.then(task));
                } catch (Exception e) {
                    if (e.getCause() instanceof Exception) {
                        this.zzbNv.zzbNt.setException((Exception) e.getCause());
                    } else {
                        this.zzbNv.zzbNt.setException(e);
                    }
                } catch (Exception e2) {
                    this.zzbNv.zzbNt.setException(e2);
                }
            }
        });
    }
}
