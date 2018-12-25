package com.google.android.gms.internal;

import android.content.Context;

public class zzad {
    public static zzm zza(Context context) {
        return zza(context, null);
    }

    public static com.google.android.gms.internal.zzm zza(android.content.Context r4, com.google.android.gms.internal.zzz r5) {
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
        r0 = new java.io.File;
        r1 = r4.getCacheDir();
        r2 = "volley";
        r0.<init>(r1, r2);
        r1 = "volley/0";
        r2 = r4.getPackageName();	 Catch:{ NameNotFoundException -> 0x0031 }
        r4 = r4.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0031 }
        r3 = 0;	 Catch:{ NameNotFoundException -> 0x0031 }
        r4 = r4.getPackageInfo(r2, r3);	 Catch:{ NameNotFoundException -> 0x0031 }
        r3 = new java.lang.StringBuilder;	 Catch:{ NameNotFoundException -> 0x0031 }
        r3.<init>();	 Catch:{ NameNotFoundException -> 0x0031 }
        r3.append(r2);	 Catch:{ NameNotFoundException -> 0x0031 }
        r2 = "/";	 Catch:{ NameNotFoundException -> 0x0031 }
        r3.append(r2);	 Catch:{ NameNotFoundException -> 0x0031 }
        r4 = r4.versionCode;	 Catch:{ NameNotFoundException -> 0x0031 }
        r3.append(r4);	 Catch:{ NameNotFoundException -> 0x0031 }
        r4 = r3.toString();	 Catch:{ NameNotFoundException -> 0x0031 }
        goto L_0x0032;
    L_0x0031:
        r4 = r1;
    L_0x0032:
        if (r5 != 0) goto L_0x0049;
    L_0x0034:
        r5 = android.os.Build.VERSION.SDK_INT;
        r1 = 9;
        if (r5 < r1) goto L_0x0040;
    L_0x003a:
        r5 = new com.google.android.gms.internal.zzaa;
        r5.<init>();
        goto L_0x0049;
    L_0x0040:
        r5 = new com.google.android.gms.internal.zzx;
        r4 = android.net.http.AndroidHttpClient.newInstance(r4);
        r5.<init>(r4);
    L_0x0049:
        r4 = new com.google.android.gms.internal.zzu;
        r4.<init>(r5);
        r5 = new com.google.android.gms.internal.zzm;
        r1 = new com.google.android.gms.internal.zzw;
        r1.<init>(r0);
        r5.<init>(r1, r4);
        r5.start();
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzad.zza(android.content.Context, com.google.android.gms.internal.zzz):com.google.android.gms.internal.zzm");
    }
}
