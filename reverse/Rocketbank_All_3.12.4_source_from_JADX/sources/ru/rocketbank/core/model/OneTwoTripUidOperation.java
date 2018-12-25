package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OneTwoTripUidOperation.kt */
public final class OneTwoTripUidOperation extends AbstractOperation {
    public static final Creator<OneTwoTripUidOperation> CREATOR = new OneTwoTripUidOperation$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("button_text")
    private String buttonText;
    @SerializedName("ref")
    private String ref;
    @SerializedName("subtitle_text")
    private String subtitleText;
    @SerializedName("title_text")
    private String titleText;
    @SerializedName("uid")
    private String uid;

    /* compiled from: OneTwoTripUidOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public OneTwoTripUidOperation() {
        this.titleText = "";
        this.subtitleText = "";
        this.buttonText = "";
        this.uid = "";
        this.ref = "";
    }

    public final String getTitleText() {
        return this.titleText;
    }

    public final void setTitleText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.titleText = str;
    }

    public final String getSubtitleText() {
        return this.subtitleText;
    }

    public final void setSubtitleText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.subtitleText = str;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final void setButtonText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.buttonText = str;
    }

    public final String getUid() {
        return this.uid;
    }

    public final void setUid(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.uid = str;
    }

    public final String getRef() {
        return this.ref;
    }

    public final void setRef(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.ref = str;
    }

    public OneTwoTripUidOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        this();
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.titleText = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.subtitleText = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.buttonText = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.uid = readString;
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "parcel.readString()");
        this.ref = parcel;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel != null) {
            parcel.writeString(this.titleText);
            parcel.writeString(this.subtitleText);
            parcel.writeString(this.buttonText);
            parcel.writeString(this.uid);
            parcel.writeString(this.ref);
        }
    }
}
