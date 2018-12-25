package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Deposit.kt */
public final class Deposit$Companion$CREATOR$1 implements Creator<Deposit> {
    Deposit$Companion$CREATOR$1() {
    }

    public final Deposit createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new Deposit(parcel);
    }

    public final Deposit[] newArray(int i) {
        return new Deposit[i];
    }
}
