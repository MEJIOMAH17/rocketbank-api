package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.model.response.AvailableDepositsResponse;
import ru.rocketbank.core.model.response.DepositResponse;
import ru.rocketbank.core.network.model.DepositOpenResult;
import ru.rocketbank.core.network.model.DepositRefillRequest;
import ru.rocketbank.core.network.model.DepositRefillResponse;
import ru.rocketbank.core.network.model.DepositsResponse;
import ru.rocketbank.core.network.model.MoveMoneyBody;
import ru.rocketbank.core.network.model.RefillCardResponse;
import rx.Observable;

public interface DepositApi {
    @GET("deposits/available")
    Observable<AvailableDepositsResponse> available();

    @POST("deposits/{permalink}/{id}/close")
    Observable<DepositResponse> close(@Path("permalink") String str, @Path("id") long j, @Body String str2);

    @GET("deposits/{permalink}/refill_amount")
    Observable<RefillCardResponse> getBalanceAmount(@Path("permalink") String str, @Query("amount") double d, @Query("currency") String str2, @Query("from") String str3, @Query("to") String str4);

    @GET("deposits/all")
    Observable<DepositsResponse> getDeposits();

    @POST("deposits/{to}/refill")
    Observable<RefillCardResponse> moveAmount(@Path("to") String str, @Body MoveMoneyBody moveMoneyBody);

    @POST("deposits/{permalink}")
    Observable<DepositResponse> open(@Path("permalink") String str, @Part("period") int i);

    @FormUrlEncoded
    @POST("deposits/{permalink}/open")
    Observable<DepositOpenResult> openOpen(@Path("permalink") String str, @Field("from") String str2, @Field("amount") double d, @Field("refillable") String str3, @Field("capitalization") String str4);

    @GET("deposits/{permalink}/refill_amount")
    Observable<DepositRefillResponse> openRefillAmount(@Path("permalink") String str, @Query("from") String str2, @Query("amount") double d, @Query("type") String str3, @Query("currency") String str4);

    @POST("deposits/{permalink}/{id}/refill")
    Observable<DepositResponse> refillDeposit(@Path("permalink") String str, @Path("id") Long l, @Body DepositRefillRequest depositRefillRequest);
}
