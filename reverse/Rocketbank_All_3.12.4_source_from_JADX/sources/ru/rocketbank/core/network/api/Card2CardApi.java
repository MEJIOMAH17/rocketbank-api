package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
import ru.rocketbank.core.model.card.Card2CardRefillResponseData;
import ru.rocketbank.core.model.card.Card2CardStatusResponseData;
import ru.rocketbank.core.model.response.CommissionResponse;
import ru.rocketbank.core.model.response.CommissionStringResponse;
import ru.rocketbank.core.model.transfers.card.Card2CardTransferResponseData;
import ru.rocketbank.core.network.model.CardBody;
import ru.rocketbank.core.network.model.SendMoneyBody;
import rx.Observable;

public interface Card2CardApi {
    @GET("card2card/commission")
    Observable<CommissionResponse> commission(@Query("amount") double d);

    @GET("card2card/income_commission")
    Observable<CommissionStringResponse> commissionIncome(@Query("amount") double d, @Query("number") String str, @Query("linked_token") String str2);

    @GET("card2card/outcome_commission")
    Observable<CommissionStringResponse> getOutComeCommission(@Query("amount") double d, @Query("number") String str, @Query("linked_token") String str2);

    @POST("card2card/refill")
    Observable<Card2CardRefillResponseData> refillFromCardMoney(@Query("amount") double d, @Body CardBody cardBody);

    @POST("card2card/transfer")
    Observable<Card2CardTransferResponseData> sendMoney(@Body SendMoneyBody sendMoneyBody);

    @GET("card2card/status")
    Observable<Card2CardStatusResponseData> status(@Query("id") int i);
}
