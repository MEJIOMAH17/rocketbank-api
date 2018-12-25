package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import ru.rocketbank.core.network.model.delivery.DateResponse;
import ru.rocketbank.core.network.model.delivery.DeliveryAddressBody;
import ru.rocketbank.core.network.model.delivery.DeliveryBody;
import ru.rocketbank.core.network.model.delivery.DeliveryDateBody;
import ru.rocketbank.core.network.model.delivery.DeliveryResponse;
import ru.rocketbank.core.network.model.delivery.IntervalResponse;
import ru.rocketbank.core.network.model.delivery.ScheduleDateBody;
import rx.Observable;

/* compiled from: DeliveryApi.kt */
public interface DeliveryApi {
    @GET("deliveries/{token}")
    Observable<DeliveryResponse> getDelivery(@Path("token") String str);

    @POST("deliveries/{token}/times")
    Observable<IntervalResponse> getTimesByDate(@Path("token") String str, @Body DeliveryBody<DeliveryDateBody> deliveryBody);

    @POST("deliveries/{token}/schedule")
    Observable<DeliveryResponse> scheduleDelivery(@Path("token") String str, @Body DeliveryBody<ScheduleDateBody> deliveryBody);

    @POST("deliveries/{token}/address")
    Observable<DateResponse> selectAddress(@Path("token") String str, @Body DeliveryBody<DeliveryAddressBody> deliveryBody);
}
