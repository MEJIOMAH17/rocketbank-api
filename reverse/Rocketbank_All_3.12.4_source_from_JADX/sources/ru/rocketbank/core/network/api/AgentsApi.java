package ru.rocketbank.core.network.api;

import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;
import retrofit2.http.Path;
import ru.rocketbank.core.model.dto.ResponseData;
import rx.Observable;

public interface AgentsApi {
    @FormUrlEncoded
    @POST("agents/{permalink}/rate")
    Observable<ResponseData> rate(@Path("permalink") String str, @Field("rate") int i, @Field("comment") String str2);
}
