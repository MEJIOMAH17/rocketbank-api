package com.google.android.gms.internal;

import java.io.IOException;

public abstract class zzbyj {
    protected volatile int zzcwL = -1;

    public static final <T extends zzbyj> T zza(T t, byte[] bArr) throws zzbyi {
        return zzb(t, bArr, 0, bArr.length);
    }

    public static final void zza(zzbyj zzbyj, byte[] bArr, int i, int i2) {
        try {
            zzbyc zzc = zzbyc.zzc(bArr, i, i2);
            zzbyj.zza(zzc);
            zzc.zzafo();
        } catch (Throwable e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends com.google.android.gms.internal.zzbyj> T zzb(T r0, byte[] r1, int r2, int r3) throws com.google.android.gms.internal.zzbyi {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r1 = com.google.android.gms.internal.zzbyb.zzb(r1, r2, r3);	 Catch:{ zzbyi -> 0x0014, IOException -> 0x000c }
        r0.zzb(r1);	 Catch:{ zzbyi -> 0x0014, IOException -> 0x000c }
        r2 = 0;	 Catch:{ zzbyi -> 0x0014, IOException -> 0x000c }
        r1.zzrc(r2);	 Catch:{ zzbyi -> 0x0014, IOException -> 0x000c }
        return r0;
    L_0x000c:
        r0 = new java.lang.RuntimeException;
        r1 = "Reading from a byte array threw an IOException (should never happen).";
        r0.<init>(r1);
        throw r0;
    L_0x0014:
        r0 = move-exception;
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbyj.zzb(com.google.android.gms.internal.zzbyj, byte[], int, int):T");
    }

    public static final byte[] zzf(zzbyj zzbyj) {
        byte[] bArr = new byte[zzbyj.zzafB()];
        zza(zzbyj, bArr, 0, bArr.length);
        return bArr;
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzafq();
    }

    public String toString() {
        return zzbyk.zzg(this);
    }

    public void zza(zzbyc zzbyc) throws IOException {
    }

    public int zzafA() {
        if (this.zzcwL < 0) {
            zzafB();
        }
        return this.zzcwL;
    }

    public int zzafB() {
        int zzu = zzu();
        this.zzcwL = zzu;
        return zzu;
    }

    public zzbyj zzafq() throws CloneNotSupportedException {
        return (zzbyj) super.clone();
    }

    public abstract zzbyj zzb(zzbyb zzbyb) throws IOException;

    protected int zzu() {
        return 0;
    }
}
