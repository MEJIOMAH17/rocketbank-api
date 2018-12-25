package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AvailableAccount.kt */
public final class AvailableAccount implements Parcelable {
    public static final Creator<AvailableAccount> CREATOR = new AvailableAccount$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private String currency;
    private String description;
    private String url;

    /* compiled from: AvailableAccount.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected AvailableAccount(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.currency = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.description = readString;
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.readString()");
        this.url = parcel;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final void setCurrency(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.currency = str;
    }

    public final String getDescription() {
        return this.description;
    }

    public final void setDescription(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.description = str;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.url = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.currency);
        parcel.writeString(this.description);
        parcel.writeString(this.url);
    }
}
