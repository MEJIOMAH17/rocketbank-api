package ru.rocketbank.core.network.model.tariffs;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TariffFeature.kt */
public final class TariffFeature implements Parcelable {
    public static final Creator<TariffFeature> CREATOR = new TariffFeature$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("icon_color")
    private String iconColor = "";
    @SerializedName("icon_text")
    private String iconText = "";
    private String text = "";

    /* compiled from: TariffFeature.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public TariffFeature(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.text = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.iconColor = readString;
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.readString()");
        this.iconText = parcel;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.text = str;
    }

    public final String getIconColor() {
        return this.iconColor;
    }

    public final void setIconColor(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.iconColor = str;
    }

    public final String getIconText() {
        return this.iconText;
    }

    public final void setIconText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.iconText = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        parcel.writeString(this.text);
        parcel.writeString(this.iconColor);
        parcel.writeString(this.iconText);
    }
}
