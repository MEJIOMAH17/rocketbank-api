package ru.rocketbank.core.model.response;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Suggest$$special$$inlined$createParcel$1 implements Creator<Suggest> {
    public final Suggest[] newArray(int i) {
        return new Suggest[i];
    }

    public final Suggest createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Suggest(parcel);
    }
}
