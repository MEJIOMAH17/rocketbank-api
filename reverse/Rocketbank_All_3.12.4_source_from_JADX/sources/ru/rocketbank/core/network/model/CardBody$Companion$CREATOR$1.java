package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CardBody.kt */
public final class CardBody$Companion$CREATOR$1 implements Creator<CardBody> {
    CardBody$Companion$CREATOR$1() {
    }

    public final CardBody createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new CardBody(parcel);
    }

    public final CardBody[] newArray(int i) {
        return new CardBody[i];
    }
}
