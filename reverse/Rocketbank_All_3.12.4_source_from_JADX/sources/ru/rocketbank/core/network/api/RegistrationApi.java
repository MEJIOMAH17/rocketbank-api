package ru.rocketbank.core.network.api;

import okhttp3.MultipartBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import ru.rocketbank.core.model.PrivacyResponse;
import ru.rocketbank.core.model.RegistrationForm;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.network.model.UploadImageResponse;
import ru.rocketbank.core.network.model.new_passport.NewPassportBody;
import rx.Observable;

public interface RegistrationApi {
    @GET("open_privacy")
    Observable<PrivacyResponse> openPrivacy();

    @GET("privacy")
    Observable<PrivacyResponse> privacy();

    @PATCH("emails/{token}/form")
    Observable<GenericRequestResponseData> registration(@Path("token") String str, @Body RegistrationForm registrationForm);

    @POST("images")
    @Multipart
    Observable<UploadImageResponse> uploadImage(@Part MultipartBody.Part part, @Part("public") boolean z);

    @POST("photos/new_passport")
    Observable<Void> uploadNewPassportImages(@Body NewPassportBody newPassportBody);
}
