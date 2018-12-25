package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TaxGibddPush.kt */
public final class TaxGibddPush$Companion$CREATOR$1 implements Creator<TaxGibddPush> {
    TaxGibddPush$Companion$CREATOR$1() {
    }

    public final TaxGibddPush createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new TaxGibddPush(parcel);
    }

    public final TaxGibddPush[] newArray(int i) {
        return new TaxGibddPush[i];
    }
}
