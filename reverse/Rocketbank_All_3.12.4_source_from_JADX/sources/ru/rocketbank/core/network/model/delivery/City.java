package ru.rocketbank.core.network.model.delivery;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.adapter.LatLngList;

/* compiled from: City.kt */
public final class City {
    private final double lat;
    private final double lng;
    @SerializedName("area_error_message")
    private final String message;
    private final String name;
    private final String permalink;
    private final ArrayList<LatLngList> polygons;

    public static /* bridge */ /* synthetic */ City copy$default(City city, String str, String str2, double d, double d2, ArrayList arrayList, String str3, int i, Object obj) {
        City city2 = city;
        return city2.copy((i & 1) != 0 ? city2.permalink : str, (i & 2) != 0 ? city2.name : str2, (i & 4) != 0 ? city2.lat : d, (i & 8) != 0 ? city2.lng : d2, (i & 16) != 0 ? city2.polygons : arrayList, (i & 32) != 0 ? city2.message : str3);
    }

    public final String component1() {
        return this.permalink;
    }

    public final String component2() {
        return this.name;
    }

    public final double component3() {
        return this.lat;
    }

    public final double component4() {
        return this.lng;
    }

    public final ArrayList<LatLngList> component5() {
        return this.polygons;
    }

    public final String component6() {
        return this.message;
    }

    public final City copy(String str, String str2, double d, double d2, ArrayList<LatLngList> arrayList, String str3) {
        String str4 = str;
        Intrinsics.checkParameterIsNotNull(str4, "permalink");
        String str5 = str2;
        Intrinsics.checkParameterIsNotNull(str5, "name");
        ArrayList<LatLngList> arrayList2 = arrayList;
        Intrinsics.checkParameterIsNotNull(arrayList2, "polygons");
        String str6 = str3;
        Intrinsics.checkParameterIsNotNull(str6, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        return new City(str4, str5, d, d2, arrayList2, str6);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof City) {
                City city = (City) obj;
                if (Intrinsics.areEqual(this.permalink, city.permalink) && Intrinsics.areEqual(this.name, city.name) && Double.compare(this.lat, city.lat) == 0 && Double.compare(this.lng, city.lng) == 0 && Intrinsics.areEqual(this.polygons, city.polygons) && Intrinsics.areEqual(this.message, city.message)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.permalink;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.lat);
        hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
        doubleToLongBits = Double.doubleToLongBits(this.lng);
        hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
        ArrayList arrayList = this.polygons;
        hashCode = (hashCode + (arrayList != null ? arrayList.hashCode() : 0)) * 31;
        str2 = this.message;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("City(permalink=");
        stringBuilder.append(this.permalink);
        stringBuilder.append(", name=");
        stringBuilder.append(this.name);
        stringBuilder.append(", lat=");
        stringBuilder.append(this.lat);
        stringBuilder.append(", lng=");
        stringBuilder.append(this.lng);
        stringBuilder.append(", polygons=");
        stringBuilder.append(this.polygons);
        stringBuilder.append(", message=");
        stringBuilder.append(this.message);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public City(String str, String str2, double d, double d2, ArrayList<LatLngList> arrayList, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "permalink");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        Intrinsics.checkParameterIsNotNull(arrayList, "polygons");
        Intrinsics.checkParameterIsNotNull(str3, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        this.permalink = str;
        this.name = str2;
        this.lat = d;
        this.lng = d2;
        this.polygons = arrayList;
        this.message = str3;
    }

    public final String getPermalink() {
        return this.permalink;
    }

    public final String getName() {
        return this.name;
    }

    public final double getLat() {
        return this.lat;
    }

    public final double getLng() {
        return this.lng;
    }

    public final ArrayList<LatLngList> getPolygons() {
        return this.polygons;
    }

    public final String getMessage() {
        return this.message;
    }
}
