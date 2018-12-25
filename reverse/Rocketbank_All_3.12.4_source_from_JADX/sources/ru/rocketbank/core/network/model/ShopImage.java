package ru.rocketbank.core.network.model;

import android.arch.lifecycle.MethodCallsLogger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShopItemResponse.kt */
public final class ShopImage implements Parcelable {
    public static final Creator<ShopImage> CREATOR = new ShopImage$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private String color;
    private int colorInt;
    private String image_url = "";
    private int position = -1;
    private String texture_url;

    /* compiled from: ShopItemResponse.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final String getImage_url() {
        return this.image_url;
    }

    public final void setImage_url(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.image_url = str;
    }

    public final String getColor() {
        return this.color;
    }

    public final void setColor(String str) {
        this.color = str;
    }

    public final String getTexture_url() {
        return this.texture_url;
    }

    public final void setTexture_url(String str) {
        this.texture_url = str;
    }

    public final void setColorInt(int i) {
        this.colorInt = i;
    }

    public final int getColorInt() {
        String str = this.color;
        return str != null ? MethodCallsLogger.parseColor(str) : 0;
    }

    public ShopImage(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this.position = parcel.readInt();
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "source.readString()");
        this.image_url = readString;
        this.color = parcel.readString();
        this.texture_url = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeInt(this.position);
        }
        if (parcel != null) {
            parcel.writeString(this.image_url);
        }
        if (parcel != null) {
            parcel.writeString(this.color);
        }
        if (parcel != null) {
            parcel.writeString(this.texture_url);
        }
    }
}
