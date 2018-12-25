package ru.rocketbank.core.model.operation;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StatisticsOperation.kt */
public final class StatisticsOperation$Companion$CREATOR$1 implements Creator<StatisticsOperation> {
    StatisticsOperation$Companion$CREATOR$1() {
    }

    public final StatisticsOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new StatisticsOperation(parcel);
    }

    public final StatisticsOperation[] newArray(int i) {
        return new StatisticsOperation[i];
    }
}
