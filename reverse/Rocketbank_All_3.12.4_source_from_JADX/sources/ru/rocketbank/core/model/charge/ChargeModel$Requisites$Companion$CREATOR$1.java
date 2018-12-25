package ru.rocketbank.core.model.charge;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel.Requisites;

/* compiled from: ChargeModel.kt */
public final class ChargeModel$Requisites$Companion$CREATOR$1 implements Creator<Requisites> {
    ChargeModel$Requisites$Companion$CREATOR$1() {
    }

    public final Requisites createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Requisites(parcel);
    }

    public final Requisites[] newArray(int i) {
        return new Requisites[i];
    }
}
