package ru.rocketbank.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AbstractOperation;

/* compiled from: NewPassportOperation.kt */
public final class NewPassportOperation extends AbstractOperation {
    public static final Creator<NewPassportOperation> CREATOR = new NewPassportOperation$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("button_text")
    private String buttonText = "";
    private String text = "";

    /* compiled from: NewPassportOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final void setButtonText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.buttonText = str;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.text = str;
    }

    public NewPassportOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        super(parcel);
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.buttonText = readString;
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "parcel.readString()");
        this.text = parcel;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel != null) {
            parcel.writeString(this.buttonText);
            parcel.writeString(this.text);
        }
    }
}
