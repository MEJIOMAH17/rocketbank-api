package ru.rocketbank.core.network.api;

import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Query;
import ru.rocketbank.core.model.LoginResponseData;
import rx.Observable;

/* compiled from: LoginApi.kt */
public interface LoginApi {
    @GET("login")
    Observable<LoginResponseData> login(@Query("push") String str, @Header("Authorization") String str2);
}
