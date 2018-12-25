package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class DepositModel$$special$$inlined$createParcel$1 implements Creator<DepositModel> {
    public final DepositModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new DepositModel(parcel);
    }

    public final DepositModel[] newArray(int i) {
        return new DepositModel[i];
    }
}
