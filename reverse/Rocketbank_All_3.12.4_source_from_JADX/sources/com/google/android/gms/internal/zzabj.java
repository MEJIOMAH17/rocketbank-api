package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

public class zzabj extends zzaae {
    private TaskCompletionSource<Void> zzazE = new TaskCompletionSource();

    private zzabj(zzabf zzabf) {
        super(zzabf);
        this.zzaCR.zza("GmsAvailabilityHelper", (zzabe) this);
    }

    public static zzabj zzu(Activity activity) {
        zzabf zzs = zzabe.zzs(activity);
        zzabj zzabj = (zzabj) zzs.zza("GmsAvailabilityHelper", zzabj.class);
        if (zzabj == null) {
            return new zzabj(zzs);
        }
        if (zzabj.zzazE.getTask().isComplete()) {
            zzabj.zzazE = new TaskCompletionSource();
        }
        return zzabj;
    }

    public Task<Void> getTask() {
        return this.zzazE.getTask();
    }

    public void onDestroy() {
        super.onDestroy();
        this.zzazE.setException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    protected void zza(ConnectionResult connectionResult, int i) {
        this.zzazE.setException(zzb.zzl(connectionResult));
    }

    public void zzk(ConnectionResult connectionResult) {
        zzb(connectionResult, 0);
    }

    protected void zzvx() {
        int isGooglePlayServicesAvailable = this.zzazn.isGooglePlayServicesAvailable(this.zzaCR.zzwV());
        if (isGooglePlayServicesAvailable == 0) {
            this.zzazE.setResult(null);
        } else {
            zzk(new ConnectionResult(isGooglePlayServicesAvailable, null));
        }
    }
}
