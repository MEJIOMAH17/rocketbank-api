package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AvailableAccount.kt */
public final class AvailableAccount$Companion$CREATOR$1 implements Creator<AvailableAccount> {
    AvailableAccount$Companion$CREATOR$1() {
    }

    public final AvailableAccount createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new AvailableAccount(parcel);
    }

    public final AvailableAccount[] newArray(int i) {
        return new AvailableAccount[i];
    }
}
