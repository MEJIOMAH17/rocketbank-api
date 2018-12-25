package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsTagOperation$Companion$CREATOR$1 implements Creator<AnalyticsTagOperation> {
    AnalyticsTagOperation$Companion$CREATOR$1() {
    }

    public final AnalyticsTagOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new AnalyticsTagOperation(parcel);
    }

    public final AnalyticsTagOperation[] newArray(int i) {
        return new AnalyticsTagOperation[i];
    }
}
