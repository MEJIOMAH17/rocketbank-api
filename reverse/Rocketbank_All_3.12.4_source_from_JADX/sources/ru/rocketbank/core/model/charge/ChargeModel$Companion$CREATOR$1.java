package ru.rocketbank.core.model.charge;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChargeModel.kt */
public final class ChargeModel$Companion$CREATOR$1 implements Creator<ChargeModel> {
    ChargeModel$Companion$CREATOR$1() {
    }

    public final ChargeModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new ChargeModel(parcel);
    }

    public final ChargeModel[] newArray(int i) {
        return new ChargeModel[i];
    }
}
