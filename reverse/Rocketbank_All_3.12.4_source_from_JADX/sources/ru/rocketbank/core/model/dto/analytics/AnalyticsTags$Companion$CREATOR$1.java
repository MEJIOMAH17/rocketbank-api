package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsTags$Companion$CREATOR$1 implements Creator<AnalyticsTags> {
    AnalyticsTags$Companion$CREATOR$1() {
    }

    public final AnalyticsTags createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AnalyticsTags(parcel);
    }

    public final AnalyticsTags[] newArray(int i) {
        return new AnalyticsTags[i];
    }
}
