package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class StatusResponseData$$special$$inlined$createParcel$1 implements Creator<StatusResponseData> {
    public final StatusResponseData createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new StatusResponseData(parcel);
    }

    public final StatusResponseData[] newArray(int i) {
        return new StatusResponseData[i];
    }
}
