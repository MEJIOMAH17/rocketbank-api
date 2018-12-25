package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Operation$$special$$inlined$createParcel$1 implements Creator<Operation> {
    public final Operation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Operation(parcel);
    }

    public final Operation[] newArray(int i) {
        return new Operation[i];
    }
}
