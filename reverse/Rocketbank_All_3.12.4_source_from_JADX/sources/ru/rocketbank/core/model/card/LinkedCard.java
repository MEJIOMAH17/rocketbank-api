package ru.rocketbank.core.model.card;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

/* compiled from: LinkedCard.kt */
public final class LinkedCard implements Parcelable {
    public static final Creator<LinkedCard> CREATOR = new LinkedCard$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("bank")
    private String bank;
    @SerializedName("bin")
    private Bin bin;
    @SerializedName("color")
    private String color;
    @SerializedName("feed_icon_url")
    private String feedIconUrl;
    @SerializedName("logo")
    private String logo;
    @SerializedName("pan")
    private String pan;
    @SerializedName("token")
    private String token;

    /* compiled from: LinkedCard.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public LinkedCard(Parcel parcel) {
        if (parcel != null) {
            this.pan = parcel.readString();
            this.token = parcel.readString();
            this.bank = parcel.readString();
            this.logo = parcel.readString();
            this.bin = (Bin) parcel.readParcelable(Bin.class.getClassLoader());
            this.color = parcel.readString();
            this.feedIconUrl = parcel.readString();
            this.logo = parcel.readString();
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeString(this.pan);
            parcel.writeString(this.token);
            parcel.writeString(this.bank);
            parcel.writeString(this.logo);
            parcel.writeParcelable(this.bin, i);
            parcel.writeString(this.color);
            parcel.writeString(this.feedIconUrl);
            parcel.writeString(this.logo);
        }
    }

    public final String getPan() {
        return this.pan;
    }

    public final void setPan(String str) {
        this.pan = str;
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        this.token = str;
    }

    public final String getBank() {
        return this.bank;
    }

    public final void setBank(String str) {
        this.bank = str;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final void setLogo(String str) {
        this.logo = str;
    }

    public final String getFeedIconUrl() {
        return this.feedIconUrl;
    }

    public final void setFeedIconUrl(String str) {
        this.feedIconUrl = str;
    }

    public final Bin getBin() {
        return this.bin;
    }

    public final void setBin(Bin bin) {
        this.bin = bin;
    }

    public final String getColor() {
        return this.color;
    }

    public final void setColor(String str) {
        this.color = str;
    }
}
