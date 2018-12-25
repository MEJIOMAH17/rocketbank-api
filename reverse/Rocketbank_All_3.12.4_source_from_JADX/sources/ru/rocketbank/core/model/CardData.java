package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CardData.kt */
public final class CardData implements Parcelable {
    public static final Creator<CardData> CREATOR = new CardData$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private final String cvv;
    private final String expirationDate;
    private final String pan;

    /* compiled from: CardData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ CardData copy$default(CardData cardData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cardData.pan;
        }
        if ((i & 2) != 0) {
            str2 = cardData.expirationDate;
        }
        if ((i & 4) != 0) {
            str3 = cardData.cvv;
        }
        return cardData.copy(str, str2, str3);
    }

    public final String component1() {
        return this.pan;
    }

    public final String component2() {
        return this.expirationDate;
    }

    public final String component3() {
        return this.cvv;
    }

    public final CardData copy(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "pan");
        Intrinsics.checkParameterIsNotNull(str2, "expirationDate");
        Intrinsics.checkParameterIsNotNull(str3, "cvv");
        return new CardData(str, str2, str3);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CardData) {
                CardData cardData = (CardData) obj;
                if (Intrinsics.areEqual(this.pan, cardData.pan) && Intrinsics.areEqual(this.expirationDate, cardData.expirationDate) && Intrinsics.areEqual(this.cvv, cardData.cvv)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.pan;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.expirationDate;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.cvv;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("CardData(pan=");
        stringBuilder.append(this.pan);
        stringBuilder.append(", expirationDate=");
        stringBuilder.append(this.expirationDate);
        stringBuilder.append(", cvv=");
        stringBuilder.append(this.cvv);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public CardData(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "pan");
        Intrinsics.checkParameterIsNotNull(str2, "expirationDate");
        Intrinsics.checkParameterIsNotNull(str3, "cvv");
        this.pan = str;
        this.expirationDate = str2;
        this.cvv = str3;
    }

    public final String getPan() {
        return this.pan;
    }

    public final String getExpirationDate() {
        return this.expirationDate;
    }

    public final String getCvv() {
        return this.cvv;
    }

    public CardData(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        String readString2 = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString2, "parcel.readString()");
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "parcel.readString()");
        this(readString, readString2, parcel);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeString(this.pan);
            parcel.writeString(this.expirationDate);
            parcel.writeString(this.cvv);
        }
    }
}
