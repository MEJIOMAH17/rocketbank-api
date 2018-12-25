package ru.rocketbank.core.model.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChangePin.kt */
public final class ChangePin extends ChangeCheckCard implements Parcelable {
    public static final Creator<ChangePin> CREATOR = new ChangePin$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("button_text")
    private String buttonText;
    @SerializedName("pin_text")
    private String pinText;
    @SerializedName("pin_text2")
    private String pinText2;

    /* compiled from: ChangePin.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getPinText() {
        return this.pinText;
    }

    public final void setPinText(String str) {
        this.pinText = str;
    }

    public final String getPinText2() {
        return this.pinText2;
    }

    public final void setPinText2(String str) {
        this.pinText2 = str;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final void setButtonText(String str) {
        this.buttonText = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.pinText);
        parcel.writeString(this.pinText2);
        parcel.writeString(this.buttonText);
    }

    protected ChangePin(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, FacebookRequestErrorClassification.KEY_OTHER);
        super(parcel);
        this.pinText = parcel.readString();
        this.pinText2 = parcel.readString();
        this.buttonText = parcel.readString();
    }
}
