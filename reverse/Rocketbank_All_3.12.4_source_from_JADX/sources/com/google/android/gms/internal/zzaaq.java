package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzal;
import com.google.android.gms.internal.zzaad.zza;

public class zzaaq implements zzaau {
    private final zzaav zzaBk;
    private boolean zzaBl = false;

    public zzaaq(zzaav zzaav) {
        this.zzaBk = zzaav;
    }

    private <A extends zzb> void zze(zza<? extends Result, A> zza) throws DeadObjectException {
        this.zzaBk.zzaAw.zzaBW.zzb(zza);
        zzb zzc = this.zzaBk.zzaAw.zzc(zza.zzvg());
        if (zzc.isConnected() || !this.zzaBk.zzaCf.containsKey(zza.zzvg())) {
            if (zzc instanceof zzal) {
                zzc = ((zzal) zzc).zzyn();
            }
            zza.zzb(zzc);
            return;
        }
        zza.zzB(new Status(17));
    }

    public void begin() {
    }

    public void connect() {
        if (this.zzaBl) {
            this.zzaBl = false;
            this.zzaBk.zza(new zza(this, this) {
                final /* synthetic */ zzaaq zzaBm;

                public void zzwe() {
                    this.zzaBm.zzaBk.zzaCj.zzo(null);
                }
            });
        }
    }

    public boolean disconnect() {
        if (this.zzaBl) {
            return false;
        }
        if (this.zzaBk.zzaAw.zzwq()) {
            this.zzaBl = true;
            for (zzabx zzxb : this.zzaBk.zzaAw.zzaBV) {
                zzxb.zzxb();
            }
            return false;
        }
        this.zzaBk.zzh(null);
        return true;
    }

    public void onConnected(Bundle bundle) {
    }

    public void onConnectionSuspended(int i) {
        this.zzaBk.zzh(null);
        this.zzaBk.zzaCj.zzc(i, this.zzaBl);
    }

    public <A extends zzb, R extends Result, T extends zza<R, A>> T zza(T t) {
        return zzb(t);
    }

    public void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    public <A extends com.google.android.gms.common.api.Api.zzb, T extends com.google.android.gms.internal.zzaad.zza<? extends com.google.android.gms.common.api.Result, A>> T zzb(T r3) {
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
        r2.zze(r3);	 Catch:{ DeadObjectException -> 0x0004 }
        return r3;
    L_0x0004:
        r0 = r2.zzaBk;
        r1 = new com.google.android.gms.internal.zzaaq$1;
        r1.<init>(r2, r2);
        r0.zza(r1);
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaaq.zzb(com.google.android.gms.internal.zzaad$zza):T");
    }

    void zzwd() {
        if (this.zzaBl) {
            this.zzaBl = false;
            this.zzaBk.zzaAw.zzaBW.release();
            disconnect();
        }
    }
}
