package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.dynamic.zzf.zza;

public final class zzaj extends zzf<zzy> {
    private static final zzaj zzaGI = new zzaj();

    private zzaj() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zzd(Context context, int i, int i2) throws zza {
        return zzaGI.zze(context, i, i2);
    }

    private View zze(Context context, int i, int i2) throws zza {
        try {
            zzah zzah = new zzah(i, i2, null);
            return (View) zzd.zzF(((zzy) zzbl(context)).zza(zzd.zzA(context), zzah));
        } catch (Throwable e) {
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append("Could not get button with size ");
            stringBuilder.append(i);
            stringBuilder.append(" and color ");
            stringBuilder.append(i2);
            throw new zza(stringBuilder.toString(), e);
        }
    }

    public final zzy zzby(IBinder iBinder) {
        return zzy.zza.zzbx(iBinder);
    }

    public final /* synthetic */ Object zzc(IBinder iBinder) {
        return zzby(iBinder);
    }
}
