package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Path;
import ru.rocketbank.core.model.ResetShortCodeRespone;
import ru.rocketbank.core.network.model.PatchProfileAResponse;
import ru.rocketbank.core.network.model.PatchProfileBody;
import ru.rocketbank.core.network.model.PhoneResponse;
import ru.rocketbank.core.network.model.UserResponse;
import rx.Observable;

public interface UserApi {
    @POST("webauths/{auth_id}/cancel")
    Observable<Void> cancel3dSec(@Path("auth_id") String str);

    @POST("webauths/{auth_id}/confirm")
    Observable<Void> confirm3dSec(@Path("auth_id") String str);

    @GET("profile")
    Observable<UserResponse> getProfile();

    @POST("webauths/{auth_id}/wrong_recipient")
    Observable<Void> notMe3dSec(@Path("auth_id") String str);

    @PATCH("profile")
    Observable<PatchProfileAResponse> patchProfile(@Body PatchProfileBody patchProfileBody);

    @FormUrlEncoded
    @PATCH("profile/phone")
    Observable<PhoneResponse> phone(@Field("mobile_phone") String str, @Field("plastic_check_id") String str2);

    @GET("profile/reset_short_code")
    Observable<ResetShortCodeRespone> resetShortCode();
}
