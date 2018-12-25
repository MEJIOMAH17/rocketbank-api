package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zzf;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public class zzaby {
    public static final Status zzaDu = new Status(8, "The connection to Google Play services was lost");
    private static final zzaaf<?>[] zzaDv = new zzaaf[0];
    private final Map<zzc<?>, zze> zzaBQ;
    final Set<zzaaf<?>> zzaDw = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final zzb zzaDx = new C11941(this);

    interface zzb {
        void zzc(zzaaf<?> zzaaf);
    }

    /* renamed from: com.google.android.gms.internal.zzaby$1 */
    class C11941 implements zzb {
        final /* synthetic */ zzaby zzaDy;

        C11941(zzaby zzaby) {
            this.zzaDy = zzaby;
        }

        public void zzc(zzaaf<?> zzaaf) {
            this.zzaDy.zzaDw.remove(zzaaf);
            if (zzaaf.zzvr() != null) {
                null;
            }
        }
    }

    private static class zza implements DeathRecipient, zzb {
        private final WeakReference<zzf> zzaDA;
        private final WeakReference<IBinder> zzaDB;
        private final WeakReference<zzaaf<?>> zzaDz;

        private zza(zzaaf<?> zzaaf, zzf zzf, IBinder iBinder) {
            this.zzaDA = new WeakReference(zzf);
            this.zzaDz = new WeakReference(zzaaf);
            this.zzaDB = new WeakReference(iBinder);
        }

        private void zzxe() {
            zzaaf zzaaf = (zzaaf) this.zzaDz.get();
            zzf zzf = (zzf) this.zzaDA.get();
            if (!(zzf == null || zzaaf == null)) {
                zzf.remove(zzaaf.zzvr().intValue());
            }
            IBinder iBinder = (IBinder) this.zzaDB.get();
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        public void binderDied() {
            zzxe();
        }

        public void zzc(zzaaf<?> zzaaf) {
            zzxe();
        }
    }

    public zzaby(Map<zzc<?>, zze> map) {
        this.zzaBQ = map;
    }

    private static void zza(com.google.android.gms.internal.zzaaf<?> r2, com.google.android.gms.common.api.zzf r3, android.os.IBinder r4) {
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
        r0 = r2.isReady();
        r1 = 0;
        if (r0 == 0) goto L_0x0010;
    L_0x0007:
        r0 = new com.google.android.gms.internal.zzaby$zza;
        r0.<init>(r2, r3, r4);
        r2.zza(r0);
        return;
    L_0x0010:
        if (r4 == 0) goto L_0x0034;
    L_0x0012:
        r0 = r4.isBinderAlive();
        if (r0 == 0) goto L_0x0034;
    L_0x0018:
        r0 = new com.google.android.gms.internal.zzaby$zza;
        r0.<init>(r2, r3, r4);
        r2.zza(r0);
        r1 = 0;
        r4.linkToDeath(r0, r1);	 Catch:{ RemoteException -> 0x0025 }
        return;
    L_0x0025:
        r2.cancel();
        r2 = r2.zzvr();
        r2 = r2.intValue();
        r3.remove(r2);
        return;
    L_0x0034:
        r2.zza(r1);
        r2.cancel();
        r2 = r2.zzvr();
        r2 = r2.intValue();
        r3.remove(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaby.zza(com.google.android.gms.internal.zzaaf, com.google.android.gms.common.api.zzf, android.os.IBinder):void");
    }

    public void dump(PrintWriter printWriter) {
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.zzaDw.size());
    }

    public void release() {
        for (zzaaf zzaaf : (zzaaf[]) this.zzaDw.toArray(zzaDv)) {
            zzaaf.zza(null);
            if (zzaaf.zzvr() != null) {
                zzaaf.zzvH();
                zza(zzaaf, null, ((zze) this.zzaBQ.get(((com.google.android.gms.internal.zzaad.zza) zzaaf).zzvg())).zzvi());
            } else if (!zzaaf.zzvF()) {
            }
            this.zzaDw.remove(zzaaf);
        }
    }

    void zzb(zzaaf<? extends Result> zzaaf) {
        this.zzaDw.add(zzaaf);
        zzaaf.zza(this.zzaDx);
    }

    public void zzxd() {
        for (zzaaf zzC : (zzaaf[]) this.zzaDw.toArray(zzaDv)) {
            zzC.zzC(zzaDu);
        }
    }
}
