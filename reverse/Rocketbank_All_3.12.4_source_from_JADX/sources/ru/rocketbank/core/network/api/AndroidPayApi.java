package ru.rocketbank.core.network.api;

import kotlin.Unit;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.network.model.androidpay.OpcResponse;
import ru.rocketbank.core.network.model.androidpay.TurResponse;
import rx.Observable;

/* compiled from: AndroidPayApi.kt */
public interface AndroidPayApi {

    /* compiled from: AndroidPayApi.kt */
    public static final class DefaultImpls {
        @GET("androidpay/tokens/{android_card_token}")
        public static /* bridge */ /* synthetic */ Observable getOpcAndAddress$default(AndroidPayApi androidPayApi, String str, Boolean bool, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getOpcAndAddress");
            }
            if ((i & 2) != 0) {
                bool = null;
            }
            return androidPayApi.getOpcAndAddress(str, bool);
        }
    }

    @POST("androidpay/wallets/{tur}/deactivate")
    Observable<Unit> deactivate(@Path("tur") String str);

    @GET("androidpay/tokens/{android_card_token}")
    Observable<OpcResponse> getOpcAndAddress(@Path("android_card_token") String str, @Query("sandbox") Boolean bool);

    @GET("androidpay/wallets/{walletId}")
    Observable<TurResponse> getTokenByWalletId(@Path("walletId") String str, @Query("plastic_token") String str2);
}
