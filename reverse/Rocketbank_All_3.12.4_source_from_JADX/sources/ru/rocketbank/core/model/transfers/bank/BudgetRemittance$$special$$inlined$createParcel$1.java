package ru.rocketbank.core.model.transfers.bank;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class BudgetRemittance$$special$$inlined$createParcel$1 implements Creator<BudgetRemittance> {
    public final BudgetRemittance createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new BudgetRemittance(parcel);
    }

    public final BudgetRemittance[] newArray(int i) {
        return new BudgetRemittance[i];
    }
}
