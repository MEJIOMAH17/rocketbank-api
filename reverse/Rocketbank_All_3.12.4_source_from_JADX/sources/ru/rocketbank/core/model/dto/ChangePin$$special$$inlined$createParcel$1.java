package ru.rocketbank.core.model.dto;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class ChangePin$$special$$inlined$createParcel$1 implements Creator<ChangePin> {
    public final ChangePin createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new ChangePin(parcel);
    }

    public final ChangePin[] newArray(int i) {
        return new ChangePin[i];
    }
}
