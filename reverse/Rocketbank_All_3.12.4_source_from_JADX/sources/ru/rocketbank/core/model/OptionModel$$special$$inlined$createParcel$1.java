package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class OptionModel$$special$$inlined$createParcel$1 implements Creator<OptionModel> {
    public final OptionModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new OptionModel(parcel);
    }

    public final OptionModel[] newArray(int i) {
        return new OptionModel[i];
    }
}
