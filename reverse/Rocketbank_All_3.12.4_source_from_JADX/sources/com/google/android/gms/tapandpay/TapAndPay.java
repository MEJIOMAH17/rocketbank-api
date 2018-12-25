package com.google.android.gms.tapandpay;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NotRequiredOptions;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzbjn;
import com.google.android.gms.internal.zzbjo;
import com.google.android.gms.internal.zzbjv;
import com.google.android.gms.tapandpay.firstparty.zzc;
import com.google.android.gms.tapandpay.issuer.PushTokenizeRequest;
import com.google.android.gms.tapandpay.issuer.TokenStatus;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public interface TapAndPay {
    public static final int CARD_NETWORK_AMEX = 1;
    public static final int CARD_NETWORK_DISCOVER = 2;
    public static final int CARD_NETWORK_INTERAC = 5;
    public static final int CARD_NETWORK_MASTERCARD = 3;
    public static final int CARD_NETWORK_VISA = 4;
    public static final Api<NotRequiredOptions> TAP_AND_PAY_API = new Api("TapAndPay.TAP_AND_PAY_API", zzbNw, zzbNv);
    public static final int TOKEN_PROVIDER_AMEX = 2;
    public static final int TOKEN_PROVIDER_DISCOVER = 5;
    public static final int TOKEN_PROVIDER_EFTPOS = 6;
    public static final int TOKEN_PROVIDER_GOOGLE = 1;
    public static final int TOKEN_PROVIDER_INTERAC = 7;
    public static final int TOKEN_PROVIDER_MASTERCARD = 3;
    public static final int TOKEN_PROVIDER_OBERTHUR = 8;
    public static final int TOKEN_PROVIDER_PAYPAL = 9;
    public static final int TOKEN_PROVIDER_VISA = 4;
    public static final int TOKEN_STATE_ACTIVE = 5;
    public static final int TOKEN_STATE_NEEDS_IDENTITY_VERIFICATION = 3;
    public static final int TOKEN_STATE_PENDING = 2;
    public static final int TOKEN_STATE_SUSPENDED = 4;
    public static final int TOKEN_STATE_UNTOKENIZED = 1;
    public static final TapAndPay TapAndPay = new zzbjo();
    public static final zzc zzbNu = new zzbjv();
    public static final zzf<zzbjn> zzbNv = new zzf();
    public static final com.google.android.gms.common.api.Api.zza<zzbjn, NotRequiredOptions> zzbNw = new C13971();

    @Retention(RetentionPolicy.SOURCE)
    public @interface CardNetwork {
    }

    public interface DataChangedListener {
        void onDataChanged();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TokenServiceProvider {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TokenState {
    }

    public interface GetActiveWalletIdResult extends Result {
        String getActiveWalletId();
    }

    public interface GetEnvironmentResult extends Result {
        String getEnvironment();
    }

    public interface GetStableHardwareIdResult extends Result {
        String getStableHardwareId();
    }

    public interface GetTokenStatusResult extends Result {
        TokenStatus getTokenStatus();
    }

    /* renamed from: com.google.android.gms.tapandpay.TapAndPay$1 */
    class C13971 extends com.google.android.gms.common.api.Api.zza<zzbjn, NotRequiredOptions> {
        C13971() {
        }

        public final zzbjn zza(Context context, Looper looper, zzg zzg, NotRequiredOptions notRequiredOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            return new zzbjn(context, looper, connectionCallbacks, onConnectionFailedListener, zzg);
        }
    }

    public static abstract class zza<R extends Result> extends com.google.android.gms.internal.zzaad.zza<R, zzbjn> {
        public zza(GoogleApiClient googleApiClient) {
            super(TapAndPay.zzbNv, googleApiClient);
        }

        public /* synthetic */ void setResult(Object obj) {
            super.zzb((Result) obj);
        }
    }

    public static abstract class zzb extends zza<Status> {
        public zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        protected Status zzb(Status status) {
            return status;
        }

        protected /* synthetic */ Result zzc(Status status) {
            return zzb(status);
        }
    }

    void createWallet(GoogleApiClient googleApiClient, Activity activity, int i);

    PendingResult<GetActiveWalletIdResult> getActiveWalletId(GoogleApiClient googleApiClient);

    PendingResult<GetEnvironmentResult> getEnvironment(GoogleApiClient googleApiClient);

    PendingResult<GetStableHardwareIdResult> getStableHardwareId(GoogleApiClient googleApiClient);

    PendingResult<GetTokenStatusResult> getTokenStatus(GoogleApiClient googleApiClient, int i, String str);

    void pushTokenize(GoogleApiClient googleApiClient, Activity activity, PushTokenizeRequest pushTokenizeRequest, int i);

    PendingResult<Status> registerDataChangedListener(GoogleApiClient googleApiClient, DataChangedListener dataChangedListener);

    void requestDeleteToken(GoogleApiClient googleApiClient, Activity activity, String str, int i, int i2);

    void requestSelectToken(GoogleApiClient googleApiClient, Activity activity, String str, int i, int i2);

    void tokenize(GoogleApiClient googleApiClient, Activity activity, String str, int i, String str2, int i2, int i3);
}
