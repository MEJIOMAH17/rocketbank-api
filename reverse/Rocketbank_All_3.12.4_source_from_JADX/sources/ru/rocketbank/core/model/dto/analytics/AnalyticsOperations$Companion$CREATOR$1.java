package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsOperations$Companion$CREATOR$1 implements Creator<AnalyticsOperations> {
    AnalyticsOperations$Companion$CREATOR$1() {
    }

    public final AnalyticsOperations createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AnalyticsOperations(parcel);
    }

    public final AnalyticsOperations[] newArray(int i) {
        return new AnalyticsOperations[i];
    }
}
