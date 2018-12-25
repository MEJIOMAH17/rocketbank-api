package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Merchant.kt */
public final class Merchant$Companion$CREATOR$1 implements Creator<Merchant> {
    Merchant$Companion$CREATOR$1() {
    }

    public final Merchant createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new Merchant(parcel);
    }

    public final Merchant[] newArray(int i) {
        return new Merchant[i];
    }
}
