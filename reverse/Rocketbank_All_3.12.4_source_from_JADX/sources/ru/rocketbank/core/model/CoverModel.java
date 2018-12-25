package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoverModel.kt */
public final class CoverModel implements Parcelable {
    public static final Creator<CoverModel> CREATOR = new CoverModel$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("id")
    private String id;
    @SerializedName("url")
    private String url;

    /* compiled from: CoverModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected CoverModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        this.id = parcel.readString();
        this.url = parcel.readString();
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.id);
        parcel.writeString(this.url);
    }
}
