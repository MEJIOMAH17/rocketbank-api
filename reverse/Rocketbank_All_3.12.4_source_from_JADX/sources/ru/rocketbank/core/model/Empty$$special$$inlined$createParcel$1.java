package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Empty$$special$$inlined$createParcel$1 implements Creator<Empty> {
    public final Empty createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Empty(parcel);
    }

    public final Empty[] newArray(int i) {
        return new Empty[i];
    }
}
