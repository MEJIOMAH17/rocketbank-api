package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class ContextShopItem$$special$$inlined$createParcel$1 implements Creator<ContextShopItem> {
    public final ContextShopItem createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new ContextShopItem(parcel);
    }

    public final ContextShopItem[] newArray(int i) {
        return new ContextShopItem[i];
    }
}
