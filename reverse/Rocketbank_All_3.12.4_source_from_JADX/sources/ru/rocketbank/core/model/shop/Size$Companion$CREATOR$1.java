package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Size.kt */
public final class Size$Companion$CREATOR$1 implements Creator<Size> {
    Size$Companion$CREATOR$1() {
    }

    public final Size createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Size(parcel);
    }

    public final Size[] newArray(int i) {
        return new Size[i];
    }
}
