package ru.rocketbank.core.network.api;

import java.util.ArrayList;
import java.util.List;
import okhttp3.MultipartBody;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.model.Empty;
import ru.rocketbank.core.model.InnResponseData;
import ru.rocketbank.core.model.PrivacyResponse;
import ru.rocketbank.core.model.RocketRoubles;
import ru.rocketbank.core.model.SetUsernameResponse;
import ru.rocketbank.core.model.StatusResponseData;
import ru.rocketbank.core.model.TouchResponse;
import ru.rocketbank.core.model.ValueRequest;
import ru.rocketbank.core.model.charge.ChargeModel;
import ru.rocketbank.core.model.contact.InvitationsResponse;
import ru.rocketbank.core.model.contact.SyncContacts;
import ru.rocketbank.core.model.discounts.DiscountsCollection;
import ru.rocketbank.core.model.dto.BinResponseData;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.dto.RocketRoublesInfo;
import ru.rocketbank.core.model.dto.operations.MilesCompensationResponseData;
import ru.rocketbank.core.model.dto.operations.SectionStatisticsResponseData;
import ru.rocketbank.core.model.enums.PermalinkOption;
import ru.rocketbank.core.model.register.DeviceRegisterData;
import ru.rocketbank.core.model.response.CommissionResponse;
import ru.rocketbank.core.model.transfers.bank.BiksResponseData;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData;
import ru.rocketbank.core.model.transfers.bank.RemittanceRequestData;
import ru.rocketbank.core.model.transfers.bank.RemittanceResponseData;
import ru.rocketbank.core.network.model.AddressData;
import ru.rocketbank.core.network.model.AgentResponse;
import ru.rocketbank.core.network.model.AtmsCashinResponse;
import ru.rocketbank.core.network.model.ContactsSyncResponse;
import ru.rocketbank.core.network.model.MilesCompensation;
import ru.rocketbank.core.network.model.OpenSafeAccountResponse;
import ru.rocketbank.core.network.model.PatchProfileBody;
import ru.rocketbank.core.network.model.TagsResponse;
import ru.rocketbank.core.network.model.TariffOptionsResponse;
import ru.rocketbank.core.network.model.TransfersModelJsonObject;
import ru.rocketbank.core.network.model.UploadImageResponse;
import rx.Observable;

public interface RocketAPI {
    @POST("accounts/{token}/close")
    Observable<GenericRequestResponseData> accountsClose(@Path("token") String str, @Body String str2);

    @FormUrlEncoded
    @POST("accounts/safe/{currency}")
    Observable<OpenSafeAccountResponse> accountsSafe(@Path("currency") String str, @Field("title") String str2, @Field("token") String str3);

    @GET("addresses/sexy_autocomplete")
    Observable<List<AddressData>> addresses(@Query("query") String str);

    @POST("remittances/budget")
    Observable<RemittanceResponseData> budget(@Body RemittanceRequestData remittanceRequestData);

    @GET("gis_gmp/charges/fetch")
    Observable<ArrayList<ChargeModel>> chargesFetch(@Query("driver_licence") String str, @Query("ctc") String str2, @Query("inn") String str3, @Query("uin") String str4);

    @POST("gis_gmp/charges/{id}/pay")
    Observable<GenericRequestResponseData> chargesPay(@Path("id") int i, @Body String str);

    @POST("operations/{operationId}/change_to_miles")
    Observable<MilesCompensationResponseData> convertFromMiles(@Path("operationId") long j, @Body MilesCompensation milesCompensation);

    @POST("linked_cards/{token}/hide")
    Observable<Object> deleteTemplate(@Path("token") String str);

    @GET("agents/{permalink}")
    Observable<AgentResponse> getAgents(@Path("permalink") String str);

    @GET("atms/cashin/")
    Observable<AtmsCashinResponse> getAtmsStartFrom(@Query("timestamp") long j);

    @GET("biks/{bik}")
    Observable<BiksResponseData> getBiks(@Path("bik") String str);

    @GET("discounts/collection")
    Observable<DiscountsCollection> getDiscounts();

    @GET("inn/{id}")
    Observable<InnResponseData> getInn(@Path("id") String str, @Query("remittance_kind") String str2, @Query("bik") String str3, @Query("account_number") String str4);

    @GET("transfers/recent")
    Observable<TransfersModelJsonObject> getRecentTransfers();

    @GET("rocketrubles/")
    Observable<RocketRoubles> getRocketRoubles();

    @GET("rocketrubles/info")
    Observable<RocketRoublesInfo> getRocketRoublesInfo();

    @GET("leads/{token}/status")
    Observable<StatusResponseData> getStatus(@Path("token") String str, @Query("apn_token") String str2);

    @GET("tags/{tag}")
    Observable<SectionStatisticsResponseData> getTagStatistics(@Path("tag") String str);

    @GET("images/{id}/thumb")
    Observable<String> getThumbImage(@Path("id") String str);

    @GET("invitations/all")
    Observable<InvitationsResponse> invitations();

    @FormUrlEncoded
    @POST("joint_accounts")
    Observable<GenericRequestResponseData> jointAccounts(@Field("user_id") long j);

    @PATCH("joint_accounts/{id}/cancel")
    Observable<GenericRequestResponseData> jointCancel(@Path("id") int i, @Body String str);

    @PATCH("joint_accounts/{id}/decline")
    Observable<GenericRequestResponseData> jointDecline(@Path("id") int i, @Body String str);

    @PATCH("joint_accounts/{id}/confirm")
    /* renamed from: jointСonfirm */
    Observable<GenericRequestResponseData> m364jointonfirm(@Path("id") int i, @Body String str);

    @GET("open_privacy")
    PrivacyResponse openPrivacy();

    @GET("gis_gmp/charges/penalty")
    Observable<ArrayList<ChargeModel>> penalty();

    @GET("privacy")
    Observable<PrivacyResponse> privacy();

    @FormUrlEncoded
    @POST("devices/register")
    Observable<DeviceRegisterData> register(@Field("phone") String str, @Field("google_adv_id") String str2);

    @POST("remittances/sexy_create")
    Observable<RemittanceResponseData> remittanceCreate(@Body RemittanceRequestData remittanceRequestData);

    @POST("remittances")
    Observable<RemittanceResponseData> remittances(@Body RemittanceRequestData remittanceRequestData);

    @GET("remittances/commission")
    Observable<CommissionResponse> remittancesCommission(@Query("amount") double d, @Query("bik") String str, @Query("nds") Boolean bool, @Query("account") String str2, @Query("recipient_name") String str3, @Query("purpose") String str4, @Query("besp") Boolean bool2);

    @POST("remittances/corporate")
    Observable<RemittanceResponseData> remittancesCorporate(@Body RemittanceRequestData remittanceRequestData);

    @GET("remittances/kind")
    Observable<RemittanceKindResponseData> remittancesKind(@Query("bik") String str, @Query("account_number") String str2);

    @GET("bins/{bin}")
    Observable<BinResponseData> requestBin(@Path("bin") String str);

    @POST("devices/touch")
    Observable<TouchResponse> requestTouchToken(@Body String str);

    @POST("devices/token")
    Observable<Empty> sendApnToken(@Body ValueRequest valueRequest);

    @POST("devices/ga")
    Observable<Empty> sendGoogleAdvId(@Body ValueRequest valueRequest);

    @POST("tariff_options/{permLink}/{enable}")
    Observable<TariffOptionsResponse> setTariffEnabled(@Path("enable") String str, @Path("permLink") PermalinkOption permalinkOption, @Query("card_token") String str2, @Body String str3);

    @PATCH("profile")
    Observable<SetUsernameResponse> setUserName(@Body PatchProfileBody patchProfileBody);

    @POST("contacts/sync")
    Observable<ContactsSyncResponse> syncContacts(@Body SyncContacts syncContacts);

    @GET("tags")
    Observable<TagsResponse> tags();

    @GET("gis_gmp/charges/tax")
    Observable<ArrayList<ChargeModel>> tax();

    @POST("images")
    @Multipart
    Observable<UploadImageResponse> uploadImage(@Part MultipartBody.Part part, @Part("public") boolean z);
}
