package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.internal.zzn;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.internal.zzbaq.zza;

public class zzbat extends zzl<zzbaq> implements zzbai {
    private final zzg zzaAL;
    private Integer zzaFD;
    private final Bundle zzbEk;
    private final boolean zzbEv;

    public zzbat(Context context, Looper looper, boolean z, zzg zzg, Bundle bundle, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, zzg, connectionCallbacks, onConnectionFailedListener);
        this.zzbEv = z;
        this.zzaAL = zzg;
        this.zzbEk = bundle;
        this.zzaFD = zzg.zzxS();
    }

    public zzbat(Context context, Looper looper, boolean z, zzg zzg, zzbaj zzbaj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, z, zzg, zza(zzg), connectionCallbacks, onConnectionFailedListener);
    }

    private zzad zzPU() {
        Account zzxB = this.zzaAL.zzxB();
        return new zzad(zzxB, this.zzaFD.intValue(), "<<default account>>".equals(zzxB.name) ? zzn.zzas(getContext()).zzrB() : null);
    }

    public static Bundle zza(zzg zzg) {
        zzbaj zzxR = zzg.zzxR();
        Integer zzxS = zzg.zzxS();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", zzg.getAccount());
        if (zzxS != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", zzxS.intValue());
        }
        if (zzxR != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzxR.zzPM());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzxR.isIdTokenRequested());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzxR.getServerClientId());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzxR.zzrl());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", zzxR.zzrm());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", zzxR.zzPN());
            if (zzxR.zzPO() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", zzxR.zzPO().longValue());
            }
            if (zzxR.zzPP() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", zzxR.zzPP().longValue());
            }
        }
        return bundle;
    }

    public void connect() {
        zza(new zzi(this));
    }

    public void zzPL() {
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
        r2 = this;
        r0 = r2.zzxD();	 Catch:{ RemoteException -> 0x0010 }
        r0 = (com.google.android.gms.internal.zzbaq) r0;	 Catch:{ RemoteException -> 0x0010 }
        r1 = r2.zzaFD;	 Catch:{ RemoteException -> 0x0010 }
        r1 = r1.intValue();	 Catch:{ RemoteException -> 0x0010 }
        r0.zznv(r1);	 Catch:{ RemoteException -> 0x0010 }
        return;
    L_0x0010:
        r0 = "SignInClientImpl";
        r1 = "Remote service probably died when clearAccountFromSessionStore is called";
        android.util.Log.w(r0, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbat.zzPL():void");
    }

    public void zza(com.google.android.gms.common.internal.zzr r3, boolean r4) {
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
        r2 = this;
        r0 = r2.zzxD();	 Catch:{ RemoteException -> 0x0010 }
        r0 = (com.google.android.gms.internal.zzbaq) r0;	 Catch:{ RemoteException -> 0x0010 }
        r1 = r2.zzaFD;	 Catch:{ RemoteException -> 0x0010 }
        r1 = r1.intValue();	 Catch:{ RemoteException -> 0x0010 }
        r0.zza(r3, r1, r4);	 Catch:{ RemoteException -> 0x0010 }
        return;
    L_0x0010:
        r3 = "SignInClientImpl";
        r4 = "Remote service probably died when saveDefaultAccount is called";
        android.util.Log.w(r3, r4);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbat.zza(com.google.android.gms.common.internal.zzr, boolean):void");
    }

    public void zza(com.google.android.gms.internal.zzbap r4) {
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
        r3 = this;
        r0 = "Expecting a valid ISignInCallbacks";
        com.google.android.gms.common.internal.zzac.zzb(r4, r0);
        r0 = r3.zzPU();	 Catch:{ RemoteException -> 0x0018 }
        r1 = r3.zzxD();	 Catch:{ RemoteException -> 0x0018 }
        r1 = (com.google.android.gms.internal.zzbaq) r1;	 Catch:{ RemoteException -> 0x0018 }
        r2 = new com.google.android.gms.internal.zzbau;	 Catch:{ RemoteException -> 0x0018 }
        r2.<init>(r0);	 Catch:{ RemoteException -> 0x0018 }
        r1.zza(r2, r4);	 Catch:{ RemoteException -> 0x0018 }
        return;
    L_0x0018:
        r0 = move-exception;
        r1 = "SignInClientImpl";
        r2 = "Remote service probably died when signIn is called";
        android.util.Log.w(r1, r2);
        r1 = new com.google.android.gms.internal.zzbaw;	 Catch:{ RemoteException -> 0x002b }
        r2 = 8;	 Catch:{ RemoteException -> 0x002b }
        r1.<init>(r2);	 Catch:{ RemoteException -> 0x002b }
        r4.zzb(r1);	 Catch:{ RemoteException -> 0x002b }
        return;
    L_0x002b:
        r4 = "SignInClientImpl";
        r1 = "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.";
        android.util.Log.wtf(r4, r1, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbat.zza(com.google.android.gms.internal.zzbap):void");
    }

    protected String zzeA() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    protected String zzez() {
        return "com.google.android.gms.signin.service.START";
    }

    protected zzbaq zzfg(IBinder iBinder) {
        return zza.zzff(iBinder);
    }

    protected /* synthetic */ IInterface zzh(IBinder iBinder) {
        return zzfg(iBinder);
    }

    protected Bundle zzqL() {
        if (!getContext().getPackageName().equals(this.zzaAL.zzxO())) {
            this.zzbEk.putString("com.google.android.gms.signin.internal.realClientPackageName", this.zzaAL.zzxO());
        }
        return this.zzbEk;
    }

    public boolean zzrd() {
        return this.zzbEv;
    }
}
