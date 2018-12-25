package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzf.zzb;
import com.google.android.gms.common.internal.zzf.zzc;
import com.google.android.gms.common.zze;
import com.google.android.gms.measurement.AppMeasurement.zzf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class zzaul extends zzauh {
    private final zza zzbvD;
    private zzatt zzbvE;
    private Boolean zzbvF;
    private final zzatk zzbvG;
    private final zzauo zzbvH;
    private final List<Runnable> zzbvI = new ArrayList();
    private final zzatk zzbvJ;

    /* renamed from: com.google.android.gms.internal.zzaul$3 */
    class C06023 implements Runnable {
        final /* synthetic */ zzaul zzbvK;

        C06023(zzaul zzaul) {
            this.zzbvK = zzaul;
        }

        public void run() {
            zzatt zzd = this.zzbvK.zzbvE;
            if (zzd == null) {
                this.zzbvK.zzKl().zzLZ().log("Discarding data. Failed to send app launch");
                return;
            }
            try {
                zzd.zza(this.zzbvK.zzKb().zzfD(this.zzbvK.zzKl().zzMg()));
                this.zzbvK.zza(zzd, null);
                this.zzbvK.zzoo();
            } catch (RemoteException e) {
                this.zzbvK.zzKl().zzLZ().zzj("Failed to send app launch to the service", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaul$6 */
    class C06046 implements Runnable {
        final /* synthetic */ zzaul zzbvK;

        C06046(zzaul zzaul) {
            this.zzbvK = zzaul;
        }

        public void run() {
            zzatt zzd = this.zzbvK.zzbvE;
            if (zzd == null) {
                this.zzbvK.zzKl().zzLZ().log("Failed to send measurementEnabled to service");
                return;
            }
            try {
                zzd.zzb(this.zzbvK.zzKb().zzfD(this.zzbvK.zzKl().zzMg()));
                this.zzbvK.zzoo();
            } catch (RemoteException e) {
                this.zzbvK.zzKl().zzLZ().zzj("Failed to send measurementEnabled to the service", e);
            }
        }
    }

    protected class zza implements ServiceConnection, zzb, zzc {
        final /* synthetic */ zzaul zzbvK;
        private volatile boolean zzbvR;
        private volatile zzatw zzbvS;

        /* renamed from: com.google.android.gms.internal.zzaul$zza$4 */
        class C06114 implements Runnable {
            final /* synthetic */ zza zzbvU;

            C06114(zza zza) {
                this.zzbvU = zza;
            }

            public void run() {
                zzaul zzaul = this.zzbvU.zzbvK;
                Context context = this.zzbvU.zzbvK.getContext();
                this.zzbvU.zzbvK.zzKn().zzLh();
                zzaul.onServiceDisconnected(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
            }
        }

        /* renamed from: com.google.android.gms.internal.zzaul$zza$5 */
        class C06125 implements Runnable {
            final /* synthetic */ zza zzbvU;

            C06125(zza zza) {
                this.zzbvU = zza;
            }

            public void run() {
                this.zzbvU.zzbvK.zzbvE = null;
                this.zzbvU.zzbvK.zzNc();
            }
        }

        protected zza(zzaul zzaul) {
            this.zzbvK = zzaul;
        }

        public void onConnected(android.os.Bundle r4) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
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
            r4 = "MeasurementServiceConnection.onConnected";
            com.google.android.gms.common.internal.zzac.zzdj(r4);
            monitor-enter(r3);
            r4 = 0;
            r0 = r3.zzbvS;	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r0 = r0.zzxD();	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r0 = (com.google.android.gms.internal.zzatt) r0;	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r3.zzbvS = r4;	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r1 = r3.zzbvK;	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r1 = r1.zzKk();	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r2 = new com.google.android.gms.internal.zzaul$zza$3;	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r2.<init>(r3, r0);	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            r1.zzm(r2);	 Catch:{ DeadObjectException -> 0x0022, DeadObjectException -> 0x0022 }
            goto L_0x0027;
        L_0x0020:
            r4 = move-exception;
            goto L_0x0029;
        L_0x0022:
            r3.zzbvS = r4;	 Catch:{ all -> 0x0020 }
            r4 = 0;	 Catch:{ all -> 0x0020 }
            r3.zzbvR = r4;	 Catch:{ all -> 0x0020 }
        L_0x0027:
            monitor-exit(r3);	 Catch:{ all -> 0x0020 }
            return;	 Catch:{ all -> 0x0020 }
        L_0x0029:
            monitor-exit(r3);	 Catch:{ all -> 0x0020 }
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaul.zza.onConnected(android.os.Bundle):void");
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            zzac.zzdj("MeasurementServiceConnection.onConnectionFailed");
            zzatx zzMv = this.zzbvK.zzbqb.zzMv();
            if (zzMv != null) {
                zzMv.zzMb().zzj("Service connection failed", connectionResult);
            }
            synchronized (this) {
                this.zzbvR = false;
                this.zzbvS = null;
            }
            this.zzbvK.zzKk().zzm(new C06125(this));
        }

        public void onConnectionSuspended(int i) {
            zzac.zzdj("MeasurementServiceConnection.onConnectionSuspended");
            this.zzbvK.zzKl().zzMe().log("Service connection suspended");
            this.zzbvK.zzKk().zzm(new C06114(this));
        }

        public void onServiceConnected(android.content.ComponentName r4, android.os.IBinder r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
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
            r4 = "MeasurementServiceConnection.onServiceConnected";
            com.google.android.gms.common.internal.zzac.zzdj(r4);
            monitor-enter(r3);
            r4 = 0;
            if (r5 != 0) goto L_0x001e;
        L_0x0009:
            r3.zzbvR = r4;	 Catch:{ all -> 0x001c }
            r4 = r3.zzbvK;	 Catch:{ all -> 0x001c }
            r4 = r4.zzKl();	 Catch:{ all -> 0x001c }
            r4 = r4.zzLZ();	 Catch:{ all -> 0x001c }
            r5 = "Service connected with null binder";	 Catch:{ all -> 0x001c }
            r4.log(r5);	 Catch:{ all -> 0x001c }
            monitor-exit(r3);	 Catch:{ all -> 0x001c }
            return;
        L_0x001c:
            r4 = move-exception;
            goto L_0x0089;
        L_0x001e:
            r0 = 0;
            r1 = r5.getInterfaceDescriptor();	 Catch:{ RemoteException -> 0x0052 }
            r2 = "com.google.android.gms.measurement.internal.IMeasurementService";	 Catch:{ RemoteException -> 0x0052 }
            r2 = r2.equals(r1);	 Catch:{ RemoteException -> 0x0052 }
            if (r2 == 0) goto L_0x0042;	 Catch:{ RemoteException -> 0x0052 }
        L_0x002b:
            r5 = com.google.android.gms.internal.zzatt.zza.zzes(r5);	 Catch:{ RemoteException -> 0x0052 }
            r0 = r3.zzbvK;	 Catch:{ RemoteException -> 0x0040 }
            r0 = r0.zzKl();	 Catch:{ RemoteException -> 0x0040 }
            r0 = r0.zzMf();	 Catch:{ RemoteException -> 0x0040 }
            r1 = "Bound to IMeasurementService interface";	 Catch:{ RemoteException -> 0x0040 }
            r0.log(r1);	 Catch:{ RemoteException -> 0x0040 }
            r0 = r5;
            goto L_0x0061;
        L_0x0040:
            r0 = r5;
            goto L_0x0052;
        L_0x0042:
            r5 = r3.zzbvK;	 Catch:{ RemoteException -> 0x0052 }
            r5 = r5.zzKl();	 Catch:{ RemoteException -> 0x0052 }
            r5 = r5.zzLZ();	 Catch:{ RemoteException -> 0x0052 }
            r2 = "Got binder with a wrong descriptor";	 Catch:{ RemoteException -> 0x0052 }
            r5.zzj(r2, r1);	 Catch:{ RemoteException -> 0x0052 }
            goto L_0x0061;
        L_0x0052:
            r5 = r3.zzbvK;	 Catch:{ all -> 0x001c }
            r5 = r5.zzKl();	 Catch:{ all -> 0x001c }
            r5 = r5.zzLZ();	 Catch:{ all -> 0x001c }
            r1 = "Service connect failed to get IMeasurementService";	 Catch:{ all -> 0x001c }
            r5.log(r1);	 Catch:{ all -> 0x001c }
        L_0x0061:
            if (r0 != 0) goto L_0x0079;	 Catch:{ all -> 0x001c }
        L_0x0063:
            r3.zzbvR = r4;	 Catch:{ all -> 0x001c }
            r4 = com.google.android.gms.common.stats.zza.zzyJ();	 Catch:{ IllegalArgumentException -> 0x0087 }
            r5 = r3.zzbvK;	 Catch:{ IllegalArgumentException -> 0x0087 }
            r5 = r5.getContext();	 Catch:{ IllegalArgumentException -> 0x0087 }
            r0 = r3.zzbvK;	 Catch:{ IllegalArgumentException -> 0x0087 }
            r0 = r0.zzbvD;	 Catch:{ IllegalArgumentException -> 0x0087 }
            r4.zza(r5, r0);	 Catch:{ IllegalArgumentException -> 0x0087 }
            goto L_0x0087;
        L_0x0079:
            r4 = r3.zzbvK;	 Catch:{ all -> 0x001c }
            r4 = r4.zzKk();	 Catch:{ all -> 0x001c }
            r5 = new com.google.android.gms.internal.zzaul$zza$1;	 Catch:{ all -> 0x001c }
            r5.<init>(r3, r0);	 Catch:{ all -> 0x001c }
            r4.zzm(r5);	 Catch:{ all -> 0x001c }
        L_0x0087:
            monitor-exit(r3);	 Catch:{ all -> 0x001c }
            return;	 Catch:{ all -> 0x001c }
        L_0x0089:
            monitor-exit(r3);	 Catch:{ all -> 0x001c }
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaul.zza.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
        }

        public void onServiceDisconnected(final ComponentName componentName) {
            zzac.zzdj("MeasurementServiceConnection.onServiceDisconnected");
            this.zzbvK.zzKl().zzMe().log("Service disconnected");
            this.zzbvK.zzKk().zzm(new Runnable(this) {
                final /* synthetic */ zza zzbvU;

                public void run() {
                    this.zzbvU.zzbvK.onServiceDisconnected(componentName);
                }
            });
        }

        public void zzNd() {
            this.zzbvK.zzmR();
            Context context = this.zzbvK.getContext();
            synchronized (this) {
                if (this.zzbvR) {
                    this.zzbvK.zzKl().zzMf().log("Connection attempt already in progress");
                } else if (this.zzbvS != null) {
                    this.zzbvK.zzKl().zzMf().log("Already awaiting connection attempt");
                } else {
                    this.zzbvS = new zzatw(context, Looper.getMainLooper(), this, this);
                    this.zzbvK.zzKl().zzMf().log("Connecting to remote service");
                    this.zzbvR = true;
                    this.zzbvS.zzxz();
                }
            }
        }

        public void zzz(Intent intent) {
            this.zzbvK.zzmR();
            Context context = this.zzbvK.getContext();
            com.google.android.gms.common.stats.zza zzyJ = com.google.android.gms.common.stats.zza.zzyJ();
            synchronized (this) {
                if (this.zzbvR) {
                    this.zzbvK.zzKl().zzMf().log("Connection attempt already in progress");
                    return;
                }
                this.zzbvR = true;
                zzyJ.zza(context, intent, this.zzbvK.zzbvD, 129);
            }
        }
    }

    protected zzaul(zzaue zzaue) {
        super(zzaue);
        this.zzbvH = new zzauo(zzaue.zznR());
        this.zzbvD = new zza(this);
        this.zzbvG = new zzatk(this, zzaue) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                this.zzbvK.zzop();
            }
        };
        this.zzbvJ = new zzatk(this, zzaue) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                this.zzbvK.zzKl().zzMb().log("Tasks have been queued for a long time");
            }
        };
    }

    private void onServiceDisconnected(ComponentName componentName) {
        zzmR();
        if (this.zzbvE != null) {
            this.zzbvE = null;
            zzKl().zzMf().zzj("Disconnected from device MeasurementService", componentName);
            zzNb();
        }
    }

    private boolean zzMZ() {
        zzKn().zzLh();
        List queryIntentServices = getContext().getPackageManager().queryIntentServices(new Intent().setClassName(getContext(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        return queryIntentServices != null && queryIntentServices.size() > 0;
    }

    private void zzNb() {
        zzmR();
        zzoD();
    }

    private void zzNc() {
        zzmR();
        zzKl().zzMf().zzj("Processing queued up service tasks", Integer.valueOf(this.zzbvI.size()));
        for (Runnable zzm : this.zzbvI) {
            zzKk().zzm(zzm);
        }
        this.zzbvI.clear();
        this.zzbvJ.cancel();
    }

    private void zzo(Runnable runnable) throws IllegalStateException {
        zzmR();
        if (isConnected()) {
            runnable.run();
        } else if (((long) this.zzbvI.size()) >= zzKn().zzLn()) {
            zzKl().zzLZ().log("Discarding data. Max runnable queue size reached");
        } else {
            this.zzbvI.add(runnable);
            this.zzbvJ.zzy(60000);
            zzoD();
        }
    }

    private void zzoo() {
        zzmR();
        this.zzbvH.start();
        this.zzbvG.zzy(zzKn().zzpq());
    }

    private void zzop() {
        zzmR();
        if (isConnected()) {
            zzKl().zzMf().log("Inactivity, disconnecting from the service");
            disconnect();
        }
    }

    public void disconnect() {
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
        r3.zzmR();
        r3.zzob();
        r0 = com.google.android.gms.common.stats.zza.zzyJ();	 Catch:{ IllegalStateException -> 0x0013, IllegalStateException -> 0x0013 }
        r1 = r3.getContext();	 Catch:{ IllegalStateException -> 0x0013, IllegalStateException -> 0x0013 }
        r2 = r3.zzbvD;	 Catch:{ IllegalStateException -> 0x0013, IllegalStateException -> 0x0013 }
        r0.zza(r1, r2);	 Catch:{ IllegalStateException -> 0x0013, IllegalStateException -> 0x0013 }
    L_0x0013:
        r0 = 0;
        r3.zzbvE = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaul.disconnect():void");
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public boolean isConnected() {
        zzmR();
        zzob();
        return this.zzbvE != null;
    }

    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    protected void zzMT() {
        zzmR();
        zzob();
        zzo(new C06023(this));
    }

    protected void zzMY() {
        zzmR();
        zzob();
        zzo(new C06046(this));
    }

    protected boolean zzNa() {
        com.google.android.gms.internal.zzatx.zza zzMf;
        String str;
        zzmR();
        zzob();
        zzKn().zzLh();
        zzKl().zzMf().log("Checking service availability");
        int isGooglePlayServicesAvailable = zze.zzuY().isGooglePlayServicesAvailable(getContext());
        if (isGooglePlayServicesAvailable != 9) {
            if (isGooglePlayServicesAvailable != 18) {
                switch (isGooglePlayServicesAvailable) {
                    case 0:
                        zzMf = zzKl().zzMf();
                        str = "Service available";
                        break;
                    case 1:
                        zzMf = zzKl().zzMf();
                        str = "Service missing";
                        break;
                    case 2:
                        zzMf = zzKl().zzMe();
                        str = "Service container out of date";
                        break;
                    case 3:
                        zzMf = zzKl().zzMb();
                        str = "Service disabled";
                        break;
                    default:
                        return false;
                }
            }
            zzMf = zzKl().zzMb();
            str = "Service updating";
            zzMf.log(str);
            return true;
        }
        zzMf = zzKl().zzMb();
        str = "Service invalid";
        zzMf.log(str);
        return false;
    }

    protected void zza(zzatt zzatt) {
        zzmR();
        zzac.zzw(zzatt);
        this.zzbvE = zzatt;
        zzoo();
        zzNc();
    }

    void zza(zzatt zzatt, com.google.android.gms.common.internal.safeparcel.zza zza) {
        Object e;
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str;
        zzmR();
        zzJW();
        zzob();
        int i = VERSION.SDK_INT;
        zzKn().zzLh();
        List<com.google.android.gms.common.internal.safeparcel.zza> arrayList = new ArrayList();
        zzKn().zzLq();
        int i2 = 100;
        for (int i3 = 0; i3 < 1001 && r4 == 100; i3++) {
            Object zzlD = zzKf().zzlD(100);
            if (zzlD != null) {
                arrayList.addAll(zzlD);
                i2 = zzlD.size();
            } else {
                i2 = 0;
            }
            if (zza != null && r4 < 100) {
                arrayList.add(zza);
            }
            for (com.google.android.gms.common.internal.safeparcel.zza zza2 : arrayList) {
                if (zza2 instanceof zzatq) {
                    try {
                        zzatt.zza((zzatq) zza2, zzKb().zzfD(zzKl().zzMg()));
                    } catch (RemoteException e2) {
                        e = e2;
                        zzLZ = zzKl().zzLZ();
                        str = "Failed to send event to the service";
                        zzLZ.zzj(str, e);
                    }
                } else if (zza2 instanceof zzauq) {
                    try {
                        zzatt.zza((zzauq) zza2, zzKb().zzfD(zzKl().zzMg()));
                    } catch (RemoteException e3) {
                        e = e3;
                        zzLZ = zzKl().zzLZ();
                        str = "Failed to send attribute to the service";
                        zzLZ.zzj(str, e);
                    }
                } else if (zza2 instanceof zzatg) {
                    try {
                        zzatt.zza((zzatg) zza2, zzKb().zzfD(zzKl().zzMg()));
                    } catch (RemoteException e4) {
                        e = e4;
                        zzLZ = zzKl().zzLZ();
                        str = "Failed to send conditional property to the service";
                        zzLZ.zzj(str, e);
                    }
                } else {
                    zzKl().zzLZ().log("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    protected void zza(final zzf zzf) {
        zzmR();
        zzob();
        zzo(new Runnable(this) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                zzatt zzd = this.zzbvK.zzbvE;
                if (zzd == null) {
                    this.zzbvK.zzKl().zzLZ().log("Failed to send current screen to service");
                    return;
                }
                try {
                    long j;
                    String str;
                    String str2;
                    String packageName;
                    if (zzf == null) {
                        j = 0;
                        str = null;
                        str2 = null;
                        packageName = this.zzbvK.getContext().getPackageName();
                    } else {
                        j = zzf.zzbqg;
                        str = zzf.zzbqe;
                        str2 = zzf.zzbqf;
                        packageName = this.zzbvK.getContext().getPackageName();
                    }
                    zzd.zza(j, str, str2, packageName);
                    this.zzbvK.zzoo();
                } catch (RemoteException e) {
                    this.zzbvK.zzKl().zzLZ().zzj("Failed to send current screen to the service", e);
                }
            }
        });
    }

    public void zza(final AtomicReference<String> atomicReference) {
        zzmR();
        zzob();
        zzo(new Runnable(this) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                synchronized (atomicReference) {
                    Object obj;
                    try {
                        zzatt zzd = this.zzbvK.zzbvE;
                        if (zzd == null) {
                            this.zzbvK.zzKl().zzLZ().log("Failed to get app instance id");
                            atomicReference.notify();
                            return;
                        }
                        atomicReference.set(zzd.zzc(this.zzbvK.zzKb().zzfD(null)));
                        this.zzbvK.zzoo();
                        obj = atomicReference;
                        obj.notify();
                    } catch (RemoteException e) {
                        try {
                            this.zzbvK.zzKl().zzLZ().zzj("Failed to get app instance id", e);
                            obj = atomicReference;
                        } catch (Throwable th) {
                            atomicReference.notify();
                        }
                    }
                }
            }
        });
    }

    protected void zza(AtomicReference<List<zzatg>> atomicReference, String str, String str2, String str3) {
        zzmR();
        zzob();
        final AtomicReference<List<zzatg>> atomicReference2 = atomicReference;
        final String str4 = str;
        final String str5 = str2;
        final String str6 = str3;
        zzo(new Runnable(this) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                synchronized (atomicReference2) {
                    Object zza;
                    try {
                        zzatt zzd = this.zzbvK.zzbvE;
                        if (zzd == null) {
                            this.zzbvK.zzKl().zzLZ().zzd("Failed to get conditional properties", zzatx.zzfE(str4), str5, str6);
                            atomicReference2.set(Collections.emptyList());
                            atomicReference2.notify();
                            return;
                        }
                        AtomicReference atomicReference;
                        if (TextUtils.isEmpty(str4)) {
                            atomicReference = atomicReference2;
                            zza = zzd.zza(str5, str6, this.zzbvK.zzKb().zzfD(this.zzbvK.zzKl().zzMg()));
                        } else {
                            atomicReference = atomicReference2;
                            zza = zzd.zzn(str4, str5, str6);
                        }
                        atomicReference.set(zza);
                        this.zzbvK.zzoo();
                        zza = atomicReference2;
                        zza.notify();
                    } catch (RemoteException e) {
                        try {
                            this.zzbvK.zzKl().zzLZ().zzd("Failed to get conditional properties", zzatx.zzfE(str4), str5, e);
                            atomicReference2.set(Collections.emptyList());
                            zza = atomicReference2;
                        } catch (Throwable th) {
                            atomicReference2.notify();
                        }
                    }
                }
            }
        });
    }

    protected void zza(AtomicReference<List<zzauq>> atomicReference, String str, String str2, String str3, boolean z) {
        zzmR();
        zzob();
        final AtomicReference<List<zzauq>> atomicReference2 = atomicReference;
        final String str4 = str;
        final String str5 = str2;
        final String str6 = str3;
        final boolean z2 = z;
        zzo(new Runnable(this) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                synchronized (atomicReference2) {
                    Object zza;
                    try {
                        zzatt zzd = this.zzbvK.zzbvE;
                        if (zzd == null) {
                            this.zzbvK.zzKl().zzLZ().zzd("Failed to get user properties", zzatx.zzfE(str4), str5, str6);
                            atomicReference2.set(Collections.emptyList());
                            atomicReference2.notify();
                            return;
                        }
                        AtomicReference atomicReference;
                        if (TextUtils.isEmpty(str4)) {
                            atomicReference = atomicReference2;
                            zza = zzd.zza(str5, str6, z2, this.zzbvK.zzKb().zzfD(this.zzbvK.zzKl().zzMg()));
                        } else {
                            atomicReference = atomicReference2;
                            zza = zzd.zza(str4, str5, str6, z2);
                        }
                        atomicReference.set(zza);
                        this.zzbvK.zzoo();
                        zza = atomicReference2;
                        zza.notify();
                    } catch (RemoteException e) {
                        try {
                            this.zzbvK.zzKl().zzLZ().zzd("Failed to get user properties", zzatx.zzfE(str4), str5, e);
                            atomicReference2.set(Collections.emptyList());
                            zza = atomicReference2;
                        } catch (Throwable th) {
                            atomicReference2.notify();
                        }
                    }
                }
            }
        });
    }

    protected void zza(final AtomicReference<List<zzauq>> atomicReference, final boolean z) {
        zzmR();
        zzob();
        zzo(new Runnable(this) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                synchronized (atomicReference) {
                    Object obj;
                    try {
                        zzatt zzd = this.zzbvK.zzbvE;
                        if (zzd == null) {
                            this.zzbvK.zzKl().zzLZ().log("Failed to get user properties");
                            atomicReference.notify();
                            return;
                        }
                        atomicReference.set(zzd.zza(this.zzbvK.zzKb().zzfD(null), z));
                        this.zzbvK.zzoo();
                        obj = atomicReference;
                        obj.notify();
                    } catch (RemoteException e) {
                        try {
                            this.zzbvK.zzKl().zzLZ().zzj("Failed to get user properties", e);
                            obj = atomicReference;
                        } catch (Throwable th) {
                            atomicReference.notify();
                        }
                    }
                }
            }
        });
    }

    protected void zzb(final zzauq zzauq) {
        zzmR();
        zzob();
        int i = VERSION.SDK_INT;
        zzKn().zzLh();
        final boolean zza = zzKf().zza(zzauq);
        zzo(new Runnable(this) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                zzatt zzd = this.zzbvK.zzbvE;
                if (zzd == null) {
                    this.zzbvK.zzKl().zzLZ().log("Discarding data. Failed to set user attribute");
                    return;
                }
                this.zzbvK.zza(zzd, zza ? null : zzauq);
                this.zzbvK.zzoo();
            }
        });
    }

    protected void zzc(zzatq zzatq, String str) {
        zzac.zzw(zzatq);
        zzmR();
        zzob();
        int i = VERSION.SDK_INT;
        zzKn().zzLh();
        final boolean zza = zzKf().zza(zzatq);
        final zzatq zzatq2 = zzatq;
        final String str2 = str;
        zzo(new Runnable(this, true) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                zzatt zzd = this.zzbvK.zzbvE;
                if (zzd == null) {
                    this.zzbvK.zzKl().zzLZ().log("Discarding data. Failed to send event to service");
                    return;
                }
                if (true) {
                    this.zzbvK.zza(zzd, zza ? null : zzatq2);
                } else {
                    try {
                        if (TextUtils.isEmpty(str2)) {
                            zzd.zza(zzatq2, this.zzbvK.zzKb().zzfD(this.zzbvK.zzKl().zzMg()));
                        } else {
                            zzd.zza(zzatq2, str2, this.zzbvK.zzKl().zzMg());
                        }
                    } catch (RemoteException e) {
                        this.zzbvK.zzKl().zzLZ().zzj("Failed to send event to the service", e);
                    }
                }
                this.zzbvK.zzoo();
            }
        });
    }

    protected void zzf(zzatg zzatg) {
        zzac.zzw(zzatg);
        zzmR();
        zzob();
        zzKn().zzLh();
        final boolean zzc = zzKf().zzc(zzatg);
        final zzatg zzatg2 = new zzatg(zzatg);
        final zzatg zzatg3 = zzatg;
        zzo(new Runnable(this, true) {
            final /* synthetic */ zzaul zzbvK;

            public void run() {
                zzatt zzd = this.zzbvK.zzbvE;
                if (zzd == null) {
                    this.zzbvK.zzKl().zzLZ().log("Discarding data. Failed to send conditional user property to service");
                    return;
                }
                if (true) {
                    this.zzbvK.zza(zzd, zzc ? null : zzatg2);
                } else {
                    try {
                        if (TextUtils.isEmpty(zzatg3.packageName)) {
                            zzd.zza(zzatg2, this.zzbvK.zzKb().zzfD(this.zzbvK.zzKl().zzMg()));
                        } else {
                            zzd.zzb(zzatg2);
                        }
                    } catch (RemoteException e) {
                        this.zzbvK.zzKl().zzLZ().zzj("Failed to send conditional user property to the service", e);
                    }
                }
                this.zzbvK.zzoo();
            }
        });
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
    }

    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    void zzoD() {
        zzmR();
        zzob();
        if (!isConnected()) {
            if (this.zzbvF == null) {
                this.zzbvF = zzKm().zzMn();
                if (this.zzbvF == null) {
                    zzKl().zzMf().log("State of service unknown");
                    this.zzbvF = Boolean.valueOf(zzNa());
                    zzKm().zzaJ(this.zzbvF.booleanValue());
                }
            }
            if (this.zzbvF.booleanValue()) {
                zzKl().zzMf().log("Using measurement service");
                this.zzbvD.zzNd();
            } else if (zzMZ()) {
                zzKl().zzMf().log("Using local app measurement service");
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                Context context = getContext();
                zzKn().zzLh();
                intent.setComponent(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
                this.zzbvD.zzz(intent);
            } else {
                zzKl().zzLZ().log("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            }
        }
    }
}
