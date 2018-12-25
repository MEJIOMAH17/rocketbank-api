package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.OperationAnalytics.MerchantAnalytics;

/* compiled from: OperationAnalytics.kt */
public final class OperationAnalytics$MerchantAnalytics$Companion$CREATOR$1 implements Creator<MerchantAnalytics> {
    OperationAnalytics$MerchantAnalytics$Companion$CREATOR$1() {
    }

    public final MerchantAnalytics createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new MerchantAnalytics(parcel);
    }

    public final MerchantAnalytics[] newArray(int i) {
        return new MerchantAnalytics[i];
    }
}
