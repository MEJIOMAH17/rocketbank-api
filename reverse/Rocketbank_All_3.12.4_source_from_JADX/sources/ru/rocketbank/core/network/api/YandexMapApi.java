package ru.rocketbank.core.network.api;

import java.util.ArrayList;
import retrofit2.http.GET;
import retrofit2.http.Query;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import rx.Observable;

/* compiled from: YandexMapApi.kt */
public interface YandexMapApi {

    /* compiled from: YandexMapApi.kt */
    public static final class DefaultImpls {
        @GET("1.x/")
        public static /* bridge */ /* synthetic */ Observable getAddressByCoordinates$default(YandexMapApi yandexMapApi, String str, String str2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAddressByCoordinates");
            }
            if ((i & 1) != 0) {
                str = "json";
            }
            return yandexMapApi.getAddressByCoordinates(str, str2);
        }

        @GET("1.x/")
        public static /* bridge */ /* synthetic */ Observable getAddressesByString$default(YandexMapApi yandexMapApi, String str, String str2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAddressesByString");
            }
            if ((i & 1) != 0) {
                str = "json";
            }
            return yandexMapApi.getAddressesByString(str, str2);
        }
    }

    @GET("1.x/")
    Observable<ArrayList<GeoObject>> getAddressByCoordinates(@Query("format") String str, @Query("geocode") String str2);

    @GET("1.x/")
    Observable<ArrayList<GeoObject>> getAddressesByString(@Query("format") String str, @Query("geocode") String str2);
}
