package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzac;

public final class zzabh<L> {
    private volatile L mListener;
    private final zza zzaCX;
    private final zzb<L> zzaCY;

    private final class zza extends Handler {
        final /* synthetic */ zzabh zzaCZ;

        public zza(zzabh zzabh, Looper looper) {
            this.zzaCZ = zzabh;
            super(looper);
        }

        public final void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            zzac.zzaw(z);
            this.zzaCZ.zzb((zzc) message.obj);
        }
    }

    public static final class zzb<L> {
        private final L mListener;
        private final String zzaDa;

        zzb(L l, String str) {
            this.mListener = l;
            this.zzaDa = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzb = (zzb) obj;
            return this.mListener == zzb.mListener && this.zzaDa.equals(zzb.zzaDa);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.mListener) * 31) + this.zzaDa.hashCode();
        }
    }

    public interface zzc<L> {
        void zzs(L l);

        void zzwc();
    }

    zzabh(Looper looper, L l, String str) {
        this.zzaCX = new zza(this, looper);
        this.mListener = zzac.zzb((Object) l, (Object) "Listener must not be null");
        this.zzaCY = new zzb(l, zzac.zzdr(str));
    }

    public final void clear() {
        this.mListener = null;
    }

    public final void zza(zzc<? super L> zzc) {
        zzac.zzb((Object) zzc, (Object) "Notifier must not be null");
        this.zzaCX.sendMessage(this.zzaCX.obtainMessage(1, zzc));
    }

    final void zzb(zzc<? super L> zzc) {
        Object obj = this.mListener;
        if (obj == null) {
            zzc.zzwc();
            return;
        }
        try {
            zzc.zzs(obj);
        } catch (RuntimeException e) {
            zzc.zzwc();
            throw e;
        }
    }

    public final boolean zztJ() {
        return this.mListener != null;
    }

    public final zzb<L> zzwW() {
        return this.zzaCY;
    }
}
