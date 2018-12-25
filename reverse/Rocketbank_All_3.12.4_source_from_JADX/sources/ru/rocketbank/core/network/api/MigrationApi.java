package ru.rocketbank.core.network.api;

import okhttp3.MultipartBody;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Part;
import ru.rocketbank.core.model.PrivacyResponse;
import ru.rocketbank.core.model.migration.MigrationResponse;
import rx.Observable;

public interface MigrationApi {
    @GET("tochka_joining")
    Observable<MigrationResponse> getJoining();

    @POST("tochka_joining")
    Observable<MigrationResponse> joining(@Body String str);

    @GET("open_privacy")
    Observable<PrivacyResponse> openPrivacy();

    @FormUrlEncoded
    @PATCH("tochka_joining/schedule_delivery")
    Observable<MigrationResponse> scheduleDelivery(@Field("city") String str, @Field("address") String str2);

    @PATCH("tochka_joining/transfer_money")
    Observable<MigrationResponse> transferMoney(@Body String str);

    @PATCH("tochka_joining/upload_photo?kind=passport_main")
    @Multipart
    Observable<MigrationResponse> uploadPassportMain(@Part MultipartBody.Part part);

    @PATCH("tochka_joining/upload_photo?kind=passport_registration")
    @Multipart
    Observable<MigrationResponse> uploadPassportRegistration(@Part MultipartBody.Part part);

    @PATCH("tochka_joining/upload_photo?kind=client")
    @Multipart
    Observable<MigrationResponse> uploadSelfie(@Part MultipartBody.Part part);
}
