package com.google.android.gms.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public class zzaal {
    private final Map<zzaaf<?>, Boolean> zzaBc = Collections.synchronizedMap(new WeakHashMap());
    private final Map<TaskCompletionSource<?>, Boolean> zzaBd = Collections.synchronizedMap(new WeakHashMap());

    private void zza(boolean z, Status status) {
        synchronized (this.zzaBc) {
            Map hashMap = new HashMap(this.zzaBc);
        }
        synchronized (this.zzaBd) {
            Map hashMap2 = new HashMap(this.zzaBd);
        }
        for (Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((zzaaf) entry.getKey()).zzC(status);
            }
        }
        for (Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new zza(status));
            }
        }
    }

    void zza(final zzaaf<? extends Result> zzaaf, boolean z) {
        this.zzaBc.put(zzaaf, Boolean.valueOf(z));
        zzaaf.zza(new PendingResult.zza(this) {
            final /* synthetic */ zzaal zzaBf;

            public void zzy(Status status) {
                this.zzaBf.zzaBc.remove(zzaaf);
            }
        });
    }

    <TResult> void zza(final TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.zzaBd.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener<TResult>(this) {
            final /* synthetic */ zzaal zzaBf;

            public void onComplete(Task<TResult> task) {
                this.zzaBf.zzaBd.remove(taskCompletionSource);
            }
        });
    }

    boolean zzvY() {
        if (this.zzaBc.isEmpty()) {
            if (this.zzaBd.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public void zzvZ() {
        zza(false, zzaax.zzaCn);
    }

    public void zzwa() {
        zza(true, zzaby.zzaDu);
    }
}
