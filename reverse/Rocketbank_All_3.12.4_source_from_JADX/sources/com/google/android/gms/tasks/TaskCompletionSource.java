package com.google.android.gms.tasks;

public class TaskCompletionSource<TResult> {
    private final zzh<TResult> zzbNF = new zzh();

    public Task<TResult> getTask() {
        return this.zzbNF;
    }

    public void setException(Exception exception) {
        this.zzbNF.setException(exception);
    }

    public void setResult(TResult tResult) {
        this.zzbNF.setResult(tResult);
    }

    public boolean trySetException(Exception exception) {
        return this.zzbNF.trySetException(exception);
    }

    public boolean trySetResult(TResult tResult) {
        return this.zzbNF.trySetResult(tResult);
    }
}
