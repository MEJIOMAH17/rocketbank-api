package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.flags.impl.zza.zzb;
import com.google.android.gms.flags.impl.zza.zzc;
import com.google.android.gms.flags.impl.zza.zzd;
import com.google.android.gms.internal.zzaqd.zza;

@DynamiteApi
public class FlagProviderImpl extends zza {
    private SharedPreferences zzBd;
    private boolean zztZ = false;

    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return !this.zztZ ? z : zza.zza.zza(this.zzBd, str, Boolean.valueOf(z)).booleanValue();
    }

    public int getIntFlagValue(String str, int i, int i2) {
        return !this.zztZ ? i : zzb.zza(this.zzBd, str, Integer.valueOf(i)).intValue();
    }

    public long getLongFlagValue(String str, long j, int i) {
        return !this.zztZ ? j : zzc.zza(this.zzBd, str, Long.valueOf(j)).longValue();
    }

    public String getStringFlagValue(String str, String str2, int i) {
        return !this.zztZ ? str2 : zzd.zza(this.zzBd, str, str2);
    }

    public void init(com.google.android.gms.dynamic.IObjectWrapper r3) {
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
        r2 = this;
        r3 = com.google.android.gms.dynamic.zzd.zzF(r3);
        r3 = (android.content.Context) r3;
        r0 = r2.zztZ;
        if (r0 == 0) goto L_0x000b;
    L_0x000a:
        return;
    L_0x000b:
        r0 = "com.google.android.gms";	 Catch:{ NameNotFoundException -> 0x001b }
        r1 = 0;	 Catch:{ NameNotFoundException -> 0x001b }
        r3 = r3.createPackageContext(r0, r1);	 Catch:{ NameNotFoundException -> 0x001b }
        r3 = com.google.android.gms.flags.impl.zzb.zzn(r3);	 Catch:{ NameNotFoundException -> 0x001b }
        r2.zzBd = r3;	 Catch:{ NameNotFoundException -> 0x001b }
        r3 = 1;	 Catch:{ NameNotFoundException -> 0x001b }
        r2.zztZ = r3;	 Catch:{ NameNotFoundException -> 0x001b }
    L_0x001b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.flags.impl.FlagProviderImpl.init(com.google.android.gms.dynamic.IObjectWrapper):void");
    }
}
