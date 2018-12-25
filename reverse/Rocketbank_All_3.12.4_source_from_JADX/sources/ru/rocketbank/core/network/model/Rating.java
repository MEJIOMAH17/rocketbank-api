package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Rating.kt */
public final class Rating implements Parcelable {
    public static final Creator<Rating> CREATOR = new Rating$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private String comment;
    private String permalink;
    private float rate;
    private String text;

    /* compiled from: Rating.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final float getRate() {
        return this.rate;
    }

    public final void setRate(float f) {
        this.rate = f;
    }

    public final String getComment() {
        return this.comment;
    }

    public final void setComment(String str) {
        this.comment = str;
    }

    public final String getPermalink() {
        return this.permalink;
    }

    public final void setPermalink(String str) {
        this.permalink = str;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public Rating(float f, String str, String str2, String str3) {
        this.comment = str;
        this.permalink = str2;
        this.rate = f;
        this.text = str3;
    }

    protected Rating(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.rate = parcel.readFloat();
        this.comment = parcel.readString();
        this.permalink = parcel.readString();
        this.text = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeFloat(this.rate);
        parcel.writeString(this.comment);
        parcel.writeString(this.permalink);
        parcel.writeString(this.text);
    }
}
