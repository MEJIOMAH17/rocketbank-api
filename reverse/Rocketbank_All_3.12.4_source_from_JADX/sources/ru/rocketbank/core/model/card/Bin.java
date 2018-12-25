package ru.rocketbank.core.model.card;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Bin.kt */
public final class Bin implements Parcelable {
    public static final Creator<Bin> CREATOR = new Bin$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("advice")
    private String advice;
    @SerializedName("name")
    private String name;
    @SerializedName("transfer_hint")
    private String transferHint;
    @SerializedName("transfer_works")
    private boolean transferWorks;
    @SerializedName("works")
    private boolean works;

    /* compiled from: Bin.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public Bin(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        Object readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
        if (readValue == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
        }
        this.works = ((Boolean) readValue).booleanValue();
        this.advice = parcel.readString();
        this.transferHint = parcel.readString();
        readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
        if (readValue == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
        }
        this.transferWorks = ((Boolean) readValue).booleanValue();
        this.name = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeValue(Boolean.valueOf(this.works));
        }
        if (parcel != null) {
            parcel.writeString(this.advice);
        }
        if (parcel != null) {
            parcel.writeString(this.transferHint);
        }
        if (parcel != null) {
            parcel.writeValue(Boolean.valueOf(this.transferWorks));
        }
        if (parcel != null) {
            parcel.writeString(this.name);
        }
    }

    public final boolean getWorks() {
        return this.works;
    }

    public final void setWorks(boolean z) {
        this.works = z;
    }

    public final String getAdvice() {
        return this.advice;
    }

    public final void setAdvice(String str) {
        this.advice = str;
    }

    public final String getTransferHint() {
        return this.transferHint;
    }

    public final void setTransferHint(String str) {
        this.transferHint = str;
    }

    public final boolean getTransferWorks() {
        return this.transferWorks;
    }

    public final void setTransferWorks(boolean z) {
        this.transferWorks = z;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }
}
