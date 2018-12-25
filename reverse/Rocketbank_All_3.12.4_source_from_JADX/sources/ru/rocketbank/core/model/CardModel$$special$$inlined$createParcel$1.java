package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class CardModel$$special$$inlined$createParcel$1 implements Creator<CardModel> {
    public final CardModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new CardModel(parcel);
    }

    public final CardModel[] newArray(int i) {
        return new CardModel[i];
    }
}
