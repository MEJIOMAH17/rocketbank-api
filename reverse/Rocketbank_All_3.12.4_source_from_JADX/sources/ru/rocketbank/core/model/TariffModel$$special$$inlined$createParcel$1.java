package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class TariffModel$$special$$inlined$createParcel$1 implements Creator<TariffModel> {
    public final TariffModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new TariffModel(parcel);
    }

    public final TariffModel[] newArray(int i) {
        return new TariffModel[i];
    }
}
