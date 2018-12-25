package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShopItemResponse.kt */
public final class ShopImage$Companion$CREATOR$1 implements Creator<ShopImage> {
    ShopImage$Companion$CREATOR$1() {
    }

    public final ShopImage createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new ShopImage(parcel);
    }

    public final ShopImage[] newArray(int i) {
        return new ShopImage[i];
    }
}
