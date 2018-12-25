package ru.rocketbank.core.model.operation;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DelimiterOperation.kt */
public final class DelimiterOperation$Companion$CREATOR$1 implements Creator<DelimiterOperation> {
    DelimiterOperation$Companion$CREATOR$1() {
    }

    public final DelimiterOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new DelimiterOperation(parcel);
    }

    public final DelimiterOperation[] newArray(int i) {
        return new DelimiterOperation[i];
    }
}
