package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketDepositModel.kt */
public final class RocketDepositModel$Companion$CREATOR$1 implements Creator<RocketDepositModel> {
    RocketDepositModel$Companion$CREATOR$1() {
    }

    public final RocketDepositModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new RocketDepositModel(parcel);
    }

    public final RocketDepositModel[] newArray(int i) {
        return new RocketDepositModel[i];
    }
}
