package ru.rocketbank.r2d2.charges.tax;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TaxChargePaymentDetailsFragment.kt */
public final class TaxChargeViewModel$Companion$CREATOR$1 implements Creator<TaxChargeViewModel> {
    TaxChargeViewModel$Companion$CREATOR$1() {
    }

    public final TaxChargeViewModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new TaxChargeViewModel(parcel);
    }

    public final TaxChargeViewModel[] newArray(int i) {
        return new TaxChargeViewModel[i];
    }
}
