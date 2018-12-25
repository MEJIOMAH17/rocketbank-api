package com.google.android.gms.internal;

import java.util.concurrent.BlockingQueue;

public class zzc extends Thread {
    private static final boolean DEBUG = zzt.DEBUG;
    private final BlockingQueue<zzl<?>> zzg;
    private final BlockingQueue<zzl<?>> zzh;
    private final zzb zzi;
    private final zzo zzj;
    private volatile boolean zzk = false;

    public zzc(BlockingQueue<zzl<?>> blockingQueue, BlockingQueue<zzl<?>> blockingQueue2, zzb zzb, zzo zzo) {
        this.zzg = blockingQueue;
        this.zzh = blockingQueue2;
        this.zzi = zzb;
        this.zzj = zzo;
    }

    public void quit() {
        this.zzk = true;
        interrupt();
    }

    public void run() {
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
        r5 = this;
        r0 = DEBUG;
        if (r0 == 0) goto L_0x000c;
    L_0x0004:
        r0 = "start new dispatcher";
        r1 = 0;
        r1 = new java.lang.Object[r1];
        com.google.android.gms.internal.zzt.zza(r0, r1);
    L_0x000c:
        r0 = 10;
        android.os.Process.setThreadPriority(r0);
        r0 = r5.zzi;
        r0.initialize();
    L_0x0016:
        r0 = r5.zzg;	 Catch:{ InterruptedException -> 0x0082 }
        r0 = r0.take();	 Catch:{ InterruptedException -> 0x0082 }
        r0 = (com.google.android.gms.internal.zzl) r0;	 Catch:{ InterruptedException -> 0x0082 }
        r1 = "cache-queue-take";	 Catch:{ InterruptedException -> 0x0082 }
        r0.zzc(r1);	 Catch:{ InterruptedException -> 0x0082 }
        r1 = r5.zzi;	 Catch:{ InterruptedException -> 0x0082 }
        r2 = r0.zzg();	 Catch:{ InterruptedException -> 0x0082 }
        r1 = r1.zza(r2);	 Catch:{ InterruptedException -> 0x0082 }
        if (r1 != 0) goto L_0x003a;	 Catch:{ InterruptedException -> 0x0082 }
    L_0x002f:
        r1 = "cache-miss";	 Catch:{ InterruptedException -> 0x0082 }
        r0.zzc(r1);	 Catch:{ InterruptedException -> 0x0082 }
    L_0x0034:
        r1 = r5.zzh;	 Catch:{ InterruptedException -> 0x0082 }
        r1.put(r0);	 Catch:{ InterruptedException -> 0x0082 }
        goto L_0x0016;	 Catch:{ InterruptedException -> 0x0082 }
    L_0x003a:
        r2 = r1.zza();	 Catch:{ InterruptedException -> 0x0082 }
        if (r2 == 0) goto L_0x0049;	 Catch:{ InterruptedException -> 0x0082 }
    L_0x0040:
        r2 = "cache-hit-expired";	 Catch:{ InterruptedException -> 0x0082 }
        r0.zzc(r2);	 Catch:{ InterruptedException -> 0x0082 }
        r0.zza(r1);	 Catch:{ InterruptedException -> 0x0082 }
        goto L_0x0034;	 Catch:{ InterruptedException -> 0x0082 }
    L_0x0049:
        r2 = "cache-hit";	 Catch:{ InterruptedException -> 0x0082 }
        r0.zzc(r2);	 Catch:{ InterruptedException -> 0x0082 }
        r2 = new com.google.android.gms.internal.zzj;	 Catch:{ InterruptedException -> 0x0082 }
        r3 = r1.data;	 Catch:{ InterruptedException -> 0x0082 }
        r4 = r1.zzf;	 Catch:{ InterruptedException -> 0x0082 }
        r2.<init>(r3, r4);	 Catch:{ InterruptedException -> 0x0082 }
        r2 = r0.zza(r2);	 Catch:{ InterruptedException -> 0x0082 }
        r3 = "cache-hit-parsed";	 Catch:{ InterruptedException -> 0x0082 }
        r0.zzc(r3);	 Catch:{ InterruptedException -> 0x0082 }
        r3 = r1.zzb();	 Catch:{ InterruptedException -> 0x0082 }
        if (r3 != 0) goto L_0x006c;	 Catch:{ InterruptedException -> 0x0082 }
    L_0x0066:
        r1 = r5.zzj;	 Catch:{ InterruptedException -> 0x0082 }
        r1.zza(r0, r2);	 Catch:{ InterruptedException -> 0x0082 }
        goto L_0x0016;	 Catch:{ InterruptedException -> 0x0082 }
    L_0x006c:
        r3 = "cache-hit-refresh-needed";	 Catch:{ InterruptedException -> 0x0082 }
        r0.zzc(r3);	 Catch:{ InterruptedException -> 0x0082 }
        r0.zza(r1);	 Catch:{ InterruptedException -> 0x0082 }
        r1 = 1;	 Catch:{ InterruptedException -> 0x0082 }
        r2.zzah = r1;	 Catch:{ InterruptedException -> 0x0082 }
        r1 = r5.zzj;	 Catch:{ InterruptedException -> 0x0082 }
        r3 = new com.google.android.gms.internal.zzc$1;	 Catch:{ InterruptedException -> 0x0082 }
        r3.<init>(r5, r0);	 Catch:{ InterruptedException -> 0x0082 }
        r1.zza(r0, r2, r3);	 Catch:{ InterruptedException -> 0x0082 }
        goto L_0x0016;
    L_0x0082:
        r0 = r5.zzk;
        if (r0 == 0) goto L_0x0016;
    L_0x0086:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzc.run():void");
    }
}
