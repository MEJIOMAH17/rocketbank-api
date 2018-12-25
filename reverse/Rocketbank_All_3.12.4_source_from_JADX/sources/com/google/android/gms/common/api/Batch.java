package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.internal.zzaaf;
import java.util.ArrayList;
import java.util.List;

public final class Batch extends zzaaf<BatchResult> {
    private int zzayM;
    private boolean zzayN;
    private boolean zzayO;
    private final PendingResult<?>[] zzayP;
    private final Object zzrJ;

    public static final class Builder {
        private GoogleApiClient zzanE;
        private List<PendingResult<?>> zzayR = new ArrayList();

        public Builder(GoogleApiClient googleApiClient) {
            this.zzanE = googleApiClient;
        }

        public final <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken(this.zzayR.size());
            this.zzayR.add(pendingResult);
            return batchResultToken;
        }

        public final Batch build() {
            return new Batch(this.zzayR, this.zzanE);
        }
    }

    /* renamed from: com.google.android.gms.common.api.Batch$1 */
    class C11581 implements zza {
        final /* synthetic */ Batch zzayQ;

        C11581(Batch batch) {
            this.zzayQ = batch;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void zzy(com.google.android.gms.common.api.Status r5) {
            /*
            r4 = this;
            r0 = r4.zzayQ;
            r0 = r0.zzrJ;
            monitor-enter(r0);
            r1 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r1 = r1.isCanceled();	 Catch:{ all -> 0x0068 }
            if (r1 == 0) goto L_0x0011;
        L_0x000f:
            monitor-exit(r0);	 Catch:{ all -> 0x0068 }
            return;
        L_0x0011:
            r1 = r5.isCanceled();	 Catch:{ all -> 0x0068 }
            r2 = 1;
            if (r1 == 0) goto L_0x001e;
        L_0x0018:
            r5 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r5.zzayO = r2;	 Catch:{ all -> 0x0068 }
            goto L_0x0029;
        L_0x001e:
            r5 = r5.isSuccess();	 Catch:{ all -> 0x0068 }
            if (r5 != 0) goto L_0x0029;
        L_0x0024:
            r5 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r5.zzayN = r2;	 Catch:{ all -> 0x0068 }
        L_0x0029:
            r5 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r5.zzayM = r5.zzayM - 1;	 Catch:{ all -> 0x0068 }
            r5 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r5 = r5.zzayM;	 Catch:{ all -> 0x0068 }
            if (r5 != 0) goto L_0x0066;
        L_0x0036:
            r5 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r5 = r5.zzayO;	 Catch:{ all -> 0x0068 }
            if (r5 == 0) goto L_0x0044;
        L_0x003e:
            r5 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            super.cancel();	 Catch:{ all -> 0x0068 }
            goto L_0x0066;
        L_0x0044:
            r5 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r5 = r5.zzayN;	 Catch:{ all -> 0x0068 }
            if (r5 == 0) goto L_0x0054;
        L_0x004c:
            r5 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0068 }
            r1 = 13;
            r5.<init>(r1);	 Catch:{ all -> 0x0068 }
            goto L_0x0056;
        L_0x0054:
            r5 = com.google.android.gms.common.api.Status.zzazx;	 Catch:{ all -> 0x0068 }
        L_0x0056:
            r1 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r2 = new com.google.android.gms.common.api.BatchResult;	 Catch:{ all -> 0x0068 }
            r3 = r4.zzayQ;	 Catch:{ all -> 0x0068 }
            r3 = r3.zzayP;	 Catch:{ all -> 0x0068 }
            r2.<init>(r5, r3);	 Catch:{ all -> 0x0068 }
            r1.zzb(r2);	 Catch:{ all -> 0x0068 }
        L_0x0066:
            monitor-exit(r0);	 Catch:{ all -> 0x0068 }
            return;
        L_0x0068:
            r5 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0068 }
            throw r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.Batch.1.zzy(com.google.android.gms.common.api.Status):void");
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzrJ = new Object();
        this.zzayM = list.size();
        this.zzayP = new PendingResult[this.zzayM];
        if (list.isEmpty()) {
            zzb(new BatchResult(Status.zzazx, this.zzayP));
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            PendingResult pendingResult = (PendingResult) list.get(i);
            this.zzayP[i] = pendingResult;
            pendingResult.zza(new C11581(this));
        }
    }

    public final void cancel() {
        super.cancel();
        for (PendingResult cancel : this.zzayP) {
            cancel.cancel();
        }
    }

    public final BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.zzayP);
    }

    public final /* synthetic */ Result zzc(Status status) {
        return createFailedResult(status);
    }
}
