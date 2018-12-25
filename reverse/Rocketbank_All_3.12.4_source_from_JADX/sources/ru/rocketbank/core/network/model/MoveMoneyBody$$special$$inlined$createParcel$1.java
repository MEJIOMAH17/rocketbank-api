package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class MoveMoneyBody$$special$$inlined$createParcel$1 implements Creator<MoveMoneyBody> {
    public final MoveMoneyBody createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new MoveMoneyBody(parcel);
    }

    public final MoveMoneyBody[] newArray(int i) {
        return new MoveMoneyBody[i];
    }
}
