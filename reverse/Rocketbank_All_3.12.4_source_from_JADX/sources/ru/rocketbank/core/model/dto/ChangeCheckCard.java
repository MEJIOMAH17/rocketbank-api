package ru.rocketbank.core.model.dto;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

public abstract class ChangeCheckCard implements Parcelable {
    @SerializedName("check_card")
    private CheckCardData checkCard;

    public int describeContents() {
        return 0;
    }

    public CheckCardData getCheckCard() {
        return this.checkCard;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.checkCard, 0);
    }

    protected ChangeCheckCard(Parcel parcel) {
        this.checkCard = (CheckCardData) parcel.readParcelable(CheckCardData.class.getClassLoader());
    }
}
