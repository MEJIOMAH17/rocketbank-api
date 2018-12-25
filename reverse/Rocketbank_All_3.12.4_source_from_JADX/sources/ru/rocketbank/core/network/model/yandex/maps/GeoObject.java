package ru.rocketbank.core.network.model.yandex.maps;

import com.google.android.gms.maps.model.LatLng;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GeoObject.kt */
public final class GeoObject {
    private final LatLng point;
    private final String textAddress;

    public static /* bridge */ /* synthetic */ GeoObject copy$default(GeoObject geoObject, String str, LatLng latLng, int i, Object obj) {
        if ((i & 1) != 0) {
            str = geoObject.textAddress;
        }
        if ((i & 2) != 0) {
            latLng = geoObject.point;
        }
        return geoObject.copy(str, latLng);
    }

    public final String component1() {
        return this.textAddress;
    }

    public final LatLng component2() {
        return this.point;
    }

    public final GeoObject copy(String str, LatLng latLng) {
        Intrinsics.checkParameterIsNotNull(str, "textAddress");
        Intrinsics.checkParameterIsNotNull(latLng, "point");
        return new GeoObject(str, latLng);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof GeoObject) {
                GeoObject geoObject = (GeoObject) obj;
                if (Intrinsics.areEqual(this.textAddress, geoObject.textAddress) && Intrinsics.areEqual(this.point, geoObject.point)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.textAddress;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        LatLng latLng = this.point;
        if (latLng != null) {
            i = latLng.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("GeoObject(textAddress=");
        stringBuilder.append(this.textAddress);
        stringBuilder.append(", point=");
        stringBuilder.append(this.point);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public GeoObject(String str, LatLng latLng) {
        Intrinsics.checkParameterIsNotNull(str, "textAddress");
        Intrinsics.checkParameterIsNotNull(latLng, "point");
        this.textAddress = str;
        this.point = latLng;
    }

    public final String getTextAddress() {
        return this.textAddress;
    }

    public final LatLng getPoint() {
        return this.point;
    }
}
