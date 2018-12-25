package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class ChangeShortCode$$special$$inlined$createParcel$1 implements Creator<ChangeShortCode> {
    public final ChangeShortCode createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new ChangeShortCode(parcel);
    }

    public final ChangeShortCode[] newArray(int i) {
        return new ChangeShortCode[i];
    }
}
