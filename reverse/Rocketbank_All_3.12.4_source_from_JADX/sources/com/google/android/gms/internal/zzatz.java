package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.zzac;

class zzatz extends BroadcastReceiver {
    static final String zzagv = "com.google.android.gms.internal.zzatz";
    private boolean zzagw;
    private boolean zzagx;
    private final zzaue zzbqb;

    zzatz(zzaue zzaue) {
        zzac.zzw(zzaue);
        this.zzbqb = zzaue;
    }

    private Context getContext() {
        return this.zzbqb.getContext();
    }

    private zzatx zzKl() {
        return this.zzbqb.zzKl();
    }

    public boolean isRegistered() {
        this.zzbqb.zzmR();
        return this.zzagw;
    }

    public void onReceive(Context context, Intent intent) {
        this.zzbqb.zzob();
        String action = intent.getAction();
        zzKl().zzMf().zzj("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            final boolean zzqa = this.zzbqb.zzMz().zzqa();
            if (this.zzagx != zzqa) {
                this.zzagx = zzqa;
                this.zzbqb.zzKk().zzm(new Runnable(this) {
                    final /* synthetic */ zzatz zzbsY;

                    public void run() {
                        this.zzbsY.zzbqb.zzV(zzqa);
                    }
                });
            }
            return;
        }
        zzKl().zzMb().zzj("NetworkBroadcastReceiver received unknown action", action);
    }

    public void unregister() {
        this.zzbqb.zzob();
        this.zzbqb.zzmR();
        if (isRegistered()) {
            zzKl().zzMf().log("Unregistering connectivity change receiver");
            this.zzagw = false;
            this.zzagx = false;
            try {
                getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                zzKl().zzLZ().zzj("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public void zzpX() {
        this.zzbqb.zzob();
        this.zzbqb.zzmR();
        if (!this.zzagw) {
            getContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.zzagx = this.zzbqb.zzMz().zzqa();
            zzKl().zzMf().zzj("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzagx));
            this.zzagw = true;
        }
    }
}
