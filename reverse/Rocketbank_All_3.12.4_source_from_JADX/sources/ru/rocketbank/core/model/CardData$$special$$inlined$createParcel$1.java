package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class CardData$$special$$inlined$createParcel$1 implements Creator<CardData> {
    public final CardData[] newArray(int i) {
        return new CardData[i];
    }

    public final CardData createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new CardData(parcel);
    }
}
