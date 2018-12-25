package com.google.android.gms.internal;

public class zzaqf {
    public static <T> T zzb(java.util.concurrent.Callable<T> r2) {
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
        r0 = android.os.StrictMode.getThreadPolicy();
        r1 = android.os.StrictMode.ThreadPolicy.LAX;	 Catch:{ Throwable -> 0x0016, all -> 0x0011 }
        android.os.StrictMode.setThreadPolicy(r1);	 Catch:{ Throwable -> 0x0016, all -> 0x0011 }
        r2 = r2.call();	 Catch:{ Throwable -> 0x0016, all -> 0x0011 }
        android.os.StrictMode.setThreadPolicy(r0);
        return r2;
    L_0x0011:
        r2 = move-exception;
        android.os.StrictMode.setThreadPolicy(r0);
        throw r2;
    L_0x0016:
        android.os.StrictMode.setThreadPolicy(r0);
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaqf.zzb(java.util.concurrent.Callable):T");
    }
}
