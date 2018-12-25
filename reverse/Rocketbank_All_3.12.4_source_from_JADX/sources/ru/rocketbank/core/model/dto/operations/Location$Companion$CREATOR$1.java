package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Location.kt */
public final class Location$Companion$CREATOR$1 implements Creator<Location> {
    Location$Companion$CREATOR$1() {
    }

    public final Location createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new Location(parcel);
    }

    public final Location[] newArray(int i) {
        return new Location[i];
    }
}
