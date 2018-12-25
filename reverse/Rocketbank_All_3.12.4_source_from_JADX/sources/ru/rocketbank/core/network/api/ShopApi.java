package ru.rocketbank.core.network.api;

import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import ru.rocketbank.core.model.shop.ShopOrder;
import ru.rocketbank.core.model.shop.ShopOrderResponse;
import ru.rocketbank.core.network.model.ShopItemResponse;
import rx.Observable;

/* compiled from: ShopApi.kt */
public interface ShopApi {
    @GET("shop/items")
    Observable<List<ShopItemResponse>> items();

    @POST("shop/orders")
    Observable<ShopOrderResponse> order(@Body ShopOrder shopOrder);
}
