package ru.rocketbank.core.network.model.tariffs;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Tariff.kt */
public final class Tariff implements Parcelable {
    public static final Creator<Tariff> CREATOR = new Tariff$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private final String conditions;
    private final ArrayList<TariffFeature> features;
    @SerializedName("image_url")
    private final String imageUrl;
    @SerializedName("month_pay")
    private final double monthPay;
    private final String name;
    private final String permalink;
    @SerializedName("price_label")
    private final String priceLabel;
    private final Salary salary;
    private TariffState state = TariffState.NOT_ACTIVE;
    private final String url;

    /* compiled from: Tariff.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: Tariff.kt */
    public enum TariffState {
    }

    public final int describeContents() {
        return 0;
    }

    public Tariff(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.priceLabel = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.permalink = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.name = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.url = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.imageUrl = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.conditions = readString;
        this.salary = (Salary) parcel.readParcelable(Salary.class.getClassLoader());
        ArrayList createTypedArrayList = parcel.createTypedArrayList(TariffFeature.CREATOR);
        Intrinsics.checkExpressionValueIsNotNull(createTypedArrayList, "parcel.createTypedArrayList(TariffFeature.CREATOR)");
        this.features = createTypedArrayList;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "parcel.readString()");
        this.state = TariffState.valueOf(readString);
        this.monthPay = parcel.readDouble();
    }

    public final String getPermalink() {
        return this.permalink;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPriceLabel() {
        return this.priceLabel;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final String getConditions() {
        return this.conditions;
    }

    public final Salary getSalary() {
        return this.salary;
    }

    public final ArrayList<TariffFeature> getFeatures() {
        return this.features;
    }

    public final double getMonthPay() {
        return this.monthPay;
    }

    public final TariffState getState() {
        return this.state;
    }

    public final void setState(TariffState tariffState) {
        Intrinsics.checkParameterIsNotNull(tariffState, "<set-?>");
        this.state = tariffState;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        parcel.writeString(this.priceLabel);
        parcel.writeString(this.permalink);
        parcel.writeString(this.name);
        parcel.writeString(this.url);
        parcel.writeString(this.imageUrl);
        parcel.writeString(this.conditions);
        parcel.writeParcelable((Parcelable) this.salary, 0);
        parcel.writeTypedList((List) this.features);
        parcel.writeString(this.state.name());
        parcel.writeDouble(this.monthPay);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((Intrinsics.areEqual(obj != null ? obj.getClass() : null, getClass()) ^ 1) != 0) {
            return false;
        }
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.network.model.tariffs.Tariff");
        } else if ((Intrinsics.areEqual(this.permalink, ((Tariff) obj).permalink) ^ 1) != null) {
            return false;
        } else {
            return true;
        }
    }

    public final int hashCode() {
        return this.permalink.hashCode();
    }
}
