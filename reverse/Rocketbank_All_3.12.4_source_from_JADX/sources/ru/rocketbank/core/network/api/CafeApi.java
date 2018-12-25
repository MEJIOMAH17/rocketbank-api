package ru.rocketbank.core.network.api;

import retrofit2.http.Body;
import retrofit2.http.POST;
import ru.rocketbank.core.network.model.cafe.CafeRefillBody;
import ru.rocketbank.core.network.model.cafe.CafeRefillResponse;
import ru.rocketbank.core.network.model.cafe.Response;
import rx.Observable;

/* compiled from: CafeApi.kt */
public interface CafeApi {
    @POST("kitchen")
    Observable<Response<CafeRefillResponse>> refillMoney(@Body CafeRefillBody cafeRefillBody);
}
