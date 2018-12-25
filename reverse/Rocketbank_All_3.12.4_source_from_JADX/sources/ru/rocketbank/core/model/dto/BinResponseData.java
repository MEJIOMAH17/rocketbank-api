package ru.rocketbank.core.model.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class BinResponseData implements Parcelable {
    public static final Creator<BinResponseData> CREATOR = new C08051();
    @SerializedName("name")
    private String bankName;
    @SerializedName("image")
    private String cardImageUrl;
    private String color;
    @SerializedName("icon_url")
    public String iconUrl;
    @SerializedName("works")
    private boolean isRefillWorks;
    @SerializedName("transfer_works")
    private boolean isTransferWorks;
    @SerializedName("logo")
    private String logoImageUrl;
    @SerializedName("advice")
    private String refillAdvice;
    @SerializedName("small2x_url")
    public String small2xUrl;
    @SerializedName("transfer_hint")
    private String transferAdvice;

    /* renamed from: ru.rocketbank.core.model.dto.BinResponseData$1 */
    static class C08051 implements Creator<BinResponseData> {
        C08051() {
        }

        public final BinResponseData createFromParcel(Parcel parcel) {
            return new BinResponseData(parcel);
        }

        public final BinResponseData[] newArray(int i) {
            return new BinResponseData[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected BinResponseData(Parcel parcel) {
        boolean z = false;
        this.isRefillWorks = parcel.readByte() != (byte) 0;
        this.refillAdvice = parcel.readString();
        if (parcel.readByte() != (byte) 0) {
            z = true;
        }
        this.isTransferWorks = z;
        this.transferAdvice = parcel.readString();
        this.bankName = parcel.readString();
        this.cardImageUrl = parcel.readString();
        this.logoImageUrl = parcel.readString();
        this.iconUrl = parcel.readString();
        this.color = parcel.readString();
        this.small2xUrl = parcel.readString();
    }

    public boolean isRefillWorks() {
        return this.isRefillWorks;
    }

    public String getRefillAdvice() {
        return this.refillAdvice;
    }

    public boolean isTransferWorks() {
        return this.isTransferWorks;
    }

    public String getTransferAdvice() {
        return this.transferAdvice;
    }

    public String getBankName() {
        return this.bankName;
    }

    public String getCardImageUrl() {
        return this.cardImageUrl;
    }

    public String getLogoImageUrl() {
        return this.logoImageUrl;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) this.isRefillWorks);
        parcel.writeString(this.refillAdvice);
        parcel.writeByte((byte) this.isTransferWorks);
        parcel.writeString(this.transferAdvice);
        parcel.writeString(this.bankName);
        parcel.writeString(this.cardImageUrl);
        parcel.writeString(this.logoImageUrl);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.color);
        parcel.writeString(this.small2xUrl);
    }
}
