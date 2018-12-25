package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build.VERSION;
import java.util.concurrent.BlockingQueue;

public class zzh extends Thread {
    private final zzb zzi;
    private final zzo zzj;
    private volatile boolean zzk = false;
    private final BlockingQueue<zzl<?>> zzx;
    private final zzg zzy;

    public zzh(BlockingQueue<zzl<?>> blockingQueue, zzg zzg, zzb zzb, zzo zzo) {
        this.zzx = blockingQueue;
        this.zzy = zzg;
        this.zzi = zzb;
        this.zzj = zzo;
    }

    @TargetApi(14)
    private void zzb(zzl<?> zzl) {
        int i = VERSION.SDK_INT;
        TrafficStats.setThreadStatsTag(zzl.zzf());
    }

    private void zzb(zzl<?> zzl, zzs zzs) {
        this.zzj.zza((zzl) zzl, zzl.zzb(zzs));
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
        r9 = this;
        r0 = 10;
        android.os.Process.setThreadPriority(r0);
    L_0x0005:
        r0 = android.os.SystemClock.elapsedRealtime();
        r2 = r9.zzx;	 Catch:{ InterruptedException -> 0x0093 }
        r2 = r2.take();	 Catch:{ InterruptedException -> 0x0093 }
        r2 = (com.google.android.gms.internal.zzl) r2;	 Catch:{ InterruptedException -> 0x0093 }
        r3 = "network-queue-take";	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r2.zzc(r3);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r9.zzb(r2);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r3 = r9.zzy;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r3 = r3.zza(r2);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4 = "network-http-complete";	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r2.zzc(r4);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4 = r3.zzA;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        if (r4 == 0) goto L_0x0034;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
    L_0x0028:
        r4 = r2.zzs();	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        if (r4 == 0) goto L_0x0034;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
    L_0x002e:
        r3 = "not-modified";	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r2.zzd(r3);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        goto L_0x0005;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
    L_0x0034:
        r3 = r2.zza(r3);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4 = "network-parse-complete";	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r2.zzc(r4);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4 = r2.zzn();	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        if (r4 == 0) goto L_0x0057;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
    L_0x0043:
        r4 = r3.zzaf;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        if (r4 == 0) goto L_0x0057;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
    L_0x0047:
        r4 = r9.zzi;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r5 = r2.zzg();	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r6 = r3.zzaf;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4.zza(r5, r6);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4 = "network-cache-written";	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r2.zzc(r4);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
    L_0x0057:
        r2.zzr();	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4 = r9.zzj;	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        r4.zza(r2, r3);	 Catch:{ zzs -> 0x0084, Exception -> 0x0060 }
        goto L_0x0005;
    L_0x0060:
        r3 = move-exception;
        r4 = "Unhandled exception %s";
        r5 = 1;
        r5 = new java.lang.Object[r5];
        r6 = 0;
        r7 = r3.toString();
        r5[r6] = r7;
        com.google.android.gms.internal.zzt.zza(r3, r4, r5);
        r4 = new com.google.android.gms.internal.zzs;
        r4.<init>(r3);
        r5 = android.os.SystemClock.elapsedRealtime();
        r7 = r5 - r0;
        r4.zza(r7);
        r0 = r9.zzj;
        r0.zza(r2, r4);
        goto L_0x0005;
    L_0x0084:
        r3 = move-exception;
        r4 = android.os.SystemClock.elapsedRealtime();
        r6 = r4 - r0;
        r3.zza(r6);
        r9.zzb(r2, r3);
        goto L_0x0005;
    L_0x0093:
        r0 = r9.zzk;
        if (r0 == 0) goto L_0x0005;
    L_0x0097:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzh.run():void");
    }
}
