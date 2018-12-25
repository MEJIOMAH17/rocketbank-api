package ru.rocketbank.core.model.discounts;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.AbstractOperation;

public class Discount extends AbstractOperation implements Parcelable {
    public static final Creator<Discount> CREATOR = new C08041();
    public String body;
    public String color;
    public String link;
    @SerializedName("link_title")
    public String linkTitle;
    @SerializedName("link_type")
    public String linkType;
    @SerializedName("main_image_url")
    public String mainLink;
    public String name;
    @SerializedName("preview_image_url")
    public String prewiewLink;
    @SerializedName("promo_code")
    public String promoCode;
    @SerializedName("promo_title")
    public String promoTitle;
    @SerializedName("short_title")
    public String shortTitle;
    @SerializedName("video_url")
    public String videoLink;

    /* renamed from: ru.rocketbank.core.model.discounts.Discount$1 */
    static class C08041 implements Creator<Discount> {
        C08041() {
        }

        public final Discount createFromParcel(Parcel parcel) {
            return new Discount(parcel);
        }

        public final Discount[] newArray(int i) {
            return new Discount[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected Discount(Parcel parcel) {
        super(parcel);
        this.body = parcel.readString();
        this.color = parcel.readString();
        this.link = parcel.readString();
        this.linkTitle = parcel.readString();
        this.linkType = parcel.readString();
        this.mainLink = parcel.readString();
        this.name = parcel.readString();
        this.prewiewLink = parcel.readString();
        this.promoCode = parcel.readString();
        this.promoTitle = parcel.readString();
        this.videoLink = parcel.readString();
        this.shortTitle = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.body);
        parcel.writeString(this.color);
        parcel.writeString(this.link);
        parcel.writeString(this.linkTitle);
        parcel.writeString(this.linkType);
        parcel.writeString(this.mainLink);
        parcel.writeString(this.name);
        parcel.writeString(this.prewiewLink);
        parcel.writeString(this.promoCode);
        parcel.writeString(this.promoTitle);
        parcel.writeString(this.videoLink);
        parcel.writeString(this.shortTitle);
    }
}
