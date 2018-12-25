package ru.rocketbank.core.network.model;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.JsonElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AddressData.kt */
public final class AddressData {
    private final String city;
    private final JsonElement data;
    private final String value;

    public static /* bridge */ /* synthetic */ AddressData copy$default(AddressData addressData, String str, String str2, JsonElement jsonElement, int i, Object obj) {
        if ((i & 1) != 0) {
            str = addressData.value;
        }
        if ((i & 2) != 0) {
            str2 = addressData.city;
        }
        if ((i & 4) != 0) {
            jsonElement = addressData.data;
        }
        return addressData.copy(str, str2, jsonElement);
    }

    public final String component1() {
        return this.value;
    }

    public final String component2() {
        return this.city;
    }

    public final JsonElement component3() {
        return this.data;
    }

    public final AddressData copy(String str, String str2, JsonElement jsonElement) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        Intrinsics.checkParameterIsNotNull(str2, "city");
        Intrinsics.checkParameterIsNotNull(jsonElement, ShareConstants.WEB_DIALOG_PARAM_DATA);
        return new AddressData(str, str2, jsonElement);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AddressData) {
                AddressData addressData = (AddressData) obj;
                if (Intrinsics.areEqual(this.value, addressData.value) && Intrinsics.areEqual(this.city, addressData.city) && Intrinsics.areEqual(this.data, addressData.data)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.value;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.city;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        JsonElement jsonElement = this.data;
        if (jsonElement != null) {
            i = jsonElement.hashCode();
        }
        return hashCode + i;
    }

    public AddressData(String str, String str2, JsonElement jsonElement) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        Intrinsics.checkParameterIsNotNull(str2, "city");
        Intrinsics.checkParameterIsNotNull(jsonElement, ShareConstants.WEB_DIALOG_PARAM_DATA);
        this.value = str;
        this.city = str2;
        this.data = jsonElement;
    }

    public final String getCity() {
        return this.city;
    }

    public final JsonElement getData() {
        return this.data;
    }

    public final String getValue() {
        return this.value;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.city);
        stringBuilder.append(", ");
        stringBuilder.append(this.value);
        return stringBuilder.toString();
    }
}
