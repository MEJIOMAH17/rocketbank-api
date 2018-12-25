package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class AccountModel$$special$$inlined$createParcel$1 implements Creator<AccountModel> {
    public final AccountModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AccountModel(parcel);
    }

    public final AccountModel[] newArray(int i) {
        return new AccountModel[i];
    }
}
