package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class AndroidPayOperation$$special$$inlined$createParcel$1 implements Creator<AndroidPayOperation> {
    public final AndroidPayOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AndroidPayOperation(parcel);
    }

    public final AndroidPayOperation[] newArray(int i) {
        return new AndroidPayOperation[i];
    }
}
