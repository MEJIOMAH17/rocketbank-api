package com.google.android.gms.internal;

import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.TransformedResult;
import java.util.concurrent.TimeUnit;

public final class zzabk<R extends Result> extends OptionalPendingResult<R> {
    private final zzaaf<R> zzaDb;

    public zzabk(PendingResult<R> pendingResult) {
        if (pendingResult instanceof zzaaf) {
            this.zzaDb = (zzaaf) pendingResult;
            return;
        }
        throw new IllegalArgumentException("OptionalPendingResult can only wrap PendingResults generated by an API call.");
    }

    public final R await() {
        return this.zzaDb.await();
    }

    public final R await(long j, TimeUnit timeUnit) {
        return this.zzaDb.await(j, timeUnit);
    }

    public final void cancel() {
        this.zzaDb.cancel();
    }

    public final R get() {
        if (isDone()) {
            return await(0, TimeUnit.MILLISECONDS);
        }
        throw new IllegalStateException("Result is not available. Check that isDone() returns true before calling get().");
    }

    public final boolean isCanceled() {
        return this.zzaDb.isCanceled();
    }

    public final boolean isDone() {
        return this.zzaDb.isReady();
    }

    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        this.zzaDb.setResultCallback(resultCallback);
    }

    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        this.zzaDb.setResultCallback(resultCallback, j, timeUnit);
    }

    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        return this.zzaDb.then(resultTransform);
    }

    public final void zza(zza zza) {
        this.zzaDb.zza(zza);
    }

    public final Integer zzvr() {
        return this.zzaDb.zzvr();
    }
}
