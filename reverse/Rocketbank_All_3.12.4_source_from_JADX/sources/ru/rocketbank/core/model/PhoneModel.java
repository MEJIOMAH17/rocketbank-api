package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public final class PhoneModel implements Parcelable {
    public static final Creator<PhoneModel> CREATOR = new C07931();
    @SerializedName("number")
    private String number;
    @SerializedName("operator")
    private String operator;
    @SerializedName("provider_id")
    private long providerId;

    /* renamed from: ru.rocketbank.core.model.PhoneModel$1 */
    static class C07931 implements Creator<PhoneModel> {
        C07931() {
        }

        public final PhoneModel createFromParcel(Parcel parcel) {
            return new PhoneModel(parcel);
        }

        public final PhoneModel[] newArray(int i) {
            return new PhoneModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    private PhoneModel(Parcel parcel) {
        this.number = parcel.readString();
        this.operator = parcel.readString();
        this.providerId = parcel.readLong();
    }

    public final String getNumber() {
        return this.number;
    }

    public final String getOperator() {
        return this.operator;
    }

    public final long getProviderId() {
        return this.providerId;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.number);
        parcel.writeString(this.operator);
        parcel.writeLong(this.providerId);
    }
}
