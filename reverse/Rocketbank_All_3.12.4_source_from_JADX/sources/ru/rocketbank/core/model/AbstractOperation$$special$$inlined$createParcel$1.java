package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class AbstractOperation$$special$$inlined$createParcel$1 implements Creator<AbstractOperation> {
    public final AbstractOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AbstractOperation(parcel);
    }

    public final AbstractOperation[] newArray(int i) {
        return new AbstractOperation[i];
    }
}
