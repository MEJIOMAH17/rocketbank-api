package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.model.Empty;
import ru.rocketbank.core.model.OperationsResponse;
import ru.rocketbank.core.model.ResponseContainerData;
import ru.rocketbank.core.model.ResponseModel;
import ru.rocketbank.core.model.TokenRequestData;
import ru.rocketbank.core.model.dto.MonthCashBackModel;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.model.dto.operations.OperationsRequestResponseData;
import ru.rocketbank.core.model.response.OperationsSearchResponse;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersRequestData;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersResponseData;
import ru.rocketbank.core.network.model.ContextResponse;
import ru.rocketbank.core.network.model.CoordinatesBody;
import ru.rocketbank.core.network.model.MerchantAnalytics;
import ru.rocketbank.core.network.model.NanoFeedResult;
import ru.rocketbank.core.network.model.TagAnalytics;
import rx.Observable;

public interface OperationApi {
    @PATCH("friend_transfers/{id}/cancel")
    Observable<ResponseContainerData> cancelFriendMoney(@Path("id") long j, @Body TokenRequestData tokenRequestData);

    @FormUrlEncoded
    @PUT("operations/{operationId}/comment")
    Observable<ResponseModel> comment(@Path("operationId") long j, @Field("operation[comment]") String str);

    @POST("operations/{id}/transfer_to_safe_account")
    Observable<Object> confirmTransferToSaveAccount(@Path("id") long j);

    @PATCH("friend_transfers/{id}/decline")
    Observable<ResponseContainerData> declineFriendMoney(@Path("id") long j, @Body TokenRequestData tokenRequestData);

    @GET("operations/{id}/context")
    Observable<ContextResponse> getContext(@Path("id") long j);

    @GET("operations/sexy_feed")
    Observable<NanoFeedResult> getFeed(@Query("token") String str, @Query("page") int i, @Query("per_page") int i2);

    @GET("accounts/{accountToken}/feed")
    Observable<OperationsResponse> getSafeAccountOperations(@Path("accountToken") String str, @Query("page") int i, @Query("per_page") int i2);

    @GET("merchants/{metchantId}")
    Observable<MerchantAnalytics> merchantAnalytics(@Path("metchantId") Long l);

    @GET("operations/")
    Observable<OperationsRequestResponseData> operations(@Query("page") int i, @Query("tag") String str, @Query("merchant_id") Long l);

    @POST("friend_transfers/income")
    Observable<FriendTransfersResponseData> refillMoney(@Body FriendTransfersRequestData friendTransfersRequestData);

    @GET("operations/search")
    Observable<OperationsSearchResponse> search(@Query("token") String str, @Query("q") String str2, @Query("page") int i, @Query("per_page") int i2);

    @POST("operations/{operationId}/coordinates")
    Observable<ResponseData> sendCoordinates(@Path("operationId") long j, @Body CoordinatesBody coordinatesBody);

    @PATCH("friend_transfers/{id}/accept")
    Observable<ResponseContainerData> sendFriendMoney(@Path("id") long j, @Body TokenRequestData tokenRequestData);

    @POST("friend_transfers")
    Observable<FriendTransfersResponseData> sendMoney(@Body FriendTransfersRequestData friendTransfersRequestData);

    @POST("month_cash_backs/apply")
    Observable<Empty> sendMonthCashBack(@Body MonthCashBackModel monthCashBackModel);

    @POST("operations/{id}/stash")
    Observable<ResponseModel> stash(@Path("id") long j, @Body String str);

    @GET("tags/{tag}")
    Observable<TagAnalytics> tagAnalytics(@Path("tag") String str);
}
