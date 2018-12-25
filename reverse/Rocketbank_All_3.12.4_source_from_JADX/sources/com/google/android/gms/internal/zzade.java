package com.google.android.gms.internal;

import android.content.Context;

public class zzade {
    private static Context zzaIy;
    private static Boolean zzaIz;

    public static synchronized boolean zzbg(android.content.Context r3) {
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
        r0 = com.google.android.gms.internal.zzade.class;
        monitor-enter(r0);
        r1 = r3.getApplicationContext();	 Catch:{ all -> 0x003a }
        r2 = zzaIy;	 Catch:{ all -> 0x003a }
        if (r2 == 0) goto L_0x001b;	 Catch:{ all -> 0x003a }
    L_0x000b:
        r2 = zzaIz;	 Catch:{ all -> 0x003a }
        if (r2 == 0) goto L_0x001b;	 Catch:{ all -> 0x003a }
    L_0x000f:
        r2 = zzaIy;	 Catch:{ all -> 0x003a }
        if (r2 != r1) goto L_0x001b;	 Catch:{ all -> 0x003a }
    L_0x0013:
        r3 = zzaIz;	 Catch:{ all -> 0x003a }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x003a }
        monitor-exit(r0);
        return r3;
    L_0x001b:
        r2 = 0;
        zzaIz = r2;	 Catch:{ all -> 0x003a }
        r3 = r3.getClassLoader();	 Catch:{ ClassNotFoundException -> 0x002c }
        r2 = "com.google.android.instantapps.supervisor.InstantAppsRuntime";	 Catch:{ ClassNotFoundException -> 0x002c }
        r3.loadClass(r2);	 Catch:{ ClassNotFoundException -> 0x002c }
        r3 = java.lang.Boolean.TRUE;	 Catch:{ ClassNotFoundException -> 0x002c }
        zzaIz = r3;	 Catch:{ ClassNotFoundException -> 0x002c }
        goto L_0x0030;
    L_0x002c:
        r3 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x003a }
        zzaIz = r3;	 Catch:{ all -> 0x003a }
    L_0x0030:
        zzaIy = r1;	 Catch:{ all -> 0x003a }
        r3 = zzaIz;	 Catch:{ all -> 0x003a }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x003a }
        monitor-exit(r0);
        return r3;
    L_0x003a:
        r3 = move-exception;
        monitor-exit(r0);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzade.zzbg(android.content.Context):boolean");
    }
}
