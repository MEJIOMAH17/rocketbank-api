package ru.rocketbank.core.model.card;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Bin$$special$$inlined$createParcel$1 implements Creator<Bin> {
    public final Bin[] newArray(int i) {
        return new Bin[i];
    }

    public final Bin createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Bin(parcel);
    }
}
