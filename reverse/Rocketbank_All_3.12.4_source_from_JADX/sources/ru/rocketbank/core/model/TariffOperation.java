package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TariffOperation.kt */
public final class TariffOperation extends AbstractOperation {
    public static final Creator<TariffOperation> CREATOR = new TariffOperation$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("button_text")
    private String buttonText = "";
    @SerializedName("download_url")
    private String downloadUrl = "";
    @SerializedName("info_url")
    private String infoUrl = "";
    @SerializedName("subtitle_text")
    private String subtitleText = "";
    @SerializedName("title_text")
    private String titleText = "";

    /* compiled from: TariffOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public TariffOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        super(parcel);
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
        this.downloadUrl = readString;
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "parcel.readString()");
        this.infoUrl = parcel;
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

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final void setDownloadUrl(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.downloadUrl = str;
    }

    public final String getInfoUrl() {
        return this.infoUrl;
    }

    public final void setInfoUrl(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.infoUrl = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel != null) {
            parcel.writeString(this.titleText);
            parcel.writeString(this.subtitleText);
            parcel.writeString(this.buttonText);
            parcel.writeString(this.downloadUrl);
            parcel.writeString(this.infoUrl);
        }
    }
}
