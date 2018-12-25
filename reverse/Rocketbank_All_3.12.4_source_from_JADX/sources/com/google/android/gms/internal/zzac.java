package com.google.android.gms.internal;

import com.google.android.gms.internal.zzn.zza;
import com.google.android.gms.internal.zzn.zzb;

public class zzac extends zzl<String> {
    private final zzb<String> zzaG;

    public zzac(int i, String str, zzb<String> zzb, zza zza) {
        super(i, str, zza);
        this.zzaG = zzb;
    }

    protected com.google.android.gms.internal.zzn<java.lang.String> zza(com.google.android.gms.internal.zzj r4) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = new java.lang.String;	 Catch:{ UnsupportedEncodingException -> 0x000e }
        r1 = r4.data;	 Catch:{ UnsupportedEncodingException -> 0x000e }
        r2 = r4.zzz;	 Catch:{ UnsupportedEncodingException -> 0x000e }
        r2 = com.google.android.gms.internal.zzy.zza(r2);	 Catch:{ UnsupportedEncodingException -> 0x000e }
        r0.<init>(r1, r2);	 Catch:{ UnsupportedEncodingException -> 0x000e }
        goto L_0x0015;
    L_0x000e:
        r0 = new java.lang.String;
        r1 = r4.data;
        r0.<init>(r1);
    L_0x0015:
        r4 = com.google.android.gms.internal.zzy.zzb(r4);
        r4 = com.google.android.gms.internal.zzn.zza(r0, r4);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzac.zza(com.google.android.gms.internal.zzj):com.google.android.gms.internal.zzn<java.lang.String>");
    }

    protected /* synthetic */ void zza(Object obj) {
        zzi((String) obj);
    }

    protected void zzi(String str) {
        this.zzaG.zzb(str);
    }
}
