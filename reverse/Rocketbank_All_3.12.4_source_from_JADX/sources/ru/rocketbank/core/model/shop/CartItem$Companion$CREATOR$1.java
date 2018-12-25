package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Cart.kt */
public final class CartItem$Companion$CREATOR$1 implements Creator<CartItem> {
    CartItem$Companion$CREATOR$1() {
    }

    public final CartItem createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new CartItem(parcel);
    }

    public final CartItem[] newArray(int i) {
        return new CartItem[i];
    }
}
