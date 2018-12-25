package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaaf;
import com.google.android.gms.internal.zzabk;
import com.google.android.gms.internal.zzabt;

public final class PendingResults {

    private static final class zza<R extends Result> extends zzaaf<R> {
        private final R zzazs;

        public zza(R r) {
            super(Looper.getMainLooper());
            this.zzazs = r;
        }

        protected final R zzc(Status status) {
            if (status.getStatusCode() == this.zzazs.getStatus().getStatusCode()) {
                return this.zzazs;
            }
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private static final class zzb<R extends Result> extends zzaaf<R> {
        private final R zzazt;

        public zzb(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.zzazt = r;
        }

        protected final R zzc(Status status) {
            return this.zzazt;
        }
    }

    private static final class zzc<R extends Result> extends zzaaf<R> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        protected final R zzc(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        PendingResult zzabt = new zzabt(Looper.getMainLooper());
        zzabt.cancel();
        return zzabt;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzac.zzb((Object) r, (Object) "Result must not be null");
        zzac.zzb(r.getStatus().getStatusCode() == 16, (Object) "Status code must be CommonStatusCodes.CANCELED");
        PendingResult zza = new zza(r);
        zza.cancel();
        return zza;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        zzac.zzb((Object) r, (Object) "Result must not be null");
        PendingResult zzc = new zzc(null);
        zzc.zzb(r);
        return new zzabk(zzc);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzac.zzb((Object) status, (Object) "Result must not be null");
        PendingResult zzabt = new zzabt(Looper.getMainLooper());
        zzabt.zzb(status);
        return zzabt;
    }

    public static <R extends Result> PendingResult<R> zza(R r, GoogleApiClient googleApiClient) {
        zzac.zzb((Object) r, (Object) "Result must not be null");
        zzac.zzb(r.getStatus().isSuccess() ^ 1, (Object) "Status code must not be SUCCESS");
        PendingResult zzb = new zzb(googleApiClient, r);
        zzb.zzb(r);
        return zzb;
    }

    public static PendingResult<Status> zza(Status status, GoogleApiClient googleApiClient) {
        zzac.zzb((Object) status, (Object) "Result must not be null");
        PendingResult zzabt = new zzabt(googleApiClient);
        zzabt.zzb(status);
        return zzabt;
    }

    public static <R extends Result> OptionalPendingResult<R> zzb(R r, GoogleApiClient googleApiClient) {
        zzac.zzb((Object) r, (Object) "Result must not be null");
        PendingResult zzc = new zzc(googleApiClient);
        zzc.zzb(r);
        return new zzabk(zzc);
    }
}
