package ru.rocketbank.core.model.transfers.card;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Card2CardTransferResponseData.kt */
public final class Card2CardTransferResponseData implements Parcelable {
    public static final Creator<Card2CardTransferResponseData> CREATOR = new Card2CardTransferResponseData$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private double balance;
    private String errors;
    private String html;
    private int id;
    private String status;

    /* compiled from: Card2CardTransferResponseData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final String getErrors() {
        return this.errors;
    }

    public final void setErrors(String str) {
        this.errors = str;
    }

    public final String getHtml() {
        return this.html;
    }

    public final void setHtml(String str) {
        this.html = str;
    }

    public final double getBalance() {
        return this.balance;
    }

    public final void setBalance(double d) {
        this.balance = d;
    }

    protected Card2CardTransferResponseData(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.id = parcel.readInt();
        this.status = parcel.readString();
        this.errors = parcel.readString();
        this.html = parcel.readString();
        this.balance = parcel.readDouble();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeInt(this.id);
        parcel.writeString(this.status);
        parcel.writeString(this.errors);
        parcel.writeString(this.html);
        parcel.writeDouble(this.balance);
    }
}
