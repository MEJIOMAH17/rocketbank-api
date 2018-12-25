package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.zzaqd.zza;

public class zzaqc {
    private zzaqd zzaXk = null;
    private boolean zztZ = false;

    public void initialize(Context context) {
        synchronized (this) {
            if (this.zztZ) {
                return;
            }
            try {
                this.zzaXk = zza.asInterface(DynamiteModule.zza(context, DynamiteModule.zzaRY, ModuleDescriptor.MODULE_ID).zzdT("com.google.android.gms.flags.impl.FlagProviderImpl"));
                this.zzaXk.init(zzd.zzA(context));
                this.zztZ = true;
            } catch (Throwable e) {
                Log.w("FlagValueProvider", "Failed to initialize flags module.", e);
            }
        }
    }

    public <T> T zzb(zzaqa<T> zzaqa) {
        synchronized (this) {
            if (this.zztZ) {
                return zzaqa.zza(this.zzaXk);
            }
            T zzfr = zzaqa.zzfr();
            return zzfr;
        }
    }
}
