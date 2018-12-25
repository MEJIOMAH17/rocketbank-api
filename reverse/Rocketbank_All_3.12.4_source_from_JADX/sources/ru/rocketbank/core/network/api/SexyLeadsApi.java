package ru.rocketbank.core.network.api;

import retrofit2.http.GET;
import retrofit2.http.Query;
import ru.rocketbank.core.model.StatusResponseData;
import rx.Observable;

/* compiled from: SexyLeadsApi.kt */
public interface SexyLeadsApi {
    @GET("leads/sexy_status")
    Observable<StatusResponseData> getStatus(@Query("id") String str);
}
