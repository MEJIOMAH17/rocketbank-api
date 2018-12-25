package ru.rocketbank.core.model.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public final class CheckCardData implements Parcelable {
    public static final Creator<CheckCardData> CREATOR = new C08061();
    @SerializedName("android_image")
    private String androidImage;
    private String digits;
    private int digits_count;
    private String image;
    private String name;
    private String text;
    private String token;

    /* renamed from: ru.rocketbank.core.model.dto.CheckCardData$1 */
    static class C08061 implements Creator<CheckCardData> {
        C08061() {
        }

        public final CheckCardData createFromParcel(Parcel parcel) {
            return new CheckCardData(parcel);
        }

        public final CheckCardData[] newArray(int i) {
            return new CheckCardData[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getName() {
        return this.name;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getCardImage() {
        return this.androidImage;
    }

    public final String getDigits() {
        return this.digits;
    }

    public final int getDigitsCount() {
        return this.digits_count;
    }

    public final String getText() {
        return this.text;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.androidImage);
        parcel.writeString(this.token);
        parcel.writeString(this.name);
        parcel.writeString(this.image);
        parcel.writeString(this.digits);
        parcel.writeInt(this.digits_count);
        parcel.writeString(this.text);
    }

    protected CheckCardData(Parcel parcel) {
        this.androidImage = parcel.readString();
        this.token = parcel.readString();
        this.name = parcel.readString();
        this.image = parcel.readString();
        this.digits = parcel.readString();
        this.digits_count = parcel.readInt();
        this.text = parcel.readString();
    }
}
