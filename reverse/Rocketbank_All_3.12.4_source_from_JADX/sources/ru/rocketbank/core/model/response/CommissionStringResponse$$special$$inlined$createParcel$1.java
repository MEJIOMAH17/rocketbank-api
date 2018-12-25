package ru.rocketbank.core.model.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class CommissionStringResponse$$special$$inlined$createParcel$1 implements Creator<CommissionStringResponse> {
    public final CommissionStringResponse createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new CommissionStringResponse(parcel);
    }

    public final CommissionStringResponse[] newArray(int i) {
        return new CommissionStringResponse[i];
    }
}
