package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.enums.PermalinkOption;

/* compiled from: OptionModel.kt */
public final class OptionModel implements Parcelable {
    public static final Creator<OptionModel> CREATOR = new OptionModel$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("cost")
    private float cost;
    @SerializedName("active")
    private boolean isActive;
    @SerializedName("paid_to")
    private long paidTo;
    @SerializedName("permalink")
    private String permalinkRaw = "";

    /* compiled from: OptionModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean isActive() {
        return this.isActive;
    }

    public final void setActive(boolean z) {
        this.isActive = z;
    }

    public final float getCost() {
        return this.cost;
    }

    public final void setCost(float f) {
        this.cost = f;
    }

    public final long getPaidTo() {
        return this.paidTo;
    }

    public final void setPaidTo(long j) {
        this.paidTo = j;
    }

    public final String getPermalinkRaw() {
        return this.permalinkRaw;
    }

    public final void setPermalinkRaw(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.permalinkRaw = str;
    }

    protected OptionModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.isActive = parcel.readByte() != (byte) 0;
        this.cost = parcel.readFloat();
        this.paidTo = parcel.readLong();
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.readString()");
        this.permalinkRaw = parcel;
    }

    /* renamed from: getPaidTo */
    public final Date m682getPaidTo() {
        return ModelTools.INSTANCE.formatDate(this.paidTo);
    }

    public final PermalinkOption getPermalink() {
        PermalinkOption fromString = PermalinkOption.fromString(this.permalinkRaw);
        Intrinsics.checkExpressionValueIsNotNull(fromString, "PermalinkOption.fromString(permalinkRaw)");
        return fromString;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeByte((byte) this.isActive);
        parcel.writeFloat(this.cost);
        parcel.writeLong(this.paidTo);
        parcel.writeString(this.permalinkRaw);
    }
}
