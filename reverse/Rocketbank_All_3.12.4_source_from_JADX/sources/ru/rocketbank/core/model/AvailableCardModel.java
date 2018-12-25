package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.enums.Currency;

public final class AvailableCardModel implements Parcelable {
    public static final Creator<AvailableCardModel> CREATOR = new C07841();
    @SerializedName("currency")
    private String currency;
    @SerializedName("description")
    private String description;
    @SerializedName("url")
    private String url;

    /* renamed from: ru.rocketbank.core.model.AvailableCardModel$1 */
    static class C07841 implements Creator<AvailableCardModel> {
        C07841() {
        }

        public final AvailableCardModel createFromParcel(Parcel parcel) {
            return new AvailableCardModel(parcel);
        }

        public final AvailableCardModel[] newArray(int i) {
            return new AvailableCardModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected AvailableCardModel(Parcel parcel) {
        this.currency = parcel.readString();
        this.description = parcel.readString();
        this.url = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.currency);
        parcel.writeString(this.description);
        parcel.writeString(this.url);
    }

    public final Currency getCurrency() {
        return Currency.fromString(this.currency);
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getUrl() {
        return this.url;
    }
}
