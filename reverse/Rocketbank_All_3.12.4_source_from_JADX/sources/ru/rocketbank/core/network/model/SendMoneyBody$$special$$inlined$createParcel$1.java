package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class SendMoneyBody$$special$$inlined$createParcel$1 implements Creator<SendMoneyBody> {
    public final SendMoneyBody createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new SendMoneyBody(parcel);
    }

    public final SendMoneyBody[] newArray(int i) {
        return new SendMoneyBody[i];
    }
}
