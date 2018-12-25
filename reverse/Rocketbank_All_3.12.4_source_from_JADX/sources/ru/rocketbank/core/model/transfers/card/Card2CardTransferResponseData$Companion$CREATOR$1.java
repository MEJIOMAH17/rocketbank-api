package ru.rocketbank.core.model.transfers.card;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Card2CardTransferResponseData.kt */
public final class Card2CardTransferResponseData$Companion$CREATOR$1 implements Creator<Card2CardTransferResponseData> {
    Card2CardTransferResponseData$Companion$CREATOR$1() {
    }

    public final Card2CardTransferResponseData createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new Card2CardTransferResponseData(parcel);
    }

    public final Card2CardTransferResponseData[] newArray(int i) {
        return new Card2CardTransferResponseData[i];
    }
}
