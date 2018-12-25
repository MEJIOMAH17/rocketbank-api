package ru.rocketbank.core.model.response;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Suggest.kt */
public final class Suggest implements Parcelable {
    public static final Creator<Suggest> CREATOR = new Suggest$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private int amount;
    private String title;

    /* compiled from: Suggest.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final int getAmount() {
        return this.amount;
    }

    public final void setAmount(int i) {
        this.amount = i;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    protected Suggest(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.amount = parcel.readInt();
        this.title = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeInt(this.amount);
        parcel.writeString(this.title);
    }
}
