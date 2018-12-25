package ru.rocketbank.core.network.model.tariffs;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Salary.kt */
public final class Salary implements Parcelable {
    public static final Creator<Salary> CREATOR = new Salary$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("can_choose")
    private final boolean canChoose;
    private final String url;

    /* compiled from: Salary.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public Salary(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.url = readString;
        this.canChoose = parcel.readByte() > null ? true : null;
    }

    public final String getUrl() {
        return this.url;
    }

    public final boolean getCanChoose() {
        return this.canChoose;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        parcel.writeString(this.url);
        parcel.writeByte(this.canChoose);
    }
}
