package ru.rocketbank.core.network.model.delivery;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;

/* compiled from: DeliveryModel.kt */
public final class DeliveryModel {
    @SerializedName("latitude")
    private final double lat;
    @SerializedName("longitude")
    private final double lng;
    @SerializedName("admin_user")
    private final Sender sender;
    private final String text;

    public static /* bridge */ /* synthetic */ DeliveryModel copy$default(DeliveryModel deliveryModel, String str, double d, double d2, Sender sender, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deliveryModel.text;
        }
        if ((i & 2) != 0) {
            d = deliveryModel.lat;
        }
        double d3 = d;
        if ((i & 4) != 0) {
            d2 = deliveryModel.lng;
        }
        double d4 = d2;
        if ((i & 8) != 0) {
            sender = deliveryModel.sender;
        }
        return deliveryModel.copy(str, d3, d4, sender);
    }

    public final String component1() {
        return this.text;
    }

    public final double component2() {
        return this.lat;
    }

    public final double component3() {
        return this.lng;
    }

    public final Sender component4() {
        return this.sender;
    }

    public final DeliveryModel copy(String str, double d, double d2, Sender sender) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(sender, "sender");
        return new DeliveryModel(str, d, d2, sender);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeliveryModel) {
                DeliveryModel deliveryModel = (DeliveryModel) obj;
                if (Intrinsics.areEqual(this.text, deliveryModel.text) && Double.compare(this.lat, deliveryModel.lat) == 0 && Double.compare(this.lng, deliveryModel.lng) == 0 && Intrinsics.areEqual(this.sender, deliveryModel.sender)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.text;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        long doubleToLongBits = Double.doubleToLongBits(this.lat);
        hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
        doubleToLongBits = Double.doubleToLongBits(this.lng);
        hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
        Sender sender = this.sender;
        if (sender != null) {
            i = sender.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("DeliveryModel(text=");
        stringBuilder.append(this.text);
        stringBuilder.append(", lat=");
        stringBuilder.append(this.lat);
        stringBuilder.append(", lng=");
        stringBuilder.append(this.lng);
        stringBuilder.append(", sender=");
        stringBuilder.append(this.sender);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public DeliveryModel(String str, double d, double d2, Sender sender) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(sender, "sender");
        this.text = str;
        this.lat = d;
        this.lng = d2;
        this.sender = sender;
    }

    public final String getText() {
        return this.text;
    }

    public final double getLat() {
        return this.lat;
    }

    public final double getLng() {
        return this.lng;
    }

    public final Sender getSender() {
        return this.sender;
    }
}
