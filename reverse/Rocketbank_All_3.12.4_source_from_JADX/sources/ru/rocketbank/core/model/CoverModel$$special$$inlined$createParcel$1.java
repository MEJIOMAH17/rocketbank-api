package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class CoverModel$$special$$inlined$createParcel$1 implements Creator<CoverModel> {
    public final CoverModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new CoverModel(parcel);
    }

    public final CoverModel[] newArray(int i) {
        return new CoverModel[i];
    }
}
