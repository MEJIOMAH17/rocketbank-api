package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tapandpay.TapAndPay;
import com.google.android.gms.tapandpay.TapAndPay.DataChangedListener;
import com.google.android.gms.tapandpay.TapAndPay.GetActiveWalletIdResult;
import com.google.android.gms.tapandpay.TapAndPay.GetEnvironmentResult;
import com.google.android.gms.tapandpay.TapAndPay.GetStableHardwareIdResult;
import com.google.android.gms.tapandpay.TapAndPay.GetTokenStatusResult;
import com.google.android.gms.tapandpay.issuer.PushTokenizeRequest;
import com.google.android.gms.tapandpay.issuer.TokenStatus;

public class zzbjo implements TapAndPay {

    private static class zzb implements GetActiveWalletIdResult {
        private final Status zzair;
        private final String zzbPh;

        public zzb(Status status, String str) {
            this.zzair = status;
            this.zzbPh = str;
        }

        public String getActiveWalletId() {
            return this.zzbPh;
        }

        public Status getStatus() {
            return this.zzair;
        }
    }

    private static class zzc implements GetEnvironmentResult {
        private final Status zzahw;
        private final String zzbPi;

        public zzc(String str, Status status) {
            this.zzbPi = str;
            this.zzahw = status;
        }

        public String getEnvironment() {
            return this.zzbPi;
        }

        public Status getStatus() {
            return this.zzahw;
        }
    }

    private static class zzd implements GetStableHardwareIdResult {
        private final Status zzahw;
        private final String zzbPj;

        public zzd(String str, Status status) {
            this.zzbPj = str;
            this.zzahw = status;
        }

        public String getStableHardwareId() {
            return this.zzbPj;
        }

        public Status getStatus() {
            return this.zzahw;
        }
    }

    private static class zze implements GetTokenStatusResult {
        private final Status zzair;
        private final TokenStatus zzbPk;

        public zze(Status status, TokenStatus tokenStatus) {
            this.zzair = status;
            this.zzbPk = tokenStatus;
        }

        public Status getStatus() {
            return this.zzair;
        }

        public TokenStatus getTokenStatus() {
            return this.zzbPk;
        }
    }

    private static final class zza extends com.google.android.gms.internal.zzbjn.zza {
        private static final com.google.android.gms.internal.zzabh.zzc<DataChangedListener> zzbPg = new C12111();
        private final com.google.android.gms.internal.zzaad.zzb<Status> zzaGN;
        private final zzabh<DataChangedListener> zzaNm;

        /* renamed from: com.google.android.gms.internal.zzbjo$zza$1 */
        class C12111 implements com.google.android.gms.internal.zzabh.zzc<DataChangedListener> {
            C12111() {
            }

            public final void zza(DataChangedListener dataChangedListener) {
                dataChangedListener.onDataChanged();
            }

            public final /* synthetic */ void zzs(Object obj) {
                zza((DataChangedListener) obj);
            }

            public final void zzwc() {
            }
        }

        zza(com.google.android.gms.internal.zzaad.zzb<Status> zzb, zzabh<DataChangedListener> zzabh) {
            this.zzaGN = zzb;
            this.zzaNm = zzabh;
        }

        public final void onDataChanged() {
            this.zzaNm.zza(zzbPg);
        }

        public final void zza(Status status) {
            this.zzaGN.setResult(status);
        }
    }

    private static class zzf extends com.google.android.gms.internal.zzbjn.zza {
        private final com.google.android.gms.internal.zzaad.zzb<GetActiveWalletIdResult> zzaGN;

        public zzf(com.google.android.gms.internal.zzaad.zzb<GetActiveWalletIdResult> zzb) {
            this.zzaGN = zzb;
        }

        public void zzc(Status status, String str) throws RemoteException {
            this.zzaGN.setResult(new zzb(status, str));
        }
    }

    private static class zzg extends com.google.android.gms.internal.zzbjn.zza {
        private final com.google.android.gms.internal.zzaad.zzb<GetEnvironmentResult> zzaGN;

        public zzg(com.google.android.gms.internal.zzaad.zzb<GetEnvironmentResult> zzb) {
            this.zzaGN = zzb;
        }

        public void zze(Status status, String str) throws RemoteException {
            this.zzaGN.setResult(new zzc(str, status));
        }
    }

    private static class zzh extends com.google.android.gms.internal.zzbjn.zza {
        private final com.google.android.gms.internal.zzaad.zzb<GetStableHardwareIdResult> zzaGN;

        public zzh(com.google.android.gms.internal.zzaad.zzb<GetStableHardwareIdResult> zzb) {
            this.zzaGN = zzb;
        }

        public void zzd(Status status, String str) throws RemoteException {
            this.zzaGN.setResult(new zzd(str, status));
        }
    }

    private static class zzi extends com.google.android.gms.internal.zzbjn.zza {
        private final com.google.android.gms.internal.zzaad.zzb<GetTokenStatusResult> zzaGN;

        public zzi(com.google.android.gms.internal.zzaad.zzb<GetTokenStatusResult> zzb) {
            this.zzaGN = zzb;
        }

        public void zza(Status status, TokenStatus tokenStatus) throws RemoteException {
            this.zzaGN.setResult(new zze(status, tokenStatus));
        }
    }

    public void createWallet(GoogleApiClient googleApiClient, final Activity activity, final int i) {
        googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zzb(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zzd(new com.google.android.gms.internal.zzbjn.zzb(activity, i));
                zzb(Status.zzazx);
            }
        });
    }

    public PendingResult<GetActiveWalletIdResult> getActiveWalletId(GoogleApiClient googleApiClient) {
        return googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zza<GetActiveWalletIdResult>(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zzc(new zzf(this));
            }

            protected GetActiveWalletIdResult zzbW(Status status) {
                return new zzb(status, null);
            }

            protected /* synthetic */ Result zzc(Status status) {
                return zzbW(status);
            }
        });
    }

    public PendingResult<GetEnvironmentResult> getEnvironment(GoogleApiClient googleApiClient) {
        return googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zza<GetEnvironmentResult>(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zzf(new zzg(this));
            }

            protected GetEnvironmentResult zzbZ(Status status) {
                return new zzc(null, status);
            }

            protected /* synthetic */ Result zzc(Status status) {
                return zzbZ(status);
            }
        });
    }

    public PendingResult<GetStableHardwareIdResult> getStableHardwareId(GoogleApiClient googleApiClient) {
        return googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zza<GetStableHardwareIdResult>(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zze(new zzh(this));
            }

            protected GetStableHardwareIdResult zzbY(Status status) {
                return new zzd(null, status);
            }

            protected /* synthetic */ Result zzc(Status status) {
                return zzbY(status);
            }
        });
    }

    public PendingResult<GetTokenStatusResult> getTokenStatus(GoogleApiClient googleApiClient, final int i, final String str) {
        return googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zza<GetTokenStatusResult>(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zza(i, str, new zzi(this));
            }

            protected GetTokenStatusResult zzbX(Status status) {
                return new zze(status, null);
            }

            protected /* synthetic */ Result zzc(Status status) {
                return zzbX(status);
            }
        });
    }

    public void pushTokenize(GoogleApiClient googleApiClient, Activity activity, PushTokenizeRequest pushTokenizeRequest, int i) {
        final Activity activity2 = activity;
        final int i2 = i;
        final PushTokenizeRequest pushTokenizeRequest2 = pushTokenizeRequest;
        googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zzb(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zza(pushTokenizeRequest2, new com.google.android.gms.internal.zzbjn.zzb(activity2, i2));
                zzb(Status.zzazx);
            }
        });
    }

    public PendingResult<Status> registerDataChangedListener(GoogleApiClient googleApiClient, DataChangedListener dataChangedListener) {
        final zzabh zzr = googleApiClient.zzr(dataChangedListener);
        return googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zza<Status>(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zza(new zza(this, zzr));
            }

            public Status zzb(Status status) {
                return status;
            }

            public /* synthetic */ Result zzc(Status status) {
                return zzb(status);
            }
        });
    }

    public void requestDeleteToken(GoogleApiClient googleApiClient, Activity activity, String str, int i, int i2) {
        final Activity activity2 = activity;
        final int i3 = i2;
        final int i4 = i;
        final String str2 = str;
        googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zzb(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zzc(i4, str2, new com.google.android.gms.internal.zzbjn.zzb(activity2, i3));
                zzb(Status.zzazx);
            }
        });
    }

    public void requestSelectToken(GoogleApiClient googleApiClient, Activity activity, String str, int i, int i2) {
        final Activity activity2 = activity;
        final int i3 = i2;
        final int i4 = i;
        final String str2 = str;
        googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zzb(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zzb(i4, str2, new com.google.android.gms.internal.zzbjn.zzb(activity2, i3));
                zzb(Status.zzazx);
            }
        });
    }

    public void tokenize(GoogleApiClient googleApiClient, Activity activity, String str, int i, String str2, int i2, int i3) {
        final Activity activity2 = activity;
        final int i4 = i3;
        final int i5 = i;
        final String str3 = str;
        final String str4 = str2;
        final int i6 = i2;
        googleApiClient.zza(new com.google.android.gms.tapandpay.TapAndPay.zzb(this, googleApiClient) {
            protected void zza(zzbjn zzbjn) throws RemoteException {
                ((zzbjl) zzbjn.zzxD()).zza(i5, str3, str4, i6, new com.google.android.gms.internal.zzbjn.zzb(activity2, i4));
                zzb(Status.zzazx);
            }
        });
    }
}
