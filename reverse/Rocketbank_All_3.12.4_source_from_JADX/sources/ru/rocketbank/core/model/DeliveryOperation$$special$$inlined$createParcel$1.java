package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class DeliveryOperation$$special$$inlined$createParcel$1 implements Creator<DeliveryOperation> {
    public final DeliveryOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new DeliveryOperation(parcel);
    }

    public final DeliveryOperation[] newArray(int i) {
        return new DeliveryOperation[i];
    }
}
