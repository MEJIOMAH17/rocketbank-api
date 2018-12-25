package ru.rocketbank.core.network.model.tariffs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Tariff$$special$$inlined$createParcel$1 implements Creator<Tariff> {
    public final Tariff createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Tariff(parcel);
    }

    public final Tariff[] newArray(int i) {
        return new Tariff[i];
    }
}
