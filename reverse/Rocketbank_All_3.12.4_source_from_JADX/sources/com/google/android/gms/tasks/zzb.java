package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

class zzb<TResult, TContinuationResult> implements OnFailureListener, OnSuccessListener<TContinuationResult>, zzf<TResult> {
    private final Executor zzbFP;
    private final Continuation<TResult, Task<TContinuationResult>> zzbNs;
    private final zzh<TContinuationResult> zzbNt;

    public zzb(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation, zzh<TContinuationResult> zzh) {
        this.zzbFP = executor;
        this.zzbNs = continuation;
        this.zzbNt = zzh;
    }

    public void cancel() {
        throw new UnsupportedOperationException();
    }

    public void onComplete(final Task<TResult> task) {
        this.zzbFP.execute(new Runnable(this) {
            final /* synthetic */ zzb zzbNw;

            public void run() {
                try {
                    Task task = (Task) this.zzbNw.zzbNs.then(task);
                    if (task == null) {
                        this.zzbNw.onFailure(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    task.addOnSuccessListener(TaskExecutors.zzbNG, this.zzbNw);
                    task.addOnFailureListener(TaskExecutors.zzbNG, this.zzbNw);
                } catch (Exception e) {
                    if (e.getCause() instanceof Exception) {
                        this.zzbNw.zzbNt.setException((Exception) e.getCause());
                    } else {
                        this.zzbNw.zzbNt.setException(e);
                    }
                } catch (Exception e2) {
                    this.zzbNw.zzbNt.setException(e2);
                }
            }
        });
    }

    public void onFailure(Exception exception) {
        this.zzbNt.setException(exception);
    }

    public void onSuccess(TContinuationResult tContinuationResult) {
        this.zzbNt.setResult(tContinuationResult);
    }
}
