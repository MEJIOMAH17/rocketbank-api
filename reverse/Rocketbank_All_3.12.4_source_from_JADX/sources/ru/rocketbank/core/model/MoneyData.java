package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class MoneyData implements Parcelable, Serializable {
    public static final Creator<MoneyData> CREATOR = new C07921();
    double amount;
    @SerializedName("currency_code")
    String currencyCode;
    private String formatted;
    @SerializedName("formatted_exact")
    private String formattedExact;

    /* renamed from: ru.rocketbank.core.model.MoneyData$1 */
    static class C07921 implements Creator<MoneyData> {
        C07921() {
        }

        public final MoneyData createFromParcel(Parcel parcel) {
            return new MoneyData(parcel);
        }

        public final MoneyData[] newArray(int i) {
            return new MoneyData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public MoneyData(double d, String str) {
        this.amount = d;
        this.currencyCode = str;
    }

    public MoneyData(MoneyData moneyData) {
        this.formatted = moneyData.formatted;
        this.formattedExact = moneyData.formattedExact;
        this.amount = moneyData.amount;
        this.currencyCode = moneyData.currencyCode;
    }

    protected MoneyData(Parcel parcel) {
        this.formatted = parcel.readString();
        this.formattedExact = parcel.readString();
        this.amount = parcel.readDouble();
        this.currencyCode = parcel.readString();
    }

    public String getFormatted() {
        return this.formatted;
    }

    public void setFormatted(String str) {
        this.formatted = str;
    }

    public String getFormattedExact() {
        return this.formattedExact;
    }

    public void setFormattedExact(String str) {
        this.formattedExact = str;
    }

    public double getAmount() {
        return this.amount;
    }

    public void setAmount(double d) {
        this.amount = d;
    }

    public String getCurrencyCode() {
        return this.currencyCode;
    }

    public void setCurrencyCode(String str) {
        this.currencyCode = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.formatted);
        parcel.writeString(this.formattedExact);
        parcel.writeDouble(this.amount);
        parcel.writeString(this.currencyCode);
    }
}
