package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Limit$$special$$inlined$createParcel$1 implements Creator<Limit> {
    public final Limit createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Limit(parcel);
    }

    public final Limit[] newArray(int i) {
        return new Limit[i];
    }
}
