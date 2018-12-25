package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OperationAnalytics.kt */
public final class OperationAnalytics$Companion$CREATOR$1 implements Creator<OperationAnalytics> {
    OperationAnalytics$Companion$CREATOR$1() {
    }

    public final OperationAnalytics createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new OperationAnalytics(parcel);
    }

    public final OperationAnalytics[] newArray(int i) {
        return new OperationAnalytics[i];
    }
}
