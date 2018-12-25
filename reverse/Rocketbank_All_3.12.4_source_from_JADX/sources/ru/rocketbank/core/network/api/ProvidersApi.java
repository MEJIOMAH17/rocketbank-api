package ru.rocketbank.core.network.api;

import java.util.Map;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.model.response.CommissionStringResponse;
import ru.rocketbank.core.network.model.OperatorResponse;
import ru.rocketbank.core.network.model.PaymentResponse;
import ru.rocketbank.core.network.model.ProvidersResponse;
import rx.Observable;

public interface ProvidersApi {
    @GET("providers/{id}/commission")
    Observable<CommissionStringResponse> commission(@Path("id") long j, @Query("amount") double d);

    @GET("def_codes/{number}/operator")
    Observable<OperatorResponse> operator(@Path("number") String str);

    @FormUrlEncoded
    @POST("payments")
    Observable<PaymentResponse> payments(@FieldMap Map<String, String> map);

    @GET("providers/{id}/commission")
    Observable<Provider> provider(@Path("id") long j);

    @GET("providers/all")
    Observable<ProvidersResponse> providersAll();
}
