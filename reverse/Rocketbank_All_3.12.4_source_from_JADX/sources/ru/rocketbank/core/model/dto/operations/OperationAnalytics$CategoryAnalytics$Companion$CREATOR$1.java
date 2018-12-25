package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.OperationAnalytics.CategoryAnalytics;

/* compiled from: OperationAnalytics.kt */
public final class OperationAnalytics$CategoryAnalytics$Companion$CREATOR$1 implements Creator<CategoryAnalytics> {
    OperationAnalytics$CategoryAnalytics$Companion$CREATOR$1() {
    }

    public final CategoryAnalytics createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new CategoryAnalytics(parcel);
    }

    public final CategoryAnalytics[] newArray(int i) {
        return new CategoryAnalytics[i];
    }
}
