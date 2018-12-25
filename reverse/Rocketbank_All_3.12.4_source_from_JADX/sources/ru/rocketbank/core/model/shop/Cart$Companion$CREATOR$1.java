package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Cart.kt */
public final class Cart$Companion$CREATOR$1 implements Creator<Cart> {
    Cart$Companion$CREATOR$1() {
    }

    public final Cart createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Cart(parcel);
    }

    public final Cart[] newArray(int i) {
        return new Cart[i];
    }
}
