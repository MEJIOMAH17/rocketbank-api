package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShopItem.kt */
public final class ShopItem$Companion$CREATOR$1 implements Creator<ShopItem> {
    ShopItem$Companion$CREATOR$1() {
    }

    public final ShopItem createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new ShopItem(parcel);
    }

    public final ShopItem[] newArray(int i) {
        return new ShopItem[i];
    }
}
