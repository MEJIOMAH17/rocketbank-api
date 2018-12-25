package com.google.android.gms.internal;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class zzbth {
    private static final AtomicReference<zzbth> zzbWP = new AtomicReference();

    zzbth(Context context) {
    }

    public static zzbth zzaca() {
        return (zzbth) zzbWP.get();
    }

    public static zzbth zzcx(Context context) {
        zzbWP.compareAndSet(null, new zzbth(context));
        return (zzbth) zzbWP.get();
    }

    public Set<String> zzacb() {
        return Collections.emptySet();
    }

    public void zzg(FirebaseApp firebaseApp) {
    }

    public FirebaseOptions zzjC(String str) {
        return null;
    }
}
