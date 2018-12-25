package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsOperationsResponseData$Companion$CREATOR$1 implements Creator<AnalyticsOperationsResponseData> {
    AnalyticsOperationsResponseData$Companion$CREATOR$1() {
    }

    public final AnalyticsOperationsResponseData createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AnalyticsOperationsResponseData(parcel);
    }

    public final AnalyticsOperationsResponseData[] newArray(int i) {
        return new AnalyticsOperationsResponseData[i];
    }
}
