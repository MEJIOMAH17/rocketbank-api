package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Image.kt */
public final class Image$Companion$CREATOR$1 implements Creator<Image> {
    Image$Companion$CREATOR$1() {
    }

    public final Image createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new Image(parcel);
    }

    public final Image[] newArray(int i) {
        return new Image[i];
    }
}
