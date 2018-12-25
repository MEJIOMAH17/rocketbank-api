package ru.rocketbank.core.network.api;

import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import ru.rocketbank.core.network.model.TariffOptionsResponse;
import ru.rocketbank.core.network.model.TariffResponse;
import ru.rocketbank.core.network.model.tariffs.TariffsResp;
import rx.Observable;

/* compiled from: TariffsApi.kt */
public interface TariffsApi {
    @POST("tariffs/{permalink}/apply")
    @Multipart
    Observable<TariffResponse> apply(@Path("permalink") String str, @Part("card_token") String str2);

    @POST("tariff_options/{permalink}/apply")
    @Multipart
    Observable<TariffOptionsResponse> applyOption(@Path("permalink") String str, @Part("card_token") String str2);

    @POST("tariff_options/{permalink}/disable")
    @Multipart
    Observable<TariffOptionsResponse> disableOption(@Path("permalink") String str, @Part("card_token") String str2);

    @GET("sexy_tariffs/{currency}")
    Observable<TariffsResp> getTariffsList(@Path("currency") String str);
}
