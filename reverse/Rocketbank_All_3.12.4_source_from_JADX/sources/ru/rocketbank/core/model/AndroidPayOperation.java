package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPayOperation.kt */
public final class AndroidPayOperation extends AbstractOperation {
    public static final Creator<AndroidPayOperation> CREATOR = new AndroidPayOperation$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("button_text")
    private String buttonText;
    private String text;

    /* compiled from: AndroidPayOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public AndroidPayOperation() {
        this.text = "Добавьте свою карту Рокетбанка в Google Pay";
        this.buttonText = "ПОДКЛЮЧИТЬ";
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.text = str;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final void setButtonText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.buttonText = str;
    }

    public AndroidPayOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        this();
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.text = readString;
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "parcel.readString()");
        this.buttonText = parcel;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel != null) {
            parcel.writeString(this.text);
            parcel.writeString(this.buttonText);
        }
    }
}
