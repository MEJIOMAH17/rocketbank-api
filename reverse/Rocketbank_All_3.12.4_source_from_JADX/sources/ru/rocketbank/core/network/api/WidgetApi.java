package ru.rocketbank.core.network.api;

import retrofit2.http.GET;
import ru.rocketbank.core.network.model.WidgetResponse;
import rx.Observable;

/* compiled from: WidgetApi.kt */
public interface WidgetApi {
    @GET("widget")
    Observable<WidgetResponse> getWidget();
}
