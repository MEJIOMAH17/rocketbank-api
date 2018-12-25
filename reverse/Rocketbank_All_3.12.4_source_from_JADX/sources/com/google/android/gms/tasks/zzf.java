package com.google.android.gms.tasks;

interface zzf<TResult> {
    void cancel();

    void onComplete(Task<TResult> task);
}
