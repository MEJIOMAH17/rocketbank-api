package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.model.enums.PermalinkTariff;

/* compiled from: TariffModel.kt */
public final class TariffModel implements Parcelable {
    public static final Creator<TariffModel> CREATOR = new TariffModel$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private Cobrand cobrand;
    @SerializedName("cobrand_name")
    private String cobrandName;
    @SerializedName("have_commission_in_mkb")
    private boolean haveCommissionInMkb;
    private long id;
    private boolean isActive;
    public String name;
    @SerializedName("options")
    private ArrayList<OptionModel> optionsRaw;
    @SerializedName("permalink")
    private String permalinkString;
    private String url;

    /* compiled from: TariffModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final ArrayList<OptionModel> getOptionsRaw() {
        return this.optionsRaw;
    }

    public final void setOptionsRaw(ArrayList<OptionModel> arrayList) {
        this.optionsRaw = arrayList;
    }

    public final String getName() {
        String str = this.name;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
        }
        return str;
    }

    public final void setName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.name = str;
    }

    public final String getPermalinkString() {
        return this.permalinkString;
    }

    public final void setPermalinkString(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.permalinkString = str;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.url = str;
    }

    public final boolean getHaveCommissionInMkb() {
        return this.haveCommissionInMkb;
    }

    public final void setHaveCommissionInMkb(boolean z) {
        this.haveCommissionInMkb = z;
    }

    public final boolean isActive() {
        return this.isActive;
    }

    public final void setActive(boolean z) {
        this.isActive = z;
    }

    public TariffModel() {
        this.permalinkString = "";
        this.url = "";
        this.haveCommissionInMkb = true;
        this.cobrand = Cobrand.ONETWOTRIP;
    }

    public TariffModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.permalinkString = "";
        this.url = "";
        boolean z = true;
        this.haveCommissionInMkb = true;
        this.cobrand = Cobrand.ONETWOTRIP;
        this.id = parcel.readLong();
        this.optionsRaw = parcel.createTypedArrayList(OptionModel.CREATOR);
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.name = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.permalinkString = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.url = readString;
        this.cobrandName = parcel.readString();
        if (parcel.readByte() == null) {
            z = false;
        }
        this.haveCommissionInMkb = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeLong(this.id);
        parcel.writeTypedList((List) this.optionsRaw);
        i = this.name;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
        }
        parcel.writeString(i);
        parcel.writeString(this.permalinkString);
        parcel.writeString(this.url);
        parcel.writeString(this.cobrandName);
        parcel.writeByte(this.haveCommissionInMkb);
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof TariffModel) && ((TariffModel) obj).id == this.id) {
            return true;
        }
        return false;
    }

    public final OptionModel getOption() {
        ArrayList arrayList = this.optionsRaw;
        if ((arrayList != null ? arrayList.size() : 0) > 0) {
            arrayList = this.optionsRaw;
            if (arrayList != null) {
                return (OptionModel) arrayList.get(0);
            }
        }
        return null;
    }

    public final void setOption(OptionModel optionModel) {
        ArrayList arrayList = this.optionsRaw;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (optionModel != null) {
            arrayList = this.optionsRaw;
            if (arrayList != null) {
                arrayList.add(optionModel);
            }
        }
    }

    public final PermalinkTariff getPermalink() {
        PermalinkTariff fromString = PermalinkTariff.fromString(this.permalinkString);
        Intrinsics.checkExpressionValueIsNotNull(fromString, "PermalinkTariff.fromString(permalinkString)");
        return fromString;
    }

    public final String getCobrandName() {
        return this.cobrandName;
    }

    public final void setCobrandName(String str) {
        this.cobrandName = str;
    }

    public final void setCobrand(Cobrand cobrand) {
        Intrinsics.checkParameterIsNotNull(cobrand, "<set-?>");
        this.cobrand = cobrand;
    }

    public final Cobrand getCobrand() {
        return Cobrand.Companion.fromCobrandName(this.cobrandName);
    }
}
