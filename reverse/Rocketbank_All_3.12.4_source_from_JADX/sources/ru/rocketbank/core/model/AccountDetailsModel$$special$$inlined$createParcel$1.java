package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class AccountDetailsModel$$special$$inlined$createParcel$1 implements Creator<AccountDetailsModel> {
    public final AccountDetailsModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AccountDetailsModel(parcel);
    }

    public final AccountDetailsModel[] newArray(int i) {
        return new AccountDetailsModel[i];
    }
}
