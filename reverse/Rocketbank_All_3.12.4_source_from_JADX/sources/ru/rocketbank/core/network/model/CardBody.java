package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CardBody.kt */
public final class CardBody implements Parcelable {
    public static final Creator<CardBody> CREATOR = new CardBody$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    @SerializedName("linked_card_id")
    private String cardId;
    @SerializedName("source_card")
    private String cardNumber;
    @SerializedName("cvv")
    private String cvv;
    @SerializedName("month")
    private String expiryMonth;
    @SerializedName("year")
    private String expiryYear;

    /* compiled from: CardBody.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeString(this.cardId);
            parcel.writeString(this.cardNumber);
            parcel.writeString(this.expiryMonth);
            parcel.writeString(this.expiryYear);
            parcel.writeString(this.cvv);
        }
    }

    public CardBody(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        this.cardId = parcel.readString();
        this.cardNumber = parcel.readString();
        this.expiryMonth = parcel.readString();
        this.expiryYear = parcel.readString();
        this.cvv = parcel.readString();
    }

    public final String getCardId() {
        return this.cardId;
    }

    public final void setCardId(String str) {
        this.cardId = str;
    }

    public final String getCardNumber() {
        return this.cardNumber;
    }

    public final void setCardNumber(String str) {
        this.cardNumber = str;
    }

    public final String getExpiryMonth() {
        return this.expiryMonth;
    }

    public final void setExpiryMonth(String str) {
        this.expiryMonth = str;
    }

    public final String getExpiryYear() {
        return this.expiryYear;
    }

    public final void setExpiryYear(String str) {
        this.expiryYear = str;
    }

    public final String getCvv() {
        return this.cvv;
    }

    public final void setCvv(String str) {
        this.cvv = str;
    }
}
