package ru.rocketbank.core.model.card;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Card2CardRefillResponseData implements Parcelable {
    public static final Creator<Card2CardRefillResponseData> CREATOR = new C08031();
    private double balance;
    private String errors;
    private String html;
    private int id;
    private String status;

    /* renamed from: ru.rocketbank.core.model.card.Card2CardRefillResponseData$1 */
    static class C08031 implements Creator<Card2CardRefillResponseData> {
        C08031() {
        }

        public final Card2CardRefillResponseData createFromParcel(Parcel parcel) {
            return new Card2CardRefillResponseData(parcel);
        }

        public final Card2CardRefillResponseData[] newArray(int i) {
            return new Card2CardRefillResponseData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected Card2CardRefillResponseData(Parcel parcel) {
        this.id = parcel.readInt();
        this.status = parcel.readString();
        this.errors = parcel.readString();
        this.balance = parcel.readDouble();
        this.html = parcel.readString();
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getErrors() {
        return this.errors;
    }

    public void setErrors(String str) {
        this.errors = str;
    }

    public double getBalance() {
        return this.balance;
    }

    public void setBalance(double d) {
        this.balance = d;
    }

    public String getHtml() {
        return this.html;
    }

    public void setHtml(String str) {
        this.html = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.status);
        parcel.writeString(this.errors);
        parcel.writeDouble(this.balance);
        parcel.writeString(this.html);
    }
}
