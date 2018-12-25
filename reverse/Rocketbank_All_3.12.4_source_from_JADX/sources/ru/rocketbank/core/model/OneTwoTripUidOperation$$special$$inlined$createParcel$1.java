package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class OneTwoTripUidOperation$$special$$inlined$createParcel$1 implements Creator<OneTwoTripUidOperation> {
    public final OneTwoTripUidOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new OneTwoTripUidOperation(parcel);
    }

    public final OneTwoTripUidOperation[] newArray(int i) {
        return new OneTwoTripUidOperation[i];
    }
}
