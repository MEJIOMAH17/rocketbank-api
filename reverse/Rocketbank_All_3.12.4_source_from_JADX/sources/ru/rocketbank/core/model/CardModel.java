package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;

/* compiled from: CardModel.kt */
public final class CardModel implements Parcelable {
    public static final Creator<CardModel> CREATOR = new CardModel$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("bank")
    private String bank;
    @SerializedName("feed_icon_url")
    private String feedIconUrl;
    @SerializedName("image")
    private String image;
    @SerializedName("logo")
    private String logo;
    @SerializedName("pan")
    private String pan;
    @SerializedName("small2x_url")
    private String small2xUrl;
    @SerializedName("color")
    private String stringColor;
    @SerializedName("title")
    private String title;
    @SerializedName("token")
    private String token;

    /* compiled from: CardModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getBank() {
        return this.bank;
    }

    public final void setBank(String str) {
        this.bank = str;
    }

    public final String getStringColor() {
        return this.stringColor;
    }

    public final void setStringColor(String str) {
        this.stringColor = str;
    }

    public final String getImage() {
        return this.image;
    }

    public final void setImage(String str) {
        this.image = str;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final void setLogo(String str) {
        this.logo = str;
    }

    public final String getPan() {
        return this.pan;
    }

    public final void setPan(String str) {
        this.pan = str;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        this.token = str;
    }

    public final String getFeedIconUrl() {
        return this.feedIconUrl;
    }

    public final void setFeedIconUrl(String str) {
        this.feedIconUrl = str;
    }

    public final String getSmall2xUrl() {
        return this.small2xUrl;
    }

    public final void setSmall2xUrl(String str) {
        this.small2xUrl = str;
    }

    public CardModel(TransfersModelUrFiz transfersModelUrFiz) {
        Intrinsics.checkParameterIsNotNull(transfersModelUrFiz, "transfersModelUrFiz");
        this.bank = transfersModelUrFiz.card2card.bank;
        this.stringColor = transfersModelUrFiz.card2card.color;
        this.image = transfersModelUrFiz.card2card.image;
        this.logo = transfersModelUrFiz.card2card.logo;
        this.pan = transfersModelUrFiz.card2card.pan;
        this.title = transfersModelUrFiz.card2card.title;
        this.token = transfersModelUrFiz.card2card.token;
        this.feedIconUrl = transfersModelUrFiz.card2card.feedIconUrl;
        this.small2xUrl = transfersModelUrFiz.card2card.small2xUrl;
    }

    protected CardModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.bank = parcel.readString();
        this.stringColor = parcel.readString();
        this.image = parcel.readString();
        this.logo = parcel.readString();
        this.pan = parcel.readString();
        this.title = parcel.readString();
        this.token = parcel.readString();
        this.feedIconUrl = parcel.readString();
        this.small2xUrl = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.bank);
        parcel.writeString(this.stringColor);
        parcel.writeString(this.image);
        parcel.writeString(this.logo);
        parcel.writeString(this.pan);
        parcel.writeString(this.title);
        parcel.writeString(this.token);
        parcel.writeString(this.feedIconUrl);
        parcel.writeString(this.small2xUrl);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CardModel)) {
            return false;
        }
        CardModel cardModel = (CardModel) obj;
        if (cardModel.token == this.token && this.token == null) {
            return true;
        }
        if (cardModel.token == null || this.token == null) {
            return false;
        }
        return Intrinsics.areEqual(cardModel.token, this.token);
    }

    public final int getColor() {
        ModelTools modelTools = ModelTools.INSTANCE;
        String str = this.stringColor;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        return modelTools.formatColor(str);
    }
}
