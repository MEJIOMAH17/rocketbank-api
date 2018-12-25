package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class SexyStatusResponse$$special$$inlined$createParcel$1 implements Creator<SexyStatusResponse> {
    public final SexyStatusResponse createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new SexyStatusResponse(parcel);
    }

    public final SexyStatusResponse[] newArray(int i) {
        return new SexyStatusResponse[i];
    }
}
