package ru.rocketbank.core.dagger;

import android.content.Context;
import android.media.MediaPlayer;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.tapandpay.TapAndPay;
import com.scottyab.rootbeer.RootBeer;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.pay.google.RxTapAndPay;
import ru.rocketbank.core.pay.google.UiTapAndPay;
import ru.rocketbank.core.pay.samsung.RxSPay;

/* compiled from: AndroidModule.kt */
public final class AndroidModule {
    private final Context context;
    private final TapAndPay tapAndPay;

    public AndroidModule(Context context, TapAndPay tapAndPay) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(tapAndPay, "tapAndPay");
        this.context = context;
        this.tapAndPay = tapAndPay;
    }

    public final Context provideAppContext() {
        return this.context;
    }

    public static MediaPlayer provideMediaPlayer() {
        return new MediaPlayer();
    }

    public static GoogleApiClient provideGoogleApiClient(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        context = new Builder(context).addApi(TapAndPay.TAP_AND_PAY_API).build();
        Intrinsics.checkExpressionValueIsNotNull(context, "GoogleApiClient.Builder(…                 .build()");
        return context;
    }

    public final RxTapAndPay provideTapAndPay(GoogleApiClient googleApiClient) {
        Intrinsics.checkParameterIsNotNull(googleApiClient, "client");
        return new RxTapAndPay(googleApiClient, this.tapAndPay);
    }

    public final UiTapAndPay provideAndroidTapAndPay(GoogleApiClient googleApiClient) {
        Intrinsics.checkParameterIsNotNull(googleApiClient, "client");
        return new UiTapAndPay(googleApiClient, this.tapAndPay);
    }

    public static RootBeer provideRootChecker(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new RootBeer(context);
    }

    public static RxSPay provideSPay(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new RxSPay(context);
    }
}
