package ru.rocketbank.core.network.api;

import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;
import ru.rocketbank.core.model.dto.analytics.AnalyticsOperationsResponseData;
import ru.rocketbank.core.model.dto.analytics.AnalyticsResponseData;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTags;
import rx.Observable;

public interface AnalyticsApi {
    @GET("analytics/{group}")
    Observable<AnalyticsResponseData> analytics(@Path("group") String str, @Query("category_id") Long l, @Query("from") String str2, @Query("to") String str3, @Query("joints") int[] iArr);

    @GET("analytics/operations")
    Observable<AnalyticsOperationsResponseData> analyticsOperations(@Query("from") String str, @Query("to") String str2, @Query("merchant_id") String str3, @Query("joints") int[] iArr);

    @GET("analytics/summary")
    Observable<AnalyticsResponseData> analyticsSummary(@Query("from") String str, @Query("to") String str2, @Query("joints") int[] iArr);

    @GET("analytics/tags")
    Observable<AnalyticsTags> analyticsTags(@Query("from") String str, @Query("to") String str2, @Query("joints") int[] iArr);
}
