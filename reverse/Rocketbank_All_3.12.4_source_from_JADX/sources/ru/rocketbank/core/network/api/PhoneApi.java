package ru.rocketbank.core.network.api;

import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.PATCH;
import retrofit2.http.Path;
import ru.rocketbank.core.model.SmsVerificationResponseData;
import ru.rocketbank.core.network.model.SmsVerificationPhoneResponse;
import rx.Observable;

public interface PhoneApi {
    @FormUrlEncoded
    @PATCH("sms_verifications/{verificationId}/verify_phone")
    Observable<SmsVerificationPhoneResponse> smsVerification(@Path("verificationId") String str, @Field("id") String str2, @Field("code") String str3);

    @FormUrlEncoded
    @PATCH("sms_verifications/{verificationId}/verify")
    Observable<SmsVerificationResponseData> verify(@Path("verificationId") String str, @Field("id") String str2, @Field("code") String str3);
}
