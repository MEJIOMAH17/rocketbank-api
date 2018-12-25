package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.network.model.CardBlockResponse;
import ru.rocketbank.core.network.model.EditCardResponse;
import ru.rocketbank.core.network.model.MoveMoneyBody;
import ru.rocketbank.core.network.model.RefillCardResponse;
import rx.Observable;

public interface AccountApi {
    @POST("accounts/{cardToken}/activate")
    Observable<CardBlockResponse> activateCard(@Path("cardToken") String str, @Body String str2);

    @POST("accounts/{cardToken}/block")
    Observable<CardBlockResponse> blockCard(@Path("cardToken") String str, @Body String str2);

    @FormUrlEncoded
    @PATCH("accounts/{cardToken}")
    Observable<EditCardResponse> editCard(@Path("cardToken") String str, @Field("account[title]") String str2);

    @GET("accounts/move_balance_amount")
    Observable<RefillCardResponse> getBalanceAmount(@Query("amount") double d, @Query("currency") String str, @Query("from") String str2, @Query("to") String str3);

    @PATCH("linked_cards/{token}/hide")
    Observable<GenericRequestResponseData> hideCard(@Path("token") String str, @Body String str2);

    @PATCH("linked_accounts/{token}/hide")
    Observable<GenericRequestResponseData> hideLinkedAccount(@Path("token") String str, @Body String str2);

    @POST("accounts/move")
    Observable<RefillCardResponse> moveAmount(@Body MoveMoneyBody moveMoneyBody);

    @PATCH("linked_cards/{cardId}/hide_for_transfers")
    Observable<GenericRequestResponseData> removeLinkedTransfersCard(@Path("cardId") String str, @Body String str2);

    @FormUrlEncoded
    @PATCH("linked_cards/{token}/rename")
    Observable<Object> renameCard(@Path("token") String str, @Field("title") String str2);

    @FormUrlEncoded
    @PATCH("linked_accounts/{token}/rename")
    Observable<GenericRequestResponseData> renameLinkedAccount(@Path("token") String str, @Field("title") String str2);
}
