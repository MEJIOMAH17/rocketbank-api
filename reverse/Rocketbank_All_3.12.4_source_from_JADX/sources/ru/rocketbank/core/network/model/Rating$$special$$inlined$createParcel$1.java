package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Rating$$special$$inlined$createParcel$1 implements Creator<Rating> {
    public final Rating createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Rating(parcel);
    }

    public final Rating[] newArray(int i) {
        return new Rating[i];
    }
}
