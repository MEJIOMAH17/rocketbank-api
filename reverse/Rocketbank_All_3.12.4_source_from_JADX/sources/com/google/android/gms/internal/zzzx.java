package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import android.util.Log;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.tasks.TaskCompletionSource;

public abstract class zzzx {
    public final int zzakD;

    private static abstract class zza extends zzzx {
        protected final TaskCompletionSource<Void> zzazE;

        public zza(int i, TaskCompletionSource<Void> taskCompletionSource) {
            super(i);
            this.zzazE = taskCompletionSource;
        }

        public void zza(zzaal zzaal, boolean z) {
        }

        public final void zza(com.google.android.gms.internal.zzaax.zza<?> zza) throws DeadObjectException {
            try {
                zzb(zza);
            } catch (RemoteException e) {
                zzz(zzzx.zza(e));
                throw e;
            } catch (RemoteException e2) {
                zzz(zzzx.zza(e2));
            }
        }

        protected abstract void zzb(com.google.android.gms.internal.zzaax.zza<?> zza) throws RemoteException;

        public void zzz(Status status) {
            this.zzazE.trySetException(new com.google.android.gms.common.api.zza(status));
        }
    }

    public static class zzb<A extends com.google.android.gms.internal.zzaad.zza<? extends Result, com.google.android.gms.common.api.Api.zzb>> extends zzzx {
        protected final A zzazF;

        public zzb(int i, A a) {
            super(i);
            this.zzazF = a;
        }

        public void zza(zzaal zzaal, boolean z) {
            zzaal.zza(this.zzazF, z);
        }

        public void zza(com.google.android.gms.internal.zzaax.zza<?> zza) throws DeadObjectException {
            this.zzazF.zzb(zza.zzvU());
        }

        public void zzz(Status status) {
            this.zzazF.zzB(status);
        }
    }

    public static final class zzd<TResult> extends zzzx {
        private final TaskCompletionSource<TResult> zzazE;
        private final zzabv<com.google.android.gms.common.api.Api.zzb, TResult> zzazI;
        private final zzabs zzazJ;

        public zzd(int i, zzabv<com.google.android.gms.common.api.Api.zzb, TResult> zzabv, TaskCompletionSource<TResult> taskCompletionSource, zzabs zzabs) {
            super(i);
            this.zzazE = taskCompletionSource;
            this.zzazI = zzabv;
            this.zzazJ = zzabs;
        }

        public final void zza(zzaal zzaal, boolean z) {
            zzaal.zza(this.zzazE, z);
        }

        public final void zza(com.google.android.gms.internal.zzaax.zza<?> zza) throws DeadObjectException {
            try {
                this.zzazI.zza(zza.zzvU(), this.zzazE);
            } catch (DeadObjectException e) {
                throw e;
            } catch (RemoteException e2) {
                zzz(zzzx.zza(e2));
            }
        }

        public final void zzz(Status status) {
            this.zzazE.trySetException(this.zzazJ.zzA(status));
        }
    }

    public static final class zzc extends zza {
        public final zzabm<com.google.android.gms.common.api.Api.zzb, ?> zzazG;
        public final zzabz<com.google.android.gms.common.api.Api.zzb, ?> zzazH;

        public zzc(zzabn zzabn, TaskCompletionSource<Void> taskCompletionSource) {
            super(3, taskCompletionSource);
            this.zzazG = zzabn.zzazG;
            this.zzazH = zzabn.zzazH;
        }

        public final /* bridge */ /* synthetic */ void zza(zzaal zzaal, boolean z) {
            super.zza(zzaal, z);
        }

        public final void zzb(com.google.android.gms.internal.zzaax.zza<?> zza) throws RemoteException {
            if (this.zzazG.zzwW() != null) {
                zza.zzwI().put(this.zzazG.zzwW(), new zzabn(this.zzazG, this.zzazH));
            }
        }

        public final /* bridge */ /* synthetic */ void zzz(Status status) {
            super.zzz(status);
        }
    }

    public static final class zze extends zza {
        public final com.google.android.gms.internal.zzabh.zzb<?> zzazK;

        public zze(com.google.android.gms.internal.zzabh.zzb<?> zzb, TaskCompletionSource<Void> taskCompletionSource) {
            super(4, taskCompletionSource);
            this.zzazK = zzb;
        }

        public final /* bridge */ /* synthetic */ void zza(zzaal zzaal, boolean z) {
            super.zza(zzaal, z);
        }

        public final void zzb(com.google.android.gms.internal.zzaax.zza<?> zza) throws RemoteException {
            zzabn zzabn = (zzabn) zza.zzwI().remove(this.zzazK);
            if (zzabn != null) {
                zzabn.zzazG.zzwX();
                return;
            }
            Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
            this.zzazE.trySetException(new com.google.android.gms.common.api.zza(Status.zzazz));
        }

        public final /* bridge */ /* synthetic */ void zzz(Status status) {
            super.zzz(status);
        }
    }

    public zzzx(int i) {
        this.zzakD = i;
    }

    private static Status zza(RemoteException remoteException) {
        StringBuilder stringBuilder = new StringBuilder();
        if (zzt.zzzh() && (remoteException instanceof TransactionTooLargeException)) {
            stringBuilder.append("TransactionTooLargeException: ");
        }
        stringBuilder.append(remoteException.getLocalizedMessage());
        return new Status(8, stringBuilder.toString());
    }

    public abstract void zza(zzaal zzaal, boolean z);

    public abstract void zza(com.google.android.gms.internal.zzaax.zza<?> zza) throws DeadObjectException;

    public abstract void zzz(Status status);
}
