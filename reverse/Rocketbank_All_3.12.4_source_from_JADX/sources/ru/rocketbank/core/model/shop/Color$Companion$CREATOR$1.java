package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Color.kt */
public final class Color$Companion$CREATOR$1 implements Creator<Color> {
    Color$Companion$CREATOR$1() {
    }

    public final Color createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Color(parcel);
    }

    public final Color[] newArray(int i) {
        return new Color[i];
    }
}
