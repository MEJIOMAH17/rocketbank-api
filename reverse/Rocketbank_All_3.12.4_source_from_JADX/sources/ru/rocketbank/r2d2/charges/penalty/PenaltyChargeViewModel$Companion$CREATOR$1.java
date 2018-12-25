package ru.rocketbank.r2d2.charges.penalty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PenaltyChargePaymentDetailsFragment.kt */
public final class PenaltyChargeViewModel$Companion$CREATOR$1 implements Creator<PenaltyChargeViewModel> {
    PenaltyChargeViewModel$Companion$CREATOR$1() {
    }

    public final PenaltyChargeViewModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new PenaltyChargeViewModel(parcel);
    }

    public final PenaltyChargeViewModel[] newArray(int i) {
        return new PenaltyChargeViewModel[i];
    }
}
