package com.google.android.gms.internal;

public final class zzaqe {
    private static zzaqe zzaXl;
    private final zzaqb zzaXm = new zzaqb();
    private final zzaqc zzaXn = new zzaqc();

    static {
        zza(new zzaqe());
    }

    private zzaqe() {
    }

    private static zzaqe zzDD() {
        zzaqe zzaqe;
        synchronized (zzaqe.class) {
            zzaqe = zzaXl;
        }
        return zzaqe;
    }

    public static zzaqb zzDE() {
        return zzDD().zzaXm;
    }

    public static zzaqc zzDF() {
        return zzDD().zzaXn;
    }

    protected static void zza(zzaqe zzaqe) {
        synchronized (zzaqe.class) {
            zzaXl = zzaqe;
        }
    }
}
