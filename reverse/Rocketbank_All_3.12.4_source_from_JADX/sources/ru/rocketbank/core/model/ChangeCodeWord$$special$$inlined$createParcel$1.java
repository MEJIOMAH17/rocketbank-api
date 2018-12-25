package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class ChangeCodeWord$$special$$inlined$createParcel$1 implements Creator<ChangeCodeWord> {
    public final ChangeCodeWord[] newArray(int i) {
        return new ChangeCodeWord[i];
    }

    public final ChangeCodeWord createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new ChangeCodeWord(parcel);
    }
}
