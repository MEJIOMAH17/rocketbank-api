package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class TariffOperation$$special$$inlined$createParcel$1 implements Creator<TariffOperation> {
    public final TariffOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new TariffOperation(parcel);
    }

    public final TariffOperation[] newArray(int i) {
        return new TariffOperation[i];
    }
}
