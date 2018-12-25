package ru.rocketbank.core.model.shop;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Variant.kt */
public final class Variant$Companion$CREATOR$1 implements Creator<Variant> {
    Variant$Companion$CREATOR$1() {
    }

    public final Variant createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Variant(parcel);
    }

    public final Variant[] newArray(int i) {
        return new Variant[i];
    }
}
