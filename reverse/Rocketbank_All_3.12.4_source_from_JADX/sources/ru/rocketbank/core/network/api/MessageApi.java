package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
import ru.rocketbank.core.network.model.MessageResponse;
import ru.rocketbank.core.network.model.MessagesResponse;
import rx.Observable;

public interface MessageApi {
    @GET("messages/collection")
    Observable<MessagesResponse> getPage(@Query("page") int i);

    @FormUrlEncoded
    @POST("messages")
    Observable<MessageResponse> message(@Field("message[image_ids]") Integer num, @Field("message[operation_ids]") Long l, @Field("message[body]") String str);

    @POST("messages/love")
    Observable<MessageResponse> sendLove(@Body String str);
}
