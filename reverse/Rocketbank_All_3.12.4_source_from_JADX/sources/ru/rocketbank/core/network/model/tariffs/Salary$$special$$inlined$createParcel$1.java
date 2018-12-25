package ru.rocketbank.core.network.model.tariffs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Salary$$special$$inlined$createParcel$1 implements Creator<Salary> {
    public final Salary createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Salary(parcel);
    }

    public final Salary[] newArray(int i) {
        return new Salary[i];
    }
}
