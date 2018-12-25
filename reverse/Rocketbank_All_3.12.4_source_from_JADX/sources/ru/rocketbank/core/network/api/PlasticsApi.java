package ru.rocketbank.core.network.api;

import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.model.AccountsCurrency;
import ru.rocketbank.core.model.dto.ActivationResponse;
import ru.rocketbank.core.model.references.RefBody;
import ru.rocketbank.core.model.references.Reference;
import ru.rocketbank.core.model.references.ReferenceResponse;
import ru.rocketbank.core.network.model.PlasticLimits;
import ru.rocketbank.core.network.model.PlasticLimits.SexyCardLimits;
import ru.rocketbank.core.network.model.PlasticsCheckResponse;
import rx.Observable;

public interface PlasticsApi {
    @FormUrlEncoded
    @PATCH("plastics/{token}/activate")
    Observable<ActivationResponse> activate(@Path("token") String str, @Field("plastic[check_id]") String str2, @Field("plastic[pin]") String str3);

    @FormUrlEncoded
    @PATCH("profile/code_word")
    Observable<ActivationResponse> changeCodeword(@Field("plastic_check_id") String str, @Field("code_word") String str2);

    @FormUrlEncoded
    @PATCH("plastics/{token}/pin")
    Observable<ActivationResponse> changePin(@Path("token") String str, @Field("plastic[check_id]") String str2, @Field("plastic[pin]") String str3);

    @FormUrlEncoded
    @PATCH("profile/short_code")
    Observable<ActivationResponse> changeShortCode(@Field("plastic_check_id") String str, @Field("code") String str2);

    @GET("plastics/check")
    Observable<PlasticsCheckResponse> check(@Query("card_number") String str, @Query("plastic_id") String str2);

    @POST("accounts/{token}/extracts")
    Observable<ReferenceResponse> getReference(@Path("token") String str, @Body RefBody refBody);

    @GET("accounts/{token}/extracts")
    Observable<List<Reference>> getReferencesList(@Path("token") String str);

    @GET("plastics/{token}/sexy_limits")
    Observable<PlasticLimits> getSexyLimits(@Path("token") String str);

    @POST("accounts/{currency}")
    Observable<AccountsCurrency> openCard(@Path("currency") String str, @Body String str2);

    @PATCH("plastics/{token}/sexy_limits")
    Observable<PlasticLimits> sendLimits(@Path("token") String str, @Body SexyCardLimits sexyCardLimits);
}
