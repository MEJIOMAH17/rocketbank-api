package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.Date;

public final class DeliveryScheduledModel implements Parcelable {
    public static final Creator<DeliveryScheduledModel> CREATOR = new C07871();
    @SerializedName("address")
    private String address;
    @SerializedName("author")
    private String author;
    @SerializedName("avatar")
    private String avatar;
    @SerializedName("body")
    private String body;
    @SerializedName("end")
    private long end;
    @SerializedName("latitude")
    private double latitude;
    @SerializedName("longitude")
    private double longitude;
    @SerializedName("start")
    private long start;
    @SerializedName("title")
    private String title;

    /* renamed from: ru.rocketbank.core.model.DeliveryScheduledModel$1 */
    static class C07871 implements Creator<DeliveryScheduledModel> {
        C07871() {
        }

        public final DeliveryScheduledModel createFromParcel(Parcel parcel) {
            return new DeliveryScheduledModel(parcel);
        }

        public final DeliveryScheduledModel[] newArray(int i) {
            return new DeliveryScheduledModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected DeliveryScheduledModel(Parcel parcel) {
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.end = parcel.readLong();
        this.start = parcel.readLong();
        this.address = parcel.readString();
        this.author = parcel.readString();
        this.avatar = parcel.readString();
        this.body = parcel.readString();
        this.title = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeLong(this.end);
        parcel.writeLong(this.start);
        parcel.writeString(this.address);
        parcel.writeString(this.author);
        parcel.writeString(this.avatar);
        parcel.writeString(this.body);
        parcel.writeString(this.title);
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final Date getEnd() {
        return ModelTools.INSTANCE.formatDate(this.end);
    }

    public final Date getStart() {
        return ModelTools.INSTANCE.formatDate(this.start);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getBody() {
        return this.body;
    }

    public final String getTitle() {
        return this.title;
    }
}
