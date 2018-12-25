package ru.rocketbank.core.model.response;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommissionStringResponse.kt */
public final class CommissionStringResponse implements Parcelable {
    public static final Creator<CommissionStringResponse> CREATOR = new CommissionStringResponse$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private String status;
    private Suggest suggest;
    private String text;

    /* compiled from: CommissionStringResponse.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        this.text = str;
    }

    public final Suggest getSuggest() {
        return this.suggest;
    }

    public final void setSuggest(Suggest suggest) {
        this.suggest = suggest;
    }

    public CommissionStringResponse(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.status = parcel.readString();
        this.text = parcel.readString();
        this.suggest = (Suggest) parcel.readParcelable(Suggest.class.getClassLoader());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.status);
        parcel.writeString(this.text);
        parcel.writeParcelable(this.suggest, i);
    }
}
