package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.zzac;

public class zzata {
    public static Looper zzJl() {
        zzac.zza(Looper.myLooper() != null, (Object) "Can't create handler inside thread that has not called Looper.prepare()");
        return Looper.myLooper();
    }

    public static Looper zzc(Looper looper) {
        return looper != null ? looper : zzJl();
    }
}
