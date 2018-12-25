package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: DeliveryAddressBody.kt */
public final class DeliveryAddressBody {
    private final String address;
    private final double latitude;
    private final double longitude;
    private final String notes;

    public static /* bridge */ /* synthetic */ DeliveryAddressBody copy$default(DeliveryAddressBody deliveryAddressBody, String str, double d, double d2, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deliveryAddressBody.notes;
        }
        if ((i & 2) != 0) {
            d = deliveryAddressBody.latitude;
        }
        double d3 = d;
        if ((i & 4) != 0) {
            d2 = deliveryAddressBody.longitude;
        }
        double d4 = d2;
        if ((i & 8) != 0) {
            str2 = deliveryAddressBody.address;
        }
        return deliveryAddressBody.copy(str, d3, d4, str2);
    }

    public final String component1() {
        return this.notes;
    }

    public final double component2() {
        return this.latitude;
    }

    public final double component3() {
        return this.longitude;
    }

    public final String component4() {
        return this.address;
    }

    public final DeliveryAddressBody copy(String str, double d, double d2, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "notes");
        Intrinsics.checkParameterIsNotNull(str2, "address");
        return new DeliveryAddressBody(str, d, d2, str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeliveryAddressBody) {
                DeliveryAddressBody deliveryAddressBody = (DeliveryAddressBody) obj;
                if (Intrinsics.areEqual(this.notes, deliveryAddressBody.notes) && Double.compare(this.latitude, deliveryAddressBody.latitude) == 0 && Double.compare(this.longitude, deliveryAddressBody.longitude) == 0 && Intrinsics.areEqual(this.address, deliveryAddressBody.address)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.notes;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.latitude);
        hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
        doubleToLongBits = Double.doubleToLongBits(this.longitude);
        hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
        String str2 = this.address;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("DeliveryAddressBody(notes=");
        stringBuilder.append(this.notes);
        stringBuilder.append(", latitude=");
        stringBuilder.append(this.latitude);
        stringBuilder.append(", longitude=");
        stringBuilder.append(this.longitude);
        stringBuilder.append(", address=");
        stringBuilder.append(this.address);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public DeliveryAddressBody(String str, double d, double d2, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "notes");
        Intrinsics.checkParameterIsNotNull(str2, "address");
        this.notes = str;
        this.latitude = d;
        this.longitude = d2;
        this.address = str2;
    }

    public final String getNotes() {
        return this.notes;
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final String getAddress() {
        return this.address;
    }
}
