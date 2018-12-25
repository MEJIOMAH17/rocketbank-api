package ru.rocketbank.core.model.card;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class LinkedCard$$special$$inlined$createParcel$1 implements Creator<LinkedCard> {
    public final LinkedCard[] newArray(int i) {
        return new LinkedCard[i];
    }

    public final LinkedCard createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new LinkedCard(parcel);
    }
}
