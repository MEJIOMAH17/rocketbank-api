package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Image.kt */
public final class Image implements Parcelable {
    private static final Creator<Image> CREATOR = new Image$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private String color;
    private int height;
    private String id;
    private String url;
    private int width;

    /* compiled from: Image.kt */
    public static final class Companion {
        private Companion() {
        }

        public final Creator<Image> getCREATOR() {
            return Image.CREATOR;
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setWidth(int i) {
        this.width = i;
    }

    public final int getHeight() {
        return this.height;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final String getColor() {
        return this.color;
    }

    public final void setColor(String str) {
        this.color = str;
    }

    protected Image(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.id = parcel.readString();
        this.url = parcel.readString();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.color = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.id);
        parcel.writeString(this.url);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeString(this.color);
    }
}
